package grupo6.backendHotel.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;

@Builder
@Getter
@Setter
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "features")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Feature {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private String icon;

    //RELACIÓN ENTRE TABLAS
    /*@ManyToMany(mappedBy = "featureList")
    @JsonManagedReference
    private List<Product> products = new ArrayList<>();*/

    /*@Column(name = "id_product")
    private Integer productId;*/

    //CONSTRUCTOR SIN ID
        public Feature(String name, String icon) {
        this.name = name;
        this.icon = icon;
    }
}


