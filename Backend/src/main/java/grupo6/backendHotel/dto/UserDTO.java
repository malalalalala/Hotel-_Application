package grupo6.backendHotel.dto;

import grupo6.backendHotel.models.User;
import lombok.*;

@Getter
@Setter
//@ToString
@AllArgsConstructor
@NoArgsConstructor
//@JsonIgnoreProperties(ignoreUnknown = true)
@Builder
public class UserDTO {

    private Integer id;
    private String name;
    private String lastName;
    private String email;
    private String password;

//    Collection<ReservationDTO> reservationList = new ArrayList<>();

    private RoleDTO role;


    public static UserDTO fromEntity(User user){
        return UserDTO.builder().id(user.getId())
                .name(user.getName())
                .lastName(user.getLastName())
                .email(user.getEmail())
                .password(user.getPassword())
                .role(RoleDTO.fromEntity(user.getRole()))
                .build();
    }

    public static User fromDTO(UserDTO user){
        return User.builder().id(user.getId())
                .name(user.getName())
                .lastName(user.getLastName())
                .email(user.getEmail())
                .password(user.getPassword())
                .role(RoleDTO.fromDTO(user.getRole()))
                .build();
    }
}
