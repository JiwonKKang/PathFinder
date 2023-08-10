package com.example.naviproject.direction.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class FormController {

    @GetMapping("/")
    public String home() {
        return "home";
    }
}
