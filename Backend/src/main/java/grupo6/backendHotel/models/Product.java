package grupo6.backendHotel.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "products")
@Builder
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class  Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private String short_description;
    @Lob
    @Column(name = "long_description", nullable = false)
    private String long_description;
    private String location;
    private int point;
    private String opinion;
    private int star;
    private String subtitle;
    private Double latitude;
    private Double length;
    private String policy;
    private String rules;
    private String safety_security;
    private String address;

    //private Integer categoryId;

    //RELACIONES ENTRE TABLAS
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_category")
    private Category category;

    //@Column(name = "id_category")
    //private Integer category;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_city")
    private City city;

}