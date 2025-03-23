package grupo6.backendHotel.service;

import grupo6.backendHotel.dto.FeatureDTO;
import grupo6.backendHotel.dto.ProductDTO;
import grupo6.backendHotel.dto.ProductHasFeatureDTO;
import grupo6.backendHotel.models.Feature;
import grupo6.backendHotel.models.ProductHasFeature;
import grupo6.backendHotel.repository.ProductHasFeatureRepository;
import grupo6.backendHotel.service.exceptions.ConflictoException;
import grupo6.backendHotel.service.exceptions.DatosIncorrectosException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductHasFeatureService {

    private ProductHasFeatureRepository productHasFeatureRepository;

    @Autowired
    public ProductHasFeatureService(ProductHasFeatureRepository productHasFeatureRepository) {
        this.productHasFeatureRepository = productHasFeatureRepository;
    }

    public ProductHasFeature convertEntity(ProductHasFeature productHasFeature, final ProductHasFeatureDTO productHasFeatureDTO){
        productHasFeature.setFeature(FeatureDTO.fromDTO(productHasFeatureDTO.getFeature()));
        productHasFeature.setProduct(ProductDTO.fromDTO(productHasFeatureDTO.getProduct()));
        return productHasFeature;
    }

   public ProductHasFeatureDTO convertDTO(ProductHasFeature productHasFeature, ProductHasFeatureDTO productHasFeatureDTO){
        productHasFeatureDTO.setFeature(FeatureDTO.fromEntity(productHasFeature.getFeature()));
        productHasFeatureDTO.setProduct(ProductDTO.fromEntity(productHasFeature.getProduct()));
        return productHasFeatureDTO;
    }

    public ProductHasFeatureDTO register(ProductHasFeatureDTO productHasFeatureDTO) throws DatosIncorrectosException, ConflictoException {
        ProductHasFeature productHasFeatureResponse = ProductHasFeatureDTO.fromDTO(productHasFeatureDTO);
        productHasFeatureResponse = productHasFeatureRepository.save(productHasFeatureResponse);
        ProductHasFeatureDTO productHasFeatureDTOResponse = ProductHasFeatureDTO.fromEntity(productHasFeatureResponse);
        return productHasFeatureDTOResponse;

    }

    public List<Feature> findByProductId(Integer productId){
        return productHasFeatureRepository.findByProductId(productId);
    }

    public Integer findProductIdByProductId(Integer productId){
        return productHasFeatureRepository.findProductIdByProductId(productId);
    }


}
