package grupo6.backendHotel.repository;

import grupo6.backendHotel.models.Feature;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FeatureRepository extends JpaRepository<Feature, Integer> {

    //List<Feature> findFeatureByProductId(Integer productId);

    Feature save(Feature feature);

}
