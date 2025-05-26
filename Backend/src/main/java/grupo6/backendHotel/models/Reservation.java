package grupo6.backendHotel.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "reservations")
@Builder
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Reservation implements Serializable{

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Integer id;
        private LocalDate check_in;
        private LocalDate check_out;

        //RELACIONES ENTRE TABLAS
        @ManyToOne(fetch = FetchType.EAGER)
        @JoinColumn(name = "product_id")
        private Product product;


        @ManyToOne(fetch = FetchType.EAGER)
        @JoinColumn(name = "user_id")
        private User user;

}
