package grupo6.backendHotel.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import grupo6.backendHotel.models.Role;
import lombok.*;

    @Getter
    @Setter
    @ToString
    @AllArgsConstructor
    @NoArgsConstructor
    @JsonIgnoreProperties(ignoreUnknown = true)
    @Builder
    public class RoleDTO {

        private Integer id;
        private String name;


        public static RoleDTO fromEntity(Role role) {
            if (role == null) return null;
            return RoleDTO.builder().id(role.getId())
                    .name(role.getName())
                    .build();
        }

        public static Role fromDTO(grupo6.backendHotel.dto.RoleDTO role) {
            return Role.builder().id(role.getId())
                    .name(role.getName())
                    .build();
        }
}
