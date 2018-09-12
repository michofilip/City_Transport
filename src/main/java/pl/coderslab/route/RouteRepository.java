package pl.coderslab.route;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.busstop.Busstop;
import pl.coderslab.line.Line;

import java.util.List;

public interface RouteRepository extends JpaRepository<Route, Long> {
    @Query("select ent from Route ent order by ent.line, ent.orderNo")
    List<Route> findAll();

    @Query("select ent from Route ent where ent.line = :line order by ent.orderNo")
    List<Route> findByLine(@Param("line") Line line);

    List<Route> findByBusstop(Busstop busstop);

    long countByLine(Line line);
}
