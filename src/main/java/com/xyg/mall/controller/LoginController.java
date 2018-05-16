package com.xyg.mall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class LoginController {

    @RequestMapping("login")
    public String login() {
        return "admin/login";
    }

    @RequestMapping("find")
    public String find() {
        return "admin/information";
    }
}
