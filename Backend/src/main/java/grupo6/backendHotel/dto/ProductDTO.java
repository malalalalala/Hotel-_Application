package grupo6.backendHotel.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import grupo6.backendHotel.models.Product;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
@Builder
public class ProductDTO {

    private Integer id;
    private String title;
    private String short_description;
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
    private List<ImageDTO> imageList = new ArrayList<>();
    private List<FeatureDTO> featureList = new ArrayList<>();

   // private Integer categoryId;

    private CategoryDTO category;

    private CityDTO city;

    public ProductDTO(Integer id, String title, String short_description, String long_description, String location, int point, String opinion, int star, String subtitle, Double latitude, Double length, String policy, String rules, String safety_security, String address, List<ImageDTO> imageList, List<FeatureDTO> featureList, List<ReservationDTO> reservationList, CityDTO city) {
        this.id = id;
        this.title = title;
        this.short_description = short_description;
        this.long_description = long_description;
        this.location = location;
        this.point = point;
        this.opinion = opinion;
        this.star = star;
        this.subtitle = subtitle;
        this.latitude = latitude;
        this.length = length;
        this.policy = policy;
        this.rules = rules;
        this.safety_security = safety_security;
        this.address = address;
        this.imageList = imageList;
        this.featureList = featureList;
        this.city = city;
     }

    public static ProductDTO fromEntity(Product product){
        return ProductDTO.builder().id(product.getId())
                .title(product.getTitle())
                .short_description(product.getShort_description())
                .long_description(product.getLong_description())
                .location(product.getLocation())
                .point(product.getPoint())
                .star(product.getStar())
                .subtitle(product.getSubtitle())
                .latitude(product.getLatitude())
                .length(product.getLength())
                .policy(product.getPolicy())
                .rules(product.getRules())
                .safety_security(product.getSafety_security())
                .address(product.getAddress())
                .category(CategoryDTO.fromEntity(product.getCategory()))
                .city(CityDTO.fromEntity(product.getCity()))
                .build();
    }

    public static Product fromDTO(ProductDTO product){
        return Product.builder().id(product.getId())
                .title(product.getTitle())
                .short_description(product.getShort_description())
                .long_description(product.getLong_description())
                .location(product.getLocation())
                .point(product.getPoint())
                .star(product.getStar())
                .subtitle(product.getSubtitle())
                .latitude(product.getLatitude())
                .length(product.getLength())
                .policy(product.getPolicy())
                .rules(product.getRules())
                .safety_security(product.getSafety_security())
                .address(product.getAddress())
                .category(CategoryDTO.fromDTO(product.getCategory()))
                .city(CityDTO.fromDTO(product.getCity()))
                .build();
    }

}
