package grupo6.backendHotel.service;

import grupo6.backendHotel.models.Reservation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CompletableFuture;

@Slf4j
@Service
public class NotificationService {

    private final RestTemplate restTemplate;

    // Lista de miembros del "grupo" con sus números y API keys de CallMeBot
    private final List<GroupMember> groupMembers;

    public NotificationService() {
        this.restTemplate = new RestTemplate();

        // Configurar los miembros del grupo aquí
        // Cada persona debe haber configurado CallMeBot previamente
        this.groupMembers = Arrays.asList(
                new GroupMember("+573015781171", "1173354")
        );
    }

    /**
     * Envía notificación de nueva reserva a todos los miembros del grupo
     */
    public void sendReservationNotification(Reservation reservation) {
        try {
            // Log para debug
            log.info("Enviando notificación para reserva ID {}", reservation.getId());
            log.info("Usuario {}", reservation.getUser() != null ? reservation.getUser().getName() : "NULL");
            log.info("Producto {}", reservation.getProduct() != null ? reservation.getProduct().getTitle() : "NULL");

            String message = buildReservationMessage(reservation);
            sendToGroup(message);
            log.info("Notificación de reserva enviada para reservation ID {}", reservation.getId());

        } catch (Exception e) {
            log.error("Error enviando notificación de reserva para ID {} {}",
                    reservation.getId(), e.getMessage());
        }
    }

    /**
     * Envía notificación de cancelación de reserva
     */
    public void sendCancellationNotification(Reservation reservation) {
        try {
            String message = buildCancellationMessage(reservation);
            sendToGroup(message);
            log.info("Notificación de cancelación enviada para reservation ID {}", reservation.getId());

        } catch (Exception e) {
            log.error("Error enviando notificación de cancelación para ID {} {}",
                    reservation.getId(), e.getMessage());
        }
    }

    /**
     * Envía un mensaje personalizado al grupo
     */
    public void sendCustomMessage(String message) {
        try {
            sendToGroup("📱 HOTEL NOTIFICATION " + message);
            log.info("Mensaje personalizado enviado al grupo");

        } catch (Exception e) {
            log.error("Error enviando mensaje personalizado {}", e.getMessage());
        }
    }

    /**
     * Construye el mensaje de nueva reserva
     */
    private String buildReservationMessage(Reservation reservation) {
        // Verificar si los datos están disponibles y manejar nulls
        String userName = "Usuario no disponible";
        String userLastName = "";
        String userEmail = "Email no disponible";
        String productTitle = "Producto no disponible";

        try {
            if (reservation.getUser() != null) {
                userName = reservation.getUser().getName() != null ? reservation.getUser().getName() : "Sin nombre";
                userLastName = reservation.getUser().getLastName() != null ? reservation.getUser().getLastName() : "";
                userEmail = reservation.getUser().getEmail() != null ? reservation.getUser().getEmail() : "Sin email";
            }

            if (reservation.getProduct() != null) {
                productTitle = reservation.getProduct().getTitle() != null ? reservation.getProduct().getTitle() : "Sin título";
            }
        } catch (Exception e) {
            log.error("Error obteniendo datos de la reserva {}", e.getMessage());
        }

        return String.format(
                "🏨 NUEVA RESERVA\n\n" +
                        "👤 Cliente: %s %s\n" +
                        "📧 Email %s\n" +
                        "🏠 Alojamiento %s\n" +
                        "📅 Check-in %s\n" +
                        "📅 Check-out %s\n" +
                        "🆔 Reserva #%d\n" +
                        "⏰ Registrada %s\n\n" +
                        "¡Confirmar disponibilidad y preparar alojamiento!",

                userName,
                userLastName,
                userEmail,
                productTitle,
                reservation.getCheck_in() != null ? reservation.getCheck_in().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) : "Fecha no disponible",
                reservation.getCheck_out() != null ? reservation.getCheck_out().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")) : "Fecha no disponible",
                reservation.getId(),
                LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy"))
        );
    }

    /**
     * Construye el mensaje de cancelación
     */
    private String buildCancellationMessage(Reservation reservation) {
        return String.format(
                "❌ RESERVA CANCELADA\n\n" +
                        "👤 Cliente %s %s\n" +
                        "🏠 Alojamiento %s\n" +
                        "📅 Fechas %s - %s\n" +
                        "🆔 Reserva #%d\n" +
                        "⏰ Cancelada %s\n\n" +
                        "Liberar disponibilidad en el sistema",

                reservation.getUser().getName(),
                reservation.getUser().getLastName(),
                reservation.getProduct().getTitle(),
                reservation.getCheck_in().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                reservation.getCheck_out().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                reservation.getId(),
                LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy mm"))
        );
    }

    /**
     * Envía mensaje a todos los miembros del grupo usando CallMeBot
     */
    private void sendToGroup(String message) {
        groupMembers.parallelStream().forEach(member -> {
            try {
                // Codificar solo caracteres problemáticos, manteniendo emojis
                String encodedMessage = message
                        .replace(" ", "+")           // Espacios
                        .replace("\n", "%0A")       // Saltos de línea
                        .replace("&", "%26")        // Ampersand
                        .replace("=", "%3D")        // Igual
                        .replace("?", "%3F")        // Interrogación
                        .replace("#", "%23")        // Numeral
                        .replace("(", "%28")        // Paréntesis
                        .replace(")", "%29")        // Paréntesis
                        .replace(":", ":");       // Dos puntos

                String url = String.format(
                        "https://api.callmebot.com/whatsapp.php?phone=%s&text=%s&apikey=%s",
                        member.getPhone(),
                        encodedMessage,
                        member.getApiKey()
                );

                String response = restTemplate.getForObject(url, String.class);
                log.info("Mensaje enviado correctamente a {}: {}", member.getPhone(), response);

            } catch (Exception e) {
                log.error("Error enviando mensaje a {}: {}", member.getPhone(), e.getMessage());
            }
        });
    }
    /**
     * Envío asíncrono para no bloquear el proceso principal
     */
    public void sendReservationNotificationAsync(Reservation reservation) {
        CompletableFuture.runAsync(() -> sendReservationNotification(reservation));
    }

    public void sendCancellationNotificationAsync(Reservation reservation) {
        CompletableFuture.runAsync(() -> sendCancellationNotification(reservation));
    }

    /**
     * Clase interna para representar miembros del grupo
     */
    private static class GroupMember {
        private final String phone;
        private final String apiKey;

        public GroupMember(String phone, String apiKey) {
            this.phone = phone;
            this.apiKey = apiKey;
        }

        public String getPhone() {
            return phone;
        }

        public String getApiKey() {
            return apiKey;
        }
    }
}