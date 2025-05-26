package grupo6.backendHotel.service;

import grupo6.backendHotel.dto.*;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.models.Reservation;
import grupo6.backendHotel.repository.ReservationRepository;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Slf4j
@Service
public class ReservationService {

    private ReservationRepository reservationRepository;
    private NotificationService notificationService;

    //Constructor
    @Lazy
    @Autowired
    public ReservationService(ReservationRepository reservationRepository,
                              NotificationService notificationService) {
        this.reservationRepository = reservationRepository;
        this.notificationService = notificationService;
    }


    /********** METODOS PARA CONVERTIR A DTO Y ENTIDAD **********/

    //Metodo para convertir de DTO a Entity
    private Reservation convertEntity(Reservation reservation, final ReservationDTO reservationDTO){
        reservation.setId(reservationDTO.getId());
        reservation.setCheck_in(reservationDTO.getCheck_in());
        reservation.setCheck_out(reservationDTO.getCheck_out());
        reservation.setProduct(reservationDTO.getProduct());
        reservation.setUser(reservationDTO.getUser());

        return reservation;
    }

    //Metodo para convertir de Entity a DTO
    private ReservationDTO convertDTO(Reservation reservation, final ReservationDTO reservationDTO){
        reservationDTO.setId(reservation.getId());
        reservationDTO.setCheck_in(reservation.getCheck_in());
        reservationDTO.setCheck_out(reservation.getCheck_out());
        reservationDTO.setProduct(reservation.getProduct());
        reservationDTO.setUser(reservation.getUser());
        return reservationDTO;
    }


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @SneakyThrows
    public ReservationDTO getReservation(Integer id) {
        final ReservationDTO reservationDTO = new ReservationDTO();
        Optional<Reservation> optionalReservation = reservationRepository.findById(id);
        log.info(String.valueOf(optionalReservation));
        if (optionalReservation.isPresent()) {
            return  convertDTO(optionalReservation.get(), reservationDTO);
        }
        throw new ResourceNotFoundException("id " + id + " not found");
    }

    //GET ALL
    public List<ReservationDTO> getAllReservation() throws Exception{
        List<Reservation> reservations = reservationRepository.findAll();
        log.info(String.valueOf(reservations));
        final List<ReservationDTO> reservationsDTO = new ArrayList<>();
        reservations.parallelStream().forEach(reservation -> {
            final ReservationDTO reservationDTO = new ReservationDTO();
            convertDTO(reservation, reservationDTO);
            reservationsDTO.add(reservationDTO);
        });
        return reservationsDTO;
    }

    //REGISTER
/*    public ReservationDTO register(ReservationDTO reservationDTO) {
        //Reservation reservation = new Reservation();
        //convertEntity(reservation, reservationDTO);
        //log.info("register");
        Reservation reservation = ReservationDTO.fromDTO(reservationDTO);
        log.info(String.valueOf(reservation));
        log.info(String.valueOf(reservationDTO));
        Reservation reservationResponse = reservationRepository.save(reservation);
        try {
            notificationService.sendReservationNotificationAsync(reservationResponse);
            log.info("Notificación de reserva enviada para ID: {}", reservationResponse.getId());
        } catch (Exception e) {
            log.error("Error enviando notificación, pero reserva creada exitosamente: {}", e.getMessage());
        }
        ReservationDTO reservationDTOResponse = ReservationDTO.fromEntity(reservationResponse);
        log.info(String.valueOf(reservationDTOResponse));
        return reservationDTOResponse;
    }*/
    public ReservationDTO register(ReservationDTO reservationDTO) {
        log.info("=== INICIANDO REGISTRO DE RESERVA ===");
        log.info("ReservationDTO recibido: {}", reservationDTO);

        Reservation reservation = ReservationDTO.fromDTO(reservationDTO);
        if (reservation.getProduct() != null && reservation.getProduct().getId() != null) {
            if (reservation.getProduct().getTitle() == null) {
                Optional<Reservation> tempReservation = reservationRepository.findById(reservation.getProduct().getId());
                log.info("Producto tiene solo ID: {}, buscando entidad completa...", reservation.getProduct().getId());
            }
        }

        if (reservation.getUser() != null && reservation.getUser().getId() != null) {
            if (reservation.getUser().getName() == null) {
                log.info("Usuario tiene solo ID: {}, buscando entidad completa...", reservation.getUser().getId());
            }
        }

        Reservation reservationResponse = reservationRepository.save(reservation);
        log.info("Reserva guardada con ID: {}", reservationResponse.getId());

        Optional<Reservation> completeReservation = reservationRepository.findById(reservationResponse.getId());

        if (completeReservation.isPresent()) {
            Reservation fullReservation = completeReservation.get();

            log.info("Reserva completa cargada:");
            if (fullReservation.getUser() != null) {
                log.info("- Usuario: {} {}", fullReservation.getUser().getName(), fullReservation.getUser().getLastName());
            }
            if (fullReservation.getProduct() != null) {
                log.info("- Producto: {}", fullReservation.getProduct().getTitle());
            }

            try {
                notificationService.sendReservationNotificationAsync(fullReservation);
                log.info("Notificación enviada correctamente");
            } catch (Exception e) {
                log.error("Error enviando notificación: {}", e.getMessage());
            }
        }

        ReservationDTO reservationDTOResponse = ReservationDTO.fromEntity(reservationResponse);
        log.info("=== REGISTRO COMPLETADO ===");
        return reservationDTOResponse;
    }

    //UPDATE
    public ReservationDTO updateReservation(ReservationDTO reservationDTO, Integer id) throws ResourceNotFoundException {
        //get product by id from database
        Reservation reservation = reservationRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Reservation", "id", id));

        reservation = convertEntity(reservation, reservationDTO);

        reservation = reservationRepository.save(reservation);
        System.out.println(reservation);
        ReservationDTO reservationDTOResponse = convertDTO(reservation,reservationDTO);
        return reservationDTOResponse;
    }

    //DELETE
    public void delete(Integer id) throws ResourceNotFoundException, DatosIncorrectosException, ConflictoException {
        Optional<Reservation> reservationOpt = reservationRepository.findById(id);
        if(this.getReservation(id) == null) {
            throw new ResourceNotFoundException("There is no reservation with the ID: " + id, "id", id);
        }
        Reservation reservation = reservationOpt.get();
        reservationRepository.deleteById(id);
        try {
            notificationService.sendCancellationNotificationAsync(reservation);
            log.info("Notificación de cancelación enviada para ID: {}", id);
        } catch (Exception e) {
            log.error("Error enviando notificación de cancelación: {}", e.getMessage());
            // No fallar el proceso si falla la notificación
        }
        log.info("Reserva eliminada exitosamente: ID {}", id);
    }



    /**********MÉTODOS EXTRAS PARA ENDPOINTS DEL FRONT**********/

    //trae una lista de reservas según el id de un producto
    public List<ReservationDTO> getReservationsByProductId(Integer id) {
        final List<ReservationDTO> reservationsDTO = new ArrayList<>();
        reservationRepository.getReservationsByProductId(id).stream().forEach(reservation -> {
            reservationsDTO.add(new ReservationDTO(reservation.getId(), reservation.getCheck_in(),
                    reservation.getCheck_out(), reservation.getProduct(), reservation.getUser()));
        });
        return reservationsDTO;
    }


    //ESTE METODO NO TIENE USO??????????????????????????????
    public List<ReservationDTO> getReservationsByDate(String date1, String date2) throws Exception{
        List<Reservation> reservations = reservationRepository.getReservationsByDate(date1, date2);
        log.info(String.valueOf(reservations));
        final List<ReservationDTO> reservationsDTO = new ArrayList<>();
        reservations.parallelStream().forEach(reservation -> {
            final ReservationDTO reservationDTO = new ReservationDTO();
            convertDTO(reservation, reservationDTO);
            reservationsDTO.add(reservationDTO);
        });
        return reservationsDTO;
    }


    //ESTE METODO NO TIENE USO??????????????????????????????
    public List<ReservationDTO> findReservationByUserId(Integer userId) {
        final List<ReservationDTO> reservationsDTO = new ArrayList<>();
        reservationRepository.findReservationByUserId(userId).stream().forEach(reservation -> {
            reservationsDTO.add(new ReservationDTO(reservation.getId(), reservation.getCheck_in(),
                    reservation.getCheck_out(), reservation.getProduct(), reservation.getUser()));
        });
        return reservationsDTO;
    }

}
