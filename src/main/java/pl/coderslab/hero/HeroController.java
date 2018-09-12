package pl.coderslab.hero;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hero")
public class HeroController {

    private final HeroRepository heroRepository;

    public HeroController(HeroRepository heroRepository) {
        this.heroRepository = heroRepository;
    }

    @RequestMapping("/list")
    public String list(Model model){
        model.addAttribute("heroes", heroRepository.findAll());

        return "hero/list";
    }
}
