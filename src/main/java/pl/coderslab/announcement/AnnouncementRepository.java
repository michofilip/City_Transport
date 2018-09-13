package pl.coderslab.announcement;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface AnnouncementRepository extends JpaRepository<Announcement, Long> {
    @Query("select ent from Announcement ent order by ent.created desc ")
    List<Announcement> findAll();

    @Query(value = "select * from announcements order by created desc limit 5", nativeQuery = true)
    List<Announcement> find5();
}
