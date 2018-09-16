package pl.coderslab.ride;

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
import pl.coderslab.route.Route;
import pl.coderslab.route.RouteRepository;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/rides")
@AllArgsConstructor
public class RideController {

    private final RideRepository rideRepository;
    private final BusRepository busRepository;
    private final LineRepository lineRepository;
    private final RouteRepository routeRepository;
    private final BusstopRepository busstopRepository;

//    @ModelAttribute("rides")
//    public List<Ride> rides() {
//        return rideRepository.findAll();
//    }

    @ModelAttribute("buses")
    public List<Bus> buses() {
        return busRepository.findAll();
    }

    @ModelAttribute("lines")
    public List<Line> lines() {
        return lineRepository.findAll();
    }

    @ModelAttribute("routes")
    public List<Route> routes() {
        return routeRepository.findAll();
    }

    @ModelAttribute("busstops")
    public List<Busstop> busstops() {
        return busstopRepository.findAll();
    }

    @ModelAttribute("hours")
    private List<Integer> hours() {
        List<Integer> hours = new ArrayList<>();
        for (int i = 0; i < 24; i++) {
            hours.add(i);
        }
        return hours;
    }

    @ModelAttribute("minutes")
    private List<Integer> minutes() {
        List<Integer> minutes = new ArrayList<>();
        for (int i = 0; i < 60; i++) {
            minutes.add(i);
        }
        return minutes;
    }

    @GetMapping("/")
    public String showAll(Model model) {
//        model.addAttribute("routeId", -1);
        return "ride/show";
    }

    @GetMapping("/show")
    public String showAll(@RequestParam Long routeId, Model model) {
        Route route = routeRepository.findOne(routeId);
        List<Ride> rides = rideRepository.findByRoute(route);

        model.addAttribute("rides", rides);
        model.addAttribute("routeId", routeId);
        return "ride/show";
    }

    @GetMapping("/showB")
    public String showAllB(@RequestParam Long busId, Model model) {
        Bus bus = busRepository.findOne(busId);
        List<Ride> rides = rideRepository.findByBusSorted(bus);

        model.addAttribute("rides", rides);
        model.addAttribute("busId", busId);
        return "ride/show";
    }

//    @GetMapping("/show")
//    public String showAll(@RequestParam Long busstopId, @RequestParam Long lineId, Model model) {
////        if (busstopId != null && lineId != null) {
//            Busstop busstop = busstopRepository.findOne(busstopId);
//            Line line = lineRepository.findOne(lineId);
//            List<Ride> rides = rideRepository.findSchedulesByBusstopAndLine(busstop, line);
//
//            model.addAttribute("rides", rides);
////        }
//        return "ride/show";
//    }

    @GetMapping("/details/{id}")
    public String details(@PathVariable Long id, Model model) {
        Ride ride = rideRepository.findOne(id);
        model.addAttribute("ride", ride);
        return "ride/details";
    }

    @GetMapping("/admin/add")
    public String add(Model model) {
        model.addAttribute("ride", new Ride());
        return "ride/form";
    }

    @GetMapping("/admin/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Ride ride = rideRepository.findOne(id);
        model.addAttribute("ride", ride);
        return "ride/form";
    }

    @PostMapping("/admin/save")
    public String saveForm(@Valid Ride ride, BindingResult result) {
        if (result.hasErrors()) {
            return "ride/form";
        }
        rideRepository.save(ride);
        return "redirect:/rides/show?routeId=" + ride.getRoute().getId();
    }

    @GetMapping("/admin/del/{id}")
    public String delete(@PathVariable long id) {
        Long routeId = rideRepository.findOne(id).getRoute().getId();
        rideRepository.delete(id);
        return "redirect:/rides/show?routeId=" + routeId;
    }
}
