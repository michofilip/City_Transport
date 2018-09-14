package pl.coderslab.ride;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.bus.Bus;
import pl.coderslab.busstop.Busstop;
import pl.coderslab.line.Line;
import pl.coderslab.route.Route;

import java.util.List;

public interface RideRepository extends JpaRepository<Ride, Long> {
    List<Ride> findByRouteAndBus(Route route, Bus bus);

    @Query("select ent from Ride ent where ent.route.busstop = :busstop order by ent.route.line.number asc, ent.arrivalTime asc")
    List<Ride> findSchedulesByBusstop(@Param("busstop") Busstop busstop);

    @Query("select ent from Ride ent where ent.route.busstop = :busstop and ent.route.line = :line order by ent.arrivalTime asc")
    List<Ride> findSchedulesByBusstopAndLine(@Param("busstop") Busstop busstop, @Param("line") Line line);

    @Query("select ent from Ride ent where ent.route = :route order by ent.arrivalTime asc")
    List<Ride> findByRoute(@Param("route") Route route);


    @Query("select ent from Ride ent where ent.bus = :bus")
    List<Ride> findByBus(@Param("bus") Bus bus);

    @Query("select ent from Ride ent where ent.bus = :bus order by ent.route.line.number, ent.route.line.variant, ent.route.orderNo, ent.arrivalTime")
    List<Ride> findByBusSorted(@Param("bus") Bus bus);

}
