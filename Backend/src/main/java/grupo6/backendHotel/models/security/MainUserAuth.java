package grupo6.backendHotel.models.security;

import grupo6.backendHotel.dto.UserDTO;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

@Slf4j
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class MainUserAuth implements UserDetails {
    private String name;

    private String lastName;

    private String email;

    private String password;

    private Integer idUser;

    private Collection<? extends GrantedAuthority> authorities;


    public static MainUserAuth build(UserDTO user) {
                   List<GrantedAuthority> authoritiesU = new ArrayList<>();
        GrantedAuthority authority = new SimpleGrantedAuthority(user.getRole().getName());
        authoritiesU.add(authority);
        return new MainUserAuth(user.getName(), user.getLastName()
                , user.getEmail(), user.getPassword(), user.getId(),  authoritiesU);
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return authorities;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }


}
