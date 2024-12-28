package com.example.onlinebookstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserCenterController {

    @GetMapping("/userCenter")
    public String userCenter() {
        return "userCenter";
    }

}
