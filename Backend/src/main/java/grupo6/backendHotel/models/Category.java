package grupo6.backendHotel.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Getter
@Setter
@Data
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "categories")
@Builder
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Category implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String title;
    private String description;
    private String image_url;


    @OneToMany(mappedBy = "category")
    @JsonIgnoreProperties("category")
    private List<Product> productList;


    //CONSTRUCTOR SIN ID
    public Category(String title, String description, String image_url) {
        this.title = title;
        this.description = description;
        this.image_url = image_url;
    }
}
