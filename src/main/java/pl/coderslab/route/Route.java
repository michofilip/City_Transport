package pl.coderslab.route;

import lombok.Data;
import lombok.ToString;
import pl.coderslab.busstop.Busstop;
import pl.coderslab.line.Line;
import pl.coderslab.ride.Ride;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "routes")
@Data
@ToString(exclude = "rides")
public class Route {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne
    private Line line;

    @NotNull
    @ManyToOne
    private Busstop busstop;

    @NotNull
    private Double orderNo;

    @OneToMany(mappedBy = "route")
    private List<Ride> rides = new ArrayList<>();

    public Route() {
    }

    public Route(Line line, Busstop busstop, Double orderNo) {
        this.line = line;
        this.busstop = busstop;
        this.orderNo = orderNo;
    }

    public String getDescription() {
        return line.getNumberVariant() + ", " + busstop.getName();
    }

    public Integer getOrderNoInt() {
        if (orderNo == null) {
            return null;
        }
        return (int) (double) orderNo;
    }

    public void setOrderNoInt(int orderNo) {
        this.orderNo = (double) orderNo;
    }
}
