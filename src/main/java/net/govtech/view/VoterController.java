package net.govtech.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class VoterController {
    @GetMapping
    public String index(Map<String,Object> model) {
        return "main";
    }
}
