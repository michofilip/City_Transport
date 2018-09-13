package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.announcement.Announcement;
import pl.coderslab.announcement.AnnouncementRepository;
import pl.coderslab.bus.Bus;
import pl.coderslab.bus.BusRepository;
import pl.coderslab.busstop.Busstop;
import pl.coderslab.busstop.BusstopRepository;
import pl.coderslab.line.Line;
import pl.coderslab.line.LineRepository;
import pl.coderslab.model.User;
import pl.coderslab.ride.Ride;
import pl.coderslab.ride.RideRepository;
import pl.coderslab.route.Route;
import pl.coderslab.route.RouteRepository;
import pl.coderslab.service.UserService;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping
//@AllArgsConstructor
public class IndexController {

    private final AnnouncementRepository announcementRepository;
    private final BusRepository busRepository;
    private final BusstopRepository busstopRepository;
    private final LineRepository lineRepository;
    private final RideRepository rideRepository;
    private final RouteRepository routeRepository;

    @Autowired
    private UserService userService;

    public IndexController(AnnouncementRepository announcementRepository,
                           BusRepository busRepository,
                           BusstopRepository busstopRepository,
                           LineRepository lineRepository,
                           RideRepository rideRepository,
                           RouteRepository routeRepository) {
        this.announcementRepository = announcementRepository;
        this.busRepository = busRepository;
        this.busstopRepository = busstopRepository;
        this.lineRepository = lineRepository;
        this.rideRepository = rideRepository;
        this.routeRepository = routeRepository;
    }

    @ModelAttribute("announcements")
    public List<Announcement> announcements() {
        return announcementRepository.find5();
    }

    @GetMapping("/")
    public String index() {
        return "index1";
    }

    @GetMapping(value = {"/login"})
    public String login() {
        return "admin/login";
    }

    @GetMapping(value = {"/admin/logout"})
    public String logout() {
        return "admin/logout";
    }

    @GetMapping("/generate")
    public String generate() {

        //        http://localhost:8080/

        rideRepository.deleteAll();
        routeRepository.deleteAll();
        busRepository.deleteAll();
        busstopRepository.deleteAll();
        lineRepository.deleteAll();


        User user = new User();
        user.setUsername("admin");
        user.setPassword("admin");
        userService.saveUser(user);


        Bus bus1 = new Bus("abc1234");
        Bus bus2 = new Bus("def4321");
        Bus bus3 = new Bus("qwe1234");
        Bus bus4 = new Bus("rty5678");
        Bus bus5 = new Bus("ghj4567");
        Bus bus6 = new Bus("bnm0987");
        Bus bus7 = new Bus("yui2468");
        Bus bus8 = new Bus("olk9631");

        List<Bus> buses = new ArrayList<>(Arrays.asList(bus1, bus2, bus3, bus4, bus5, bus6, bus7, bus8));
        busRepository.save(buses);

        Line lineWE = new Line("1", "W-E");
        Line lineEW = new Line("1", "E-W");
        Line lineNS = new Line("2", "N-S");
        Line lineSN = new Line("2", "S-N");

        List<Line> lines = new ArrayList<>(Arrays.asList(
                lineWE, lineEW, lineNS, lineSN
        ));
        lineRepository.save(lines);

        Busstop WEST01 = new Busstop("WEST01");
        Busstop WEST02 = new Busstop("WEST02");
        Busstop EAST01 = new Busstop("EAST01");
        Busstop EAST02 = new Busstop("EAST02");
        Busstop NORTH01 = new Busstop("NORTH01");
        Busstop NORTH02 = new Busstop("NORTH02");
        Busstop SOUTH01 = new Busstop("SOUTH01");
        Busstop SOUTH02 = new Busstop("SOUTH02");
        Busstop CENTER01 = new Busstop("CENTER01");
        Busstop CENTER02 = new Busstop("CENTER02");

        List<Busstop> busstops = new ArrayList<>(Arrays.asList(
                WEST01, WEST02, EAST01, EAST02, NORTH01, NORTH02, SOUTH01, SOUTH02, CENTER01, CENTER02
        ));
        busstopRepository.save(busstops);

        Route routeWE1 = new Route(lineWE, WEST01, 1d);
        Route routeWE2 = new Route(lineWE, CENTER01, 2d);
        Route routeWE3 = new Route(lineWE, EAST01, 3d);
        Route routeEW1 = new Route(lineEW, EAST02, 1d);
        Route routeEw2 = new Route(lineEW, CENTER02, 2d);
        Route routeEW3 = new Route(lineEW, WEST02, 3d);

        Route routeSN1 = new Route(lineSN, SOUTH01, 1d);
        Route routeSN2 = new Route(lineSN, CENTER01, 2d);
        Route routeSN3 = new Route(lineSN, NORTH01, 3d);
        Route routeNS1 = new Route(lineNS, NORTH02, 1d);
        Route routeNS2 = new Route(lineNS, CENTER02, 2d);
        Route routeNS3 = new Route(lineNS, SOUTH02, 3d);

        List<Route> routes = new ArrayList<>(Arrays.asList(
                routeWE1, routeWE2, routeWE3,
                routeEW1, routeEw2, routeEW3,
                routeSN1, routeSN2, routeSN3,
                routeNS1, routeNS2, routeNS3
        ));
        routeRepository.save(routes);

        routeRepository.findByLine(lineWE).forEach(route -> rideRepository.save(new Ride(route, bus1, getTime())));
        routeRepository.findByLine(lineWE).forEach(route -> rideRepository.save(new Ride(route, bus2, getTime())));
        routeRepository.findByLine(lineWE).forEach(route -> rideRepository.save(new Ride(route, bus3, getTime())));
        routeRepository.findByLine(lineWE).forEach(route -> rideRepository.save(new Ride(route, bus4, getTime())));

        routeRepository.findByLine(lineEW).forEach(route -> rideRepository.save(new Ride(route, bus4, getTime())));
        routeRepository.findByLine(lineEW).forEach(route -> rideRepository.save(new Ride(route, bus1, getTime())));
        routeRepository.findByLine(lineEW).forEach(route -> rideRepository.save(new Ride(route, bus2, getTime())));
        routeRepository.findByLine(lineEW).forEach(route -> rideRepository.save(new Ride(route, bus3, getTime())));

        routeRepository.findByLine(lineNS).forEach(route -> rideRepository.save(new Ride(route, bus5, getTime())));
        routeRepository.findByLine(lineNS).forEach(route -> rideRepository.save(new Ride(route, bus6, getTime())));
        routeRepository.findByLine(lineNS).forEach(route -> rideRepository.save(new Ride(route, bus7, getTime())));
        routeRepository.findByLine(lineNS).forEach(route -> rideRepository.save(new Ride(route, bus8, getTime())));

        routeRepository.findByLine(lineSN).forEach(route -> rideRepository.save(new Ride(route, bus8, getTime())));
        routeRepository.findByLine(lineSN).forEach(route -> rideRepository.save(new Ride(route, bus5, getTime())));
        routeRepository.findByLine(lineSN).forEach(route -> rideRepository.save(new Ride(route, bus6, getTime())));
        routeRepository.findByLine(lineSN).forEach(route -> rideRepository.save(new Ride(route, bus7, getTime())));

        return "redirect:/";
    }

    private LocalTime time = LocalTime.of(8, 0);

    private LocalTime getTime() {
        LocalTime t = time;
        time = time.plusMinutes(10);
        return t;
    }
}
