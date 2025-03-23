package grupo6.backendHotel.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;

@Getter
@Setter
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "images")
@Builder
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private String url;

    /*@JsonIgnoreProperties
   @ManyToOne(fetch = FetchType.LAZY)*/

    @Column(name = "id_product")
    private Integer productId;

    //CONSTRUCTOR SIN ID
    public Image(String title, String url) {
        this.title = title;
        this.url = url;
    }

    public Image(String title, String url, Integer productId) {
        this.title = title;
        this.url = url;
        this.productId = productId;
    }
}