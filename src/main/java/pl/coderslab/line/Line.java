package pl.coderslab.line;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.NotBlank;
import pl.coderslab.route.Route;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "buslines")
@Data
@ToString(exclude = "routes")
public class Line {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String number;

    @NotBlank
    private String variant;

    @OneToMany(mappedBy = "line")
    private List<Route> routes = new ArrayList<>();

    public Line() {
    }

    public Line(String number, String variant) {
        this.number = number;
        this.variant = variant;
    }

    public String getNumberVariant() {
        return number + ", " + variant;
    }

}
