package pl.coderslab.bus;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.NotBlank;
import pl.coderslab.ride.Ride;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "buses")
@Data
@ToString(exclude = "rides")
public class Bus {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String plateNumber;

    @OneToMany(mappedBy = "bus")
    private List<Ride> rides = new ArrayList<>();

    public Bus() {
    }

    public Bus(String plateNumber) {
        this.plateNumber = plateNumber;
    }
}