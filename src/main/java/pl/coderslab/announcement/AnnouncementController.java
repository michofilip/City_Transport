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

    private final AnnouncementRepository announcementRepository;

    @ModelAttribute("announcements")
    public List<Announcement> announcements() {
        return announcementRepository.findAll();
    }

    @GetMapping("/")
    public String showAll() {
        return "announcement/show";
    }

    @GetMapping("/show")
    public String showAll(@RequestParam String search, Model model) {
        if (search != null) {
            model.addAttribute("announcements", announcementRepository.findByTitleOrContent(search));
            model.addAttribute("search", search);
        }
        return "announcement/show";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        Announcement announcement = announcementRepository.findOne(id);
        model.addAttribute("announcement", announcement);
        return "announcement/details";
    }

    @GetMapping("/admin/add")
    public String add(Model model) {
        model.addAttribute("announcement", new Announcement());
        return "announcement/form";
    }

    @GetMapping("/admin/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Announcement announcement = announcementRepository.findOne(id);
        model.addAttribute("announcement", announcement);
        return "announcement/form";
    }

    @PostMapping("/admin/save")
    public String saveForm(@Valid Announcement announcement, BindingResult result) {
        if (result.hasErrors()) {
            return "announcement/form";
        }
//        if (announcement.getCreated() == null) {
//            announcement.setCreated(LocalDateTime.now());
//        } else {
//            Announcement one = announcementRepository.findOne(announcement.getId());
//            announcement.setCreated(one.getCreated());
////            LocalDateTime created = announcement.getCreated();
////            announcement.setCreated(
////                    LocalDateTime.of(created.getYear(), created.getMonth(), created.getDayOfMonth(),
////                            created.getHour(), created.getMinute(), created.getSecond())
////            );
//        }
        announcementRepository.save(announcement);
        return "redirect:/announcements/";
    }

    @GetMapping("/admin/del/{id}")
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
