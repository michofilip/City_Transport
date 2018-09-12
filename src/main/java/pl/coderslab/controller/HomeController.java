//package pl.coderslab.controller;
//
//
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//import pl.coderslab.hero.HeroRepository;
//
//@Controller
//public class HomeController {
//
//    private final HeroRepository heroRepository;
//
//    public HomeController(HeroRepository heroRepository) {
//        this.heroRepository = heroRepository;
//    }
//
//    @ResponseBody
//    @RequestMapping("/home")
//    public String home() {
//        return "123 2222 123 -- home --";
//    }
//
//    @RequestMapping("/index")
//    public String index() {
//        return "index";
//    }
//}
