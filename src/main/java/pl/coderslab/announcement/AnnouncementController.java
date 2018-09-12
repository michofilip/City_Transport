package pl.coderslab.announcement;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/announcements")
@AllArgsConstructor
public class AnnouncementController {
//    GET 	/books/ 	Zwraca listę wszystkich książek.
//    POST 	/books/ 	Tworzy nową książkę na podstawie danych przekazanych z formularza i zapisuje ją do bazy danych.
//    GET 	/books/{id} 	Wyświetla informacje o książce o podanym id.
//    PUT 	/books/{id} 	Zmienia informacje o książce o podanym id na nową.
//    DELETE 	/books/{id} 	Usuwa książkę o podanym id z bazy danych.

    private final AnnouncementRepository announcementRepository;

    @ModelAttribute("announcements")
    public List<Announcement> announcements() {
        return announcementRepository.findAll();
    }

    @GetMapping("/")
    public String showAll() {
        return "announcement/show";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        Announcement announcement = announcementRepository.findOne(id);
        model.addAttribute("announcement", announcement);
        return "announcement/details";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("announcement", new Announcement());
        return "announcement/form";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Announcement announcement = announcementRepository.findOne(id);
        model.addAttribute("announcement", announcement);
        return "announcement/form";
    }

    @PostMapping("/save")
    public String saveForm(@Valid Announcement announcement, BindingResult result) {
        if (result.hasErrors()) {
            return "announcement/form";
        }
        announcement.setCreated(LocalDateTime.now());
        announcementRepository.save(announcement);
        return "redirect:/announcements/";
    }

    @GetMapping("/del/{id}")
    public String delete(@PathVariable long id, RedirectAttributes redirectAttributes) {
//        if (rideRepository.findByBus(busRepository.findOne(id)).isEmpty()) {
//             busRepository.delete(id);
//        } else {
//            redirectAttributes.addFlashAttribute("message", "Cannot remove bus. Remove dependencies first.");
//        }
        announcementRepository.delete(id);
        return "redirect:/announcements/";
    }
}
