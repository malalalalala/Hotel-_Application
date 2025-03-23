package grupo6.backendHotel.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Embeddable
public class ProductHasFeatureId implements Serializable {

    @Column(name = "product_id")
    private Integer productId;

    @Column(name = "feature_id")
    private Integer FeatureId;

}
