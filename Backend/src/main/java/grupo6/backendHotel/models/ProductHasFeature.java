package grupo6.backendHotel.models;

import lombok.*;

import javax.persistence.*;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "ProductHasFeature")
@Table(name = "products_has_features")
public class ProductHasFeature {

    @EmbeddedId
    private ProductHasFeatureId id;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("productId")
    private Product product;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("featureId")
    private Feature feature;


}
