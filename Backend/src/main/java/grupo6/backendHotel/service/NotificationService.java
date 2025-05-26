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
                new GroupMember("+573015781171", "1173354") // Admin principal
                //new GroupMember("+573009876543", "TU_API_KEY_2"), // Recepción
                //new GroupMember("+573005555555", "TU_API_KEY_3")  // Manager
        );
    }

    /**
     * Envía notificación de nueva reserva a todos los miembros del grupo
     */
    public void sendReservationNotification(Reservation reservation) {
        try {
            String message = buildReservationMessage(reservation);
            sendToGroup(message);
            log.info("Notificación de reserva enviada para reservation ID: {}", reservation.getId());

        } catch (Exception e) {
            log.error("Error enviando notificación de reserva para ID {}: {}",
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
            log.info("Notificación de cancelación enviada para reservation ID: {}", reservation.getId());

        } catch (Exception e) {
            log.error("Error enviando notificación de cancelación para ID {}: {}",
                    reservation.getId(), e.getMessage());
        }
    }

    public void sendCustomMessage(String message) {
        try {
            sendToGroup("📱 HOTEL NOTIFICATION: " + message);
            log.info("Mensaje personalizado enviado al grupo");

        } catch (Exception e) {
            log.error("Error enviando mensaje personalizado: {}", e.getMessage());
        }
    }

    /**
     * Construye el mensaje de nueva reserva
     */
    private String buildReservationMessage(Reservation reservation) {
        return String.format(
                "🏨 NUEVA RESERVA\n\n" +
                        "👤 Cliente: %s %s\n" +
                        "📧 Email: %s\n" +
                        "🏠 Alojamiento: %s\n" +
                        "📅 Check-in: %s\n" +
                        "📅 Check-out: %s\n" +
                        "🆔 Reserva #%d\n" +
                        "⏰ Registrada: %s\n\n" +
                        "¡Confirmar disponibilidad y preparar alojamiento!",

                reservation.getUser().getName(),
                reservation.getUser().getLastName(),
                reservation.getUser().getEmail(),
                reservation.getProduct().getTitle(),
                reservation.getCheck_in().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                reservation.getCheck_out().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                reservation.getId(),
                LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm"))
        );
    }

    /**
     * Construye el mensaje de cancelación
     */
    private String buildCancellationMessage(Reservation reservation) {
        return String.format(
                "❌ RESERVA CANCELADA\n\n" +
                        "👤 Cliente: %s %s\n" +
                        "🏠 Alojamiento: %s\n" +
                        "📅 Fechas: %s - %s\n" +
                        "🆔 Reserva #%d\n" +
                        "⏰ Cancelada: %s\n\n" +
                        "Liberar disponibilidad en el sistema.",

                reservation.getUser().getName(),
                reservation.getUser().getLastName(),
                reservation.getProduct().getTitle(),
                reservation.getCheck_in().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                reservation.getCheck_out().format(DateTimeFormatter.ofPattern("dd/MM/yyyy")),
                reservation.getId(),
                LocalDateTime.now().format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm"))
        );
    }

    /**
     * Envía mensaje a todos los miembros del grupo usando CallMeBot
     */
    private void sendToGroup(String message) {
        // Enviar a todos los miembros del grupo en paralelo para mayor velocidad
        groupMembers.parallelStream().forEach(member -> {
            try {
                String encodedMessage = URLEncoder.encode(message, StandardCharsets.UTF_8);
                String url = String.format(
                        "https://api.callmebot.com/whatsapp.php?phone=%s&text=%s&apikey=%s",
                        member.getPhone(),
                        encodedMessage,
                        member.getApiKey()
                );

                String response = restTemplate.getForObject(url, String.class);
                log.debug("Mensaje enviado a {}: {}", member.getPhone(), response);

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