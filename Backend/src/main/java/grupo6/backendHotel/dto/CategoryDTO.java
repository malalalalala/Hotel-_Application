package grupo6.backendHotel.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import grupo6.backendHotel.models.Category;
import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
@Builder
public class CategoryDTO {

    private Integer id;
    private String title;
    private String description;
    private String image_url;
    private int productsQuantity;


    //DECIDIR SI NO SE USAN Y ELIMINARLOS

    public static CategoryDTO fromEntity(Category category){
        return CategoryDTO.builder().id(category.getId())
                .description(category.getDescription())
                .title(category.getTitle())
                .image_url(category.getImage_url())
                .build();
    }

    public static Category fromDTO(CategoryDTO category){
        return Category.builder().id(category.getId())
                .description(category.getDescription())
                .title(category.getTitle())
                .image_url(category.getImage_url())
                .build();
    }

}
