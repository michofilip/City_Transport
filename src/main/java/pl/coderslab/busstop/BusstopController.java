package pl.coderslab.busstop;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import pl.coderslab.line.Line;
import pl.coderslab.line.LineRepository;
import pl.coderslab.ride.Ride;
import pl.coderslab.ride.RideRepository;
import pl.coderslab.route.RouteRepository;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/busstops")
@AllArgsConstructor
public class BusstopController {
//    GET 	/books/ 	Zwraca listę wszystkich książek.
//    POST 	/books/ 	Tworzy nową książkę na podstawie danych przekazanych z formularza i zapisuje ją do bazy danych.
//    GET 	/books/{id} 	Wyświetla informacje o książce o podanym id.
//    PUT 	/books/{id} 	Zmienia informacje o książce o podanym id na nową.
//    DELETE 	/books/{id} 	Usuwa książkę o podanym id z bazy danych.

    private final BusstopRepository busstopRepository;
    private final RouteRepository routeRepository;
    private final RideRepository rideRepository;
    private final LineRepository lineRepository;

    @ModelAttribute("busstops")
    public List<Busstop> busstops() {
        return busstopRepository.findAll();
    }

    @GetMapping("/")
    public String showAll() {
        return "busstop/show";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        Busstop busstop = busstopRepository.findOne(id);
        List<Ride> rides = rideRepository.findSchedulesByBusstop(busstop);
        List<Line> lines = lineRepository.findLinesByBusstop(busstop);

        Map<Long, List<Ride>> schedules = rides.stream().collect(Collectors.groupingBy(r -> r.getRoute().getLine().getId()));
        Map<Long, List<Busstop>> busstops = new HashMap<>();
        lines.forEach(line -> busstops.put(line.getId(), busstopRepository.findBusstopsByLine(line)));

        model.addAttribute("busstop", busstop);
        model.addAttribute("lines", lines);
        model.addAttribute("busstops", busstops);
        model.addAttribute("schedules", schedules);

        return "busstop/details";
    }

    @GetMapping("/admin/add")
    public String add(Model model) {
        model.addAttribute("busstop", new Busstop());
        return "busstop/form";
    }

    @GetMapping("/admin/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Busstop busstop = busstopRepository.findOne(id);
        model.addAttribute("busstop", busstop);
        return "busstop/form";
    }

    @PostMapping("/admin/save")
    public String saveForm(@Valid Busstop busstop, BindingResult result) {
        if (result.hasErrors()) {
            return "busstop/form";
        }
        busstopRepository.save(busstop);
        return "redirect:/busstops/";
    }

    @GetMapping("/admin/del/{id}")
    public String delete(@PathVariable long id, RedirectAttributes redirectAttributes) {
        if (routeRepository.findByBusstop(busstopRepository.findOne(id)).isEmpty()) {
            busstopRepository.delete(id);
        } else {
            redirectAttributes.addFlashAttribute("message", "Cannot remove busstop. Remove dependencies first.");
        }
        return "redirect:/busstops/";
    }
}
