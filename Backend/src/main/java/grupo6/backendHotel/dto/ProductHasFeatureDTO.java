package grupo6.backendHotel.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import grupo6.backendHotel.models.*;
import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
@Builder
public class ProductHasFeatureDTO {

        private ProductHasFeatureId id;
        private FeatureDTO feature;
        private ProductDTO product;


      public static ProductHasFeatureDTO fromEntity(ProductHasFeature productHasFeature) {
                return ProductHasFeatureDTO.builder()
                        .id(productHasFeature.getId())
                        .feature(FeatureDTO.fromEntity(productHasFeature.getFeature()))
                        .product(ProductDTO.fromEntity(productHasFeature.getProduct()))
                        .build();
        }

       public static ProductHasFeature fromDTO(ProductHasFeatureDTO productHasFeatureDTO) {
                return ProductHasFeature.builder()
                        .id(productHasFeatureDTO.getId())
                        .product(ProductDTO.fromDTO(productHasFeatureDTO.getProduct()))
                        .feature(FeatureDTO.fromDTO(productHasFeatureDTO.getFeature()))
                        .build();
        }
}
