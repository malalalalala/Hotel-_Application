package grupo6.backendHotel.security.jwt;

import grupo6.backendHotel.exceptions.UnauthorizedException;
import grupo6.backendHotel.models.security.MainUserAuth;
import io.jsonwebtoken.*;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Generate token
 */
@Slf4j
@Component
public class JwtProviderConfig {

    @Value("${jwt.secret}")
    private String secret;
    @Value("${jwt.expiration}")
    private long expiration;

    /**
     * Metodo que nos ayudara a generar el token a partir de un usuario existente en la base de datos
     * nos creara un usuario principal que será entrega como objeto al front
     * */
    public String generateToken(Authentication auth) {
        MainUserAuth mainUserAuth = (MainUserAuth) auth.getPrincipal();
        Map<String, Object> claims = new HashMap<>();
        /**
         * claims, es una variable para generar nueva información de acuerdo a lo que
         * yo necesite entregarle al front
         * */
        claims.put("lastName",mainUserAuth.getLastName());
        claims.put("name",mainUserAuth.getName());
        claims.put("idUser",mainUserAuth.getIdUser());
        claims.put("authorities",mainUserAuth.getAuthorities());

        return Jwts.builder()
                .setSubject(mainUserAuth.getUsername())
                .addClaims(claims)
                .setIssuedAt(new Date())
                .setExpiration(new Date(new Date().getTime() + expiration ))
                .signWith(SignatureAlgorithm.HS512, secret).compact();
    }

    /**
     * Metodo que obtiene el usuario configurado en el token
     * */
    public String getUserNameFromToken(String token) {
        return Jwts.parser().setSigningKey(secret).parseClaimsJws(token).getBody().getSubject();
    }

    /**
     * Metodo que valida si el token esta correctamente armado y si aun cuenta con tiempo y no ha expirado
     * */
    @SneakyThrows
    public boolean validateToken(String token) {
//        Jwts.parser().setSigningKey(secret).parseClaimsJws(token);
//        return true;
        String message="";
        try {
            Jwts.parser().setSigningKey(secret).parseClaimsJws(token);
            return true;
        } catch (MalformedJwtException e) {
            message="Token mal formado";
        } catch (UnsupportedJwtException e) {
            message="Token no soportado";
        } catch (ExpiredJwtException e) {
            message="Token expirado";
        } catch (IllegalArgumentException e) {
            message="Token vacio";
        } catch (SignatureException e) {
            message="Fallo con la firma";
        }
        log.error(message);
        throw new UnauthorizedException(message);
    }

}
