package pl.coderslab.busstop;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.NotBlank;
import pl.coderslab.route.Route;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "busstops")
@Data
@ToString(exclude = "routes")
public class Busstop {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @OneToMany(mappedBy = "busstop")
    private List<Route> routes = new ArrayList<>();

    public Busstop() {
    }

    public Busstop(String name) {
        this.name = name;
    }
}

