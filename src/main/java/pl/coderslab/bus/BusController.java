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
//    GET 	/books/ 	Zwraca listę wszystkich książek.
//    POST 	/books/ 	Tworzy nową książkę na podstawie danych przekazanych z formularza i zapisuje ją do bazy danych.
//    GET 	/books/{id} 	Wyświetla informacje o książce o podanym id.
//    PUT 	/books/{id} 	Zmienia informacje o książce o podanym id na nową.
//    DELETE 	/books/{id} 	Usuwa książkę o podanym id z bazy danych.

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

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("bus", new Bus());
        return "bus/form";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Bus bus = busRepository.findOne(id);
        model.addAttribute("bus", bus);
        return "bus/form";
    }

    @PostMapping("/save")
    public String saveForm(@Valid Bus bus, BindingResult result) {
        if (result.hasErrors()) {
            return "bus/form";
        }
        busRepository.save(bus);
        return "redirect:/buses/";
    }

    @GetMapping("/del/{id}")
    public String delete(@PathVariable long id, RedirectAttributes redirectAttributes) {
        if (rideRepository.findByBus(busRepository.findOne(id)).isEmpty()) {
            busRepository.delete(id);
        } else {
            redirectAttributes.addFlashAttribute("message", "Cannot remove bus. Remove dependencies first.");
        }

        return "redirect:/buses/";
    }
}
