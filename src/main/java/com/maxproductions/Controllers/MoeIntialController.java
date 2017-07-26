package com.maxproductions.Controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by agarw on 02-06-2017.
 */
@Controller
public class MoeIntialController {

    @RequestMapping(value = "/signin", method = RequestMethod.GET)
    public String loginPage(Model model ) {
        System.out.println("Into the login controller");
        return "loginview";
    }

    @RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
    public String welcomePage(Model model) {
        model.addAttribute("title", "index");
        model.addAttribute("message", "This is welcome page!");
        return "index";
    }





}
