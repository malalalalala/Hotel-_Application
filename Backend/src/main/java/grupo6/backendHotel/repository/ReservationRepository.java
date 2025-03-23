package grupo6.backendHotel.repository;

import grupo6.backendHotel.models.Reservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ReservationRepository extends JpaRepository<Reservation, Integer> {

        @Query("FROM Reservation r WHERE r.user.id = ?1")
        List<Reservation> findReservationByUserId(Integer id);

        Optional<Reservation> findById(Integer id);

        Reservation save(Reservation reservation);

        @Query("FROM Reservation r WHERE r.product.id = ?1")
        List<Reservation> getReservationsByProductId(Integer id);

        @Query(value = "SELECT * FROM products LEFT JOIN reservations ON product_id = products.id WHERE (reservations.check_in NOT BETWEEN :date1 AND :date2) AND (reservations.check_out NOT BETWEEN :date1 AND :date2) OR reservations.check_in IS NULL", nativeQuery = true)
        List<Reservation> getReservationsByDate(@DateTimeFormat(pattern = "yyyy-mm-dd") @Param("date1") String date1, @DateTimeFormat(pattern = "yyyy-mm-dd") @Param("date2") String date2);

}