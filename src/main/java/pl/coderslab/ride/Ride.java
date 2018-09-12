package pl.coderslab.ride;

import lombok.Data;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;
import pl.coderslab.bus.Bus;
import pl.coderslab.route.Route;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.time.LocalTime;

@Entity
@Table(name = "rides")
@Data
@ToString
public class Ride {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne
    private Route route;

    @NotNull
    @ManyToOne
    private Bus bus;

    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime arrivalTime = LocalTime.of(0, 0);

    public Ride() {
    }

    public Ride(Route route, Bus bus, LocalTime arrivalTime) {
        this.route = route;
        this.bus = bus;
        this.arrivalTime = arrivalTime;
    }

    public String getDescription() {
        return id + ", " + route.getLine().getNumberVariant() + ", " + bus.getPlateNumber();
    }

    public Integer getArrivalHour() {
        return arrivalTime.getHour();
    }

    public void setArrivalHour(int hours) {
        arrivalTime = arrivalTime.withHour(hours);
    }

    public Integer getArrivalMinutes() {
        return arrivalTime.getMinute();
    }

    public void setArrivalMinutes(int minutes) {
        arrivalTime = arrivalTime.withMinute(minutes);
    }
}
