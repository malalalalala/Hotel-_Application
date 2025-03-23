package grupo6.backendHotel.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import grupo6.backendHotel.models.Feature;
import lombok.*;

@Builder
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class FeatureDTO {

    private Integer id;
    private String name;
    private String icon;

public static FeatureDTO fromEntity(Feature feature){
       return FeatureDTO.builder().id(feature.getId())
               .name(feature.getName())
               .icon(feature.getIcon())
               .build();
   }


    public static Feature fromDTO(FeatureDTO feature){
        return Feature.builder().id(feature.getId())
                .name(feature.getName())
                .icon(feature.getIcon())
                .build();
    }

}
