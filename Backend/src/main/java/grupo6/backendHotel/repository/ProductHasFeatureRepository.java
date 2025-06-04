package grupo6.backendHotel.repository;

import grupo6.backendHotel.models.Feature;
import grupo6.backendHotel.models.ProductHasFeature;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface ProductHasFeatureRepository extends JpaRepository<ProductHasFeature, Integer> {

    @Query("SELECT pf.feature FROM ProductHasFeature pf WHERE pf.product.id = ?1 ORDER BY pf.feature.id ASC")
    List<Feature> findByProductId(Integer productId);

    @Query(value = "SELECT pf.product_id FROM products_has_features pf WHERE pf.product_id = ?1 ", nativeQuery = true)
    Integer findProductIdByProductId(Integer productId);

    ProductHasFeature save(ProductHasFeature productHasFeature);

    @Modifying
    @Transactional
    @Query(value = "DELETE FROM products_has_features pf WHERE pf.product_id = ?1 ", nativeQuery = true)
    void deleteByProductId(Integer productId);

}
