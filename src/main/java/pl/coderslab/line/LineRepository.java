package pl.coderslab.line;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.busstop.Busstop;

import java.util.List;

public interface LineRepository extends JpaRepository<Line, Long> {

    @Query("select ent.line from Route ent where ent.busstop = :busstop order by ent.line.number")
    List<Line> findLinesByBusstop(@Param("busstop") Busstop busstop);

}
