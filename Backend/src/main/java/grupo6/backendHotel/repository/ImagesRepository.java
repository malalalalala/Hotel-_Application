package grupo6.backendHotel.repository;

import grupo6.backendHotel.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ImagesRepository extends JpaRepository<Image, Integer> {

    @Query("FROM Image i WHERE i.productId = ?1 ")
    List<Image> findImageByProductId(Integer id);

    Image save(Image image);

    //Image update(Image image);

}
