package grupo6.backendHotel.controllers;

import io.micrometer.core.instrument.MeterRegistry;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.lang.management.ManagementFactory;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/metrics")
public class MetricsController {
    @GetMapping("/health")
    public Map<String, String> health() {
        Map<String, String> status = new HashMap<>();
        status.put("status", "UP");
        status.put("timestamp", LocalDateTime.now().toString());
        return status;
    }

    @GetMapping("/info")
    public Map<String, Object> info() {
        Map<String, Object> info = new HashMap<>();
        info.put("app", "mi-backend");
        info.put("version", "1.0.0");
        info.put("uptime", ManagementFactory.getRuntimeMXBean().getUptime());
        return info;
    }
    @Autowired
    private MeterRegistry meterRegistry;

    @GetMapping("/available")
    public Set<String> availableMetrics() {
        return meterRegistry.getMeters()
                .stream()
                .map(meter -> meter.getId().getName())
                .collect(Collectors.toSet());
    }
}
