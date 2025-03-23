package grupo6.backendHotel.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class ImageDTO {

    private Integer id;
    private String title;
    private String url;
    private Integer productId;
}
