package grupo6.backendHotel.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import grupo6.backendHotel.models.Product;
import grupo6.backendHotel.models.Reservation;
import grupo6.backendHotel.models.User;
import lombok.*;

import java.time.LocalDate;

@Getter
    @Setter
    @ToString
    @AllArgsConstructor
    @NoArgsConstructor
    @JsonIgnoreProperties(ignoreUnknown = true)
    @Builder
    public class ReservationDTO {

        private Integer id;
        private LocalDate check_in;
        private LocalDate check_out;

        private Product product;
        private User user;

        public static ReservationDTO fromEntity(Reservation reservation) {
            return ReservationDTO.builder().id(reservation.getId())
                    .check_in(reservation.getCheck_in())
                    .check_out(reservation.getCheck_out())
                    .product(reservation.getProduct())
                    .user(reservation.getUser())
                    .build();
        }

        public static Reservation fromDTO(grupo6.backendHotel.dto.ReservationDTO reservation) {
            return Reservation.builder().id(reservation.getId())
                    .check_in(reservation.getCheck_in())
                    .check_out(reservation.getCheck_out())
                    .product(reservation.getProduct())
                    .user(reservation.getUser())
                    .build();
        }

    }
