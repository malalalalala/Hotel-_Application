package grupo6.backendHotel.repository;

import grupo6.backendHotel.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

    @Query(countQuery="SELECT * FROM products p WHERE p.id_category = ?1", nativeQuery = true)
    List<Product> findProductByCategoryId(Integer id);

    Optional<Product> findById(Integer id);

    Product save(Product product);

    @Query(countQuery="SELECT * FROM products p WHERE cities.name = ?1", nativeQuery = true)
    List<Product> getProductsByCityName(String name);

    @Query(countQuery="SELECT * FROM products p WHERE p.id_category = 1?", nativeQuery = true)
    List<Product> getProductsQuantityByCategoryId (Integer id);
    /*ProductDTO update(ProductDTO productDTO);*/

    @Query(
            value = "select P.* from products P " +
                    "WHERE NOT EXISTS ("+
                    "SELECT * FROM reservations WHERE (P.id = reservations.product_id AND check_in >= (?1) AND reservations.check_out <= (?2)))", nativeQuery = true)
    List<Product> findByDates(LocalDate CheckIn, LocalDate CheckOut);

    @Query(
            value = "select P.* from products P " +
                    "WHERE NOT EXISTS ("+
                    "SELECT * FROM reservations WHERE (P.id = reservations.product_id AND check_in >= (?1) AND reservations.check_out <= (?2)))"+
                    "and P.id_city = (?3)", nativeQuery = true)
    List<Product> findByDatesAndCity(LocalDate CheckIn, LocalDate CheckOut, Integer cityId);

}
