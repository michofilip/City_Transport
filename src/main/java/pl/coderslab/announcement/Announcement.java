package pl.coderslab.announcement;

import lombok.Data;
import lombok.ToString;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
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

    @NotNull
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    private LocalDateTime created;

    @NotBlank
    private String title;

    @NotBlank
    @Column(columnDefinition = "LONGTEXT")
    private String content;

    public Announcement() {
    }

    public Announcement(LocalDateTime created, String title, String content) {
        this.created = created;
        this.title = title;
        this.content = content;
    }

    public Announcement(String title, String content) {
        this.title = title;
        this.content = content;
    }

    @PrePersist
    protected void onCreate() {
        this.created = LocalDateTime.now();
    }

    public LocalDate getCreatedDate() {
        return created.toLocalDate();
    }

    public LocalTime getCreatedTime() {
        return created.toLocalTime();
    }
}