package pl.coderslab.line;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import pl.coderslab.busstop.Busstop;
import pl.coderslab.busstop.BusstopRepository;
import pl.coderslab.ride.Ride;
import pl.coderslab.ride.RideRepository;
import pl.coderslab.route.Route;
import pl.coderslab.route.RouteRepository;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/lines")
@AllArgsConstructor
public class LineController {
//    GET 	/books/ 	Zwraca listę wszystkich książek.
//    POST 	/books/ 	Tworzy nową książkę na podstawie danych przekazanych z formularza i zapisuje ją do bazy danych.
//    GET 	/books/{id} 	Wyświetla informacje o książce o podanym id.
//    PUT 	/books/{id} 	Zmienia informacje o książce o podanym id na nową.
//    DELETE 	/books/{id} 	Usuwa książkę o podanym id z bazy danych.

    private final LineRepository lineRepository;
    private final RouteRepository routeRepository;
    private final RideRepository rideRepository;
    private final BusstopRepository busstopRepository;

    @ModelAttribute("lines")
    public List<Line> lines() {
        return lineRepository.findAll();
    }

    @ModelAttribute("busstops")
    public List<Busstop> busstops() {
        return busstopRepository.findAll();
    }

    @GetMapping("/")
    public String showAll() {
        return "line/show";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        Line line = lineRepository.findOne(id);
        List<Busstop> busstops = busstopRepository.findBusstopsByLine(line);

        Map<Long, List<Ride>> schedules = new HashMap<>();
        busstops.forEach(busstop -> schedules.put(busstop.getId(), rideRepository.findSchedulesByBusstopAndLine(busstop, line)));

        model.addAttribute("line", line);
        model.addAttribute("busstops", busstops);
        model.addAttribute("schedules", schedules);

        return "line/details";
    }

    @GetMapping("/admin/add")
    public String add(Model model) {
        model.addAttribute("line", new Line());
        model.addAttribute("edit", false);
        return "line/form";
    }

    @GetMapping("/admin/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Line line = lineRepository.findOne(id);
        List<Route> routes = routeRepository.findByLine(line);

        model.addAttribute("line", line);
        model.addAttribute("edit", true);
        model.addAttribute("routes", routes);

        return "line/form";
    }

    @PostMapping("/admin/save")
    public String saveForm(@Valid Line line, BindingResult result) {
        if (result.hasErrors()) {
            return "line/form";
        }
        lineRepository.save(line);
        return "redirect:/lines/";
    }

    @GetMapping("/admin/del/{id}")
    public String delete(@PathVariable long id, RedirectAttributes redirectAttributes) {
        if (routeRepository.findByLine(lineRepository.findOne(id)).isEmpty()) {
            lineRepository.delete(id);
        } else {
            redirectAttributes.addFlashAttribute("message", "Cannot remove line. Remove dependencies first.");
        }

        return "redirect:/lines/";
    }

    @GetMapping("/admin/addBusstop/{lineId}/{orderNo}")
    public String addBusstop(@PathVariable long lineId, @PathVariable double orderNo, Model model) {
        Route route = new Route();

        Line line = lineRepository.findOne(lineId);
        route.setLine(line);
        if (orderNo == -1) {
            route.setOrderNo((double) routeRepository.countByLine(line) + 1);
        } else {
            route.setOrderNo(orderNo - .5);
        }

        model.addAttribute("route", route);
        return "line/selectBusstop";
    }

    @PostMapping("/admin/addBusstop/save")
    public String addBusstop(@Valid Route route, BindingResult result) {
        if (result.hasErrors()) {
            return "line/selectBusstop";
        }

        Line line = route.getLine();
        route.setOrderNo(route.getOrderNo() - .5);

        routeRepository.save(route);
        reorderBusstops(line);

        return "redirect:/lines/admin/edit/" + line.getId().toString();
    }

    @GetMapping("/admin/removeBusstop/{routeId}")
    public String addBusstop(@PathVariable long routeId, RedirectAttributes redirectAttributes) {
        Route route = routeRepository.findOne(routeId);
        Line line = route.getLine();
        if (rideRepository.findByRoute(route).isEmpty()) {
            routeRepository.delete(route);
            reorderBusstops(line);
        } else {
            redirectAttributes.addFlashAttribute("message", "Cannot detach busstop from line. Remove schedules first.");
        }

        return "redirect:/lines/admin/edit/" + line.getId().toString();
    }

    @GetMapping("/admin/moveUp/{routeId}")
    public String moveBusstopUp(@PathVariable long routeId) {
        Route route = routeRepository.findOne(routeId);
        Line line = route.getLine();

        route.setOrderNo(route.getOrderNo() - 1.5);

        routeRepository.save(route);
        reorderBusstops(line);

        return "redirect:/lines/admin/edit/" + line.getId().toString();
    }

    @GetMapping("/admin/moveDown/{routeId}")
    public String moveBusstop(@PathVariable long routeId) {
        Route route = routeRepository.findOne(routeId);
        Line line = route.getLine();

        route.setOrderNo(route.getOrderNo() + 1.5);

        routeRepository.save(route);
        reorderBusstops(line);

        return "redirect:/lines/admin/edit/" + line.getId().toString();
    }

    private void reorderBusstops(Line line) {
        List<Route> route = routeRepository.findByLine(line);
        for (int i = 0; i < route.size(); i++) {
            route.get(i).setOrderNo((double) (i + 1));
        }
        routeRepository.save(route);
    }
}
