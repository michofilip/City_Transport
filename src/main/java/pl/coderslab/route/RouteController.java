package pl.coderslab.route;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.bus.Bus;
import pl.coderslab.bus.BusRepository;
import pl.coderslab.busstop.Busstop;
import pl.coderslab.busstop.BusstopRepository;
import pl.coderslab.line.Line;
import pl.coderslab.line.LineRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/routes")
@AllArgsConstructor
public class RouteController {
//    GET 	/books/ 	Zwraca listę wszystkich książek.
//    POST 	/books/ 	Tworzy nową książkę na podstawie danych przekazanych z formularza i zapisuje ją do bazy danych.
//    GET 	/books/{id} 	Wyświetla informacje o książce o podanym id.
//    PUT 	/books/{id} 	Zmienia informacje o książce o podanym id na nową.
//    DELETE 	/books/{id} 	Usuwa książkę o podanym id z bazy danych.

    private final RouteRepository routeRepository;
    private final LineRepository lineRepository;
    private final BusRepository busRepository;
    private final BusstopRepository busstopRepository;

    @ModelAttribute("routes")
    public List<Route> routes() {
        return routeRepository.findAll();
    }

    @ModelAttribute("lines")
    public List<Line> lines() {
        return lineRepository.findAll();
    }

    @ModelAttribute("buses")
    public List<Bus> buses() {
        return busRepository.findAll();
    }

    @ModelAttribute("busstops")
    public List<Busstop> busstops() {
        return busstopRepository.findAll();
    }

    @GetMapping("/")
    public String showAll() {
        return "route/show";
    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        Route route = routeRepository.findOne(id);
        model.addAttribute("route", route);
        return "route/details";
    }

    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("route", new Route());
        return "route/form";
    }

    @GetMapping("/add/{lineId}/{orderNo}")
    public String addBefore(@PathVariable long lineId, @PathVariable double orderNo, Model model) {
        Route route = new Route();
        route.setLine(lineRepository.findOne(lineId));
        route.setOrderNo(orderNo - .5);
        model.addAttribute("route", route);
        return "route/form";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Route route = routeRepository.findOne(id);
        model.addAttribute("route", route);
        return "route/form";
    }

    @PostMapping("/save")
    public String saveForm(@Valid Route route, BindingResult result) {
        if (result.hasErrors()) {
            return "route/form";
        }
        routeRepository.save(route);

        reorderBusstops(route.getLine());

        return "redirect:/routes/";
    }

    @GetMapping("/del/{id}")
    public String delete(@PathVariable long id) {
        Line line = routeRepository.findOne(id).getLine();
        routeRepository.delete(id);
        reorderBusstops(line);
        return "redirect:/routes/";
    }

    private void reorderBusstops(Line line) {
        List<Route> route = routeRepository.findByLine(line);
        for (int i = 0; i < route.size(); i++) {
            route.get(i).setOrderNo((double) (i + 1));
        }
        routeRepository.save(route);
    }
}
