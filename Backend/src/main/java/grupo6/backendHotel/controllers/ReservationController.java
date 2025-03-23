package grupo6.backendHotel.controllers;

import grupo6.backendHotel.dto.ReservationDTO;
import grupo6.backendHotel.exceptions.ResourceNotFoundException;
import grupo6.backendHotel.service.ReservationService;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin

public class ReservationController {

    @Autowired
    private ReservationService reservationService;


    /********** CRUD + GET ALL **********/

    //GET BY ID
    @RequestMapping(value = "reservations/{id}", method = RequestMethod.GET)
    public ResponseEntity<ReservationDTO> getReservation(@PathVariable Integer id) throws DatosIncorrectosException, ConflictoException {
        ReservationDTO reservation = reservationService.getReservation(id);
        if(reservation != null){
            return ResponseEntity.ok(reservation);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

    //GET ALL
    @RequestMapping(value = "reservations", method = RequestMethod.GET)
    public ResponseEntity<List<ReservationDTO>> getAllReservation() throws Exception {
        return ResponseEntity.ok(reservationService.getAllReservation());
    }

    //REGISTER
    @RequestMapping(value = "reservations",  method = RequestMethod.POST)
    public ResponseEntity<ReservationDTO> registerReservation(@RequestBody ReservationDTO reservation) throws Exception {
        ReservationDTO reservationDTO = reservationService.register(reservation);
        return new ResponseEntity(reservationDTO, HttpStatus.CREATED);
    }

    //UPDATE
    @RequestMapping(value = "reservations/{id}", method = RequestMethod.PUT)
    public ResponseEntity<ReservationDTO> updateReservation(@RequestBody ReservationDTO reservation) throws ResourceNotFoundException {
        return ResponseEntity.ok(reservationService.updateReservation(reservation, reservation.getId()));
    }

    //DELETE
    @RequestMapping(value = "reservations/{id}", method = RequestMethod.DELETE)
    public void deleteReservation(@PathVariable Integer id) throws ResourceNotFoundException, DatosIncorrectosException, ConflictoException {
        reservationService.delete(id);
    }



    /********** MÉTODOS EXTRAS PARA ENDPOINTS DEL FRONT **********/

    //trae una lista de reservas según el id de un producto
    @RequestMapping(value = "reservations/product/{id}", method = RequestMethod.GET)
    public ResponseEntity<List<ReservationDTO>> getReservationsByProductId(@PathVariable Integer id) throws Exception {
        List<ReservationDTO> reservations = reservationService.getReservationsByProductId(id);
        if (reservations != null) {
            return ResponseEntity.ok(reservations);
        } else {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }


    //NO SE ESTÁ UTILIZANDO ESTE METODO?????????????????????????????
    //trae una lista de reservas
    @RequestMapping(value = "reservations/disponibles/{date1}/{date2}", method = RequestMethod.GET)
    public ResponseEntity<List<ReservationDTO>> getReservationsByDate(@PathVariable String date1, String date2) throws Exception {
        List<ReservationDTO> reservations = reservationService.getReservationsByDate(date1, date2);
        if(reservations != null){
            return ResponseEntity.ok(reservations);
        }else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }
    }

}
