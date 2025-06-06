package grupo6.backendHotel.security;

import grupo6.backendHotel.security.jwt.JwtEntryPointConfig;
import grupo6.backendHotel.security.jwt.JwtTokenFilterConfig;
import grupo6.backendHotel.service.security.UserDetailsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.Ordered;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

import java.util.Arrays;

/**
 * @author dpanquev
 * @version 2022-09-01
 *          <p>
 *          Clase encargada de orquestar la configuración del jwt token para
 *          temas de seguridad
 *          Estaré trabajando sobre el componente websecurityConfigurerAdapter
 *          deprecado para
 *          actualizarlo
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig /* extends WebSecurityConfigurerAdapter */ {

    public static final String ROLE_ADMIN = "Admin";
    public static final String ROLE_USER = "User";
    @Autowired
    private UserDetailsServiceImpl userDetailsService;

    @Autowired
    private JwtEntryPointConfig jwtEntryPointConfig;

    /**
     * Registro de propiedades a implementar
     */
    @Bean
    public JwtTokenFilterConfig jwtTokenFilter() {
        return new JwtTokenFilterConfig();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean("authenticationManager")
    public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration)
            throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }

    /**
     * Registro de los endpoints, definiendo quien tiene acceso a cada uno de ellos,
     * esto con el fin de darle
     * seguridad a nuestra aplicación
     */

    @Primary
    @Bean
    protected HttpSecurity configure(HttpSecurity http) throws Exception {

        http
                .cors().configurationSource(corsConfigurationSource())
                .and()
                .csrf().disable()
                // Permite el uso de iframes (necesario para H2 Console)
                .headers().frameOptions().sameOrigin()
                .and()
                .authorizeRequests()
                .antMatchers("/swagger-ui/**", "/swagger-ui.html", "/v3/api-docs/**", "/v3/api-docs.yaml",
                        "/debug").permitAll()
                .antMatchers("/h2-console/**").permitAll()
                .antMatchers(HttpMethod.OPTIONS, "/**").permitAll()
                .antMatchers(HttpMethod.GET, "/roles/**","/users/**", "/reservations/**").hasAnyAuthority(ROLE_ADMIN)
                // GET
                .antMatchers(HttpMethod.GET,
                        "/categories/**", "/cities/**", "/features/**", "/images/**",
                        "/products/**", "products/city/**", "products/category/**",
                        "/findByDate/**")
                .permitAll()

                // POST - (por ejemplo, admin no puede reservar, según pedido de PO)
                .antMatchers(HttpMethod.POST,  "/users/**","/auth/login").permitAll()
                .antMatchers(HttpMethod.OPTIONS, "/**").permitAll()
                .antMatchers(HttpMethod.POST,
                        "/categories/**", "/cities/**", "/features/**", "/images/**", "/products/**", "/roles/**")
                .hasAnyAuthority(ROLE_ADMIN)
                .antMatchers(HttpMethod.POST, "/reservations/**").hasAnyAuthority(ROLE_USER)

                // PUT
                .antMatchers(HttpMethod.PUT,
                        "/categories/**", "/cities/**", "/features/**", "/images/**", "/products/**",
                        "/reservations/**", "/roles/**", "/users/**")
                .hasAnyAuthority(ROLE_ADMIN)

                // DELETE
                .antMatchers(HttpMethod.DELETE,
                        "/categories/**", "/cities/**", "/features/**", "/images/**", "/products/**",
                        "/reservations/**", "/roles/**", "/users/**").hasAnyAuthority(ROLE_ADMIN)
                .and()
                .exceptionHandling().authenticationEntryPoint(jwtEntryPointConfig)
                .and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

        http.addFilterBefore(jwtTokenFilter(), UsernamePasswordAuthenticationFilter.class);

        return http;
    }

    /**
     * Se registran los cors origin para que el ecosistema permita el libre consumo
     * de los endpoints desde
     * el front
     */
    @Bean
    public CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration config = new CorsConfiguration();
        config.setAllowedOriginPatterns(Arrays.asList("https://parchearenantioquia.up.railway.app",
                "http://localhost:4200",
                "https://hotel-application-production.up.railway.app/**",
                "https://hotel-application-production.up.railway.app"));
        config.setAllowedMethods(Arrays.asList("GET", "POST", "PUT", "DELETE", "OPTIONS"));
        config.setAllowCredentials(true);
        config.setAllowedHeaders(Arrays.asList("Content-Type", "Authorization"));
        UrlBasedCorsConfigurationSource cors = new UrlBasedCorsConfigurationSource();
        cors.registerCorsConfiguration("/**", config);
        return cors;
    }

    @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();
        config.setAllowedOriginPatterns(Arrays.asList("https://parchearenantioquia.up.railway.app",
                "http://localhost:4200",
                "https://hotel-application-production.up.railway.app"));
        config.setAllowedMethods(Arrays.asList("GET", "POST", "PUT", "DELETE", "OPTIONS"));
        config.setAllowCredentials(true);
        config.setAllowedHeaders(Arrays.asList("Content-Type", "Authorization"));
        source.registerCorsConfiguration("/**", config);
        return new CorsFilter(source);
    }

    /**
     * Registro los filtros configurados anteriormente para que sea un filter
     * implementado por sprinb
     * de esta manera uso e implemento el registro y apertura de los cors
     */
    @Bean

    public FilterRegistrationBean<CorsFilter> corsFilterRegistration() {
        FilterRegistrationBean<CorsFilter> bean = new FilterRegistrationBean<CorsFilter>(
                new CorsFilter(corsConfigurationSource()));
        bean.setOrder(Ordered.HIGHEST_PRECEDENCE);
        return bean;
    }
}
