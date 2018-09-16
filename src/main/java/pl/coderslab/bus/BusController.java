package pl.coderslab.bus;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import pl.coderslab.ride.RideRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/buses")
@AllArgsConstructor
public class BusController {

    private final BusRepository busRepository;
    private final RideRepository rideRepository;

    @ModelAttribute("buses")
    public List<Bus> buses() {
        return busRepository.findAll();
    }

    @GetMapping("/")
    public String showAll() {
        return "bus/show";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        Bus bus = busRepository.findOne(id);
        model.addAttribute("bus", bus);
        return "bus/details";
    }

    @GetMapping("/admin/add")
    public String add(Model model) {
        model.addAttribute("bus", new Bus());
        return "bus/form";
    }

    @GetMapping("/admin/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Bus bus = busRepository.findOne(id);
        model.addAttribute("bus", bus);
        return "bus/form";
    }

    @PostMapping("/admin/save")
    public String saveForm(@Valid Bus bus, BindingResult result) {
        if (result.hasErrors()) {
            return "bus/form";
        }
        busRepository.save(bus);
        return "redirect:/buses/";
    }

    @GetMapping("/admin/del/{id}")
    public String delete(@PathVariable long id, RedirectAttributes redirectAttributes) {
        if (rideRepository.findByBus(busRepository.findOne(id)).isEmpty()) {
            busRepository.delete(id);
        } else {
            redirectAttributes.addFlashAttribute("message", "Cannot remove bus. Remove dependencies first.");
        }

        return "redirect:/buses/";
    }
}
