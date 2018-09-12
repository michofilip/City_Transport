package pl.coderslab.busstop;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.line.Line;

import java.util.List;

public interface BusstopRepository extends JpaRepository<Busstop, Long> {

    @Query("select ent.busstop from Route ent where ent.line = :line order by ent.orderNo")
    List<Busstop> findBusstopsByLine(@Param("line") Line line);
}
