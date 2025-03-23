package grupo6.backendHotel.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import grupo6.backendHotel.models.City;
import lombok.*;


@Getter @Setter @ToString
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
@Builder
public class CityDTO {

    private Integer id;
    private String name;
    private String country;
    private String state;

    public static CityDTO fromEntity(City city) {
        return CityDTO.builder().id(city.getId())
                .name(city.getName())
                .country(city.getCountry())
                .state(city.getState())
                .build();
    }

    public static City fromDTO(CityDTO city) {
        return City.builder().id(city.getId())
                .name(city.getName())
                .country(city.getCountry())
                .state(city.getState())
                .build();
    }
}
