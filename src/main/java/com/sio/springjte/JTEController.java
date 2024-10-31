package com.sio.springjte;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JTEController {

    @GetMapping("/")
    private String index() {
        return "welcome";
    }

    @GetMapping("/login")
    private String login(Model model) {
        model.addAttribute("welcomePage", new Page("Login Page", "This is login page"));
        return "login";
    }
}
