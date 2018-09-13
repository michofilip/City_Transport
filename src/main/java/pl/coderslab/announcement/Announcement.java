package pl.coderslab.announcement;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

@Entity
@Table(name = "announcements")
@Data
@ToString
public class Announcement {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private LocalDateTime created;

    @NotBlank
    private String title;

    @NotBlank
    @Column(columnDefinition = "LONGTEXT")
    private String content;

    public Announcement() {
    }

    public Announcement(String title, String content) {
        this.title = title;
        this.content = content;
    }

    public LocalDate getCreatedDate() {
        return created.toLocalDate();
    }

    public LocalTime getCreatedTime() {
        return created.toLocalTime();
    }
}