package com.example.naviproject.direction.controller;

import com.example.naviproject.direction.entity.Direction;
import com.example.naviproject.direction.service.DirectionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.util.UriComponentsBuilder;

import javax.websocket.server.PathParam;

@Controller
@RequiredArgsConstructor
@Slf4j
public class DirectionController {

    private final DirectionService directionService;

    @GetMapping("/dir/{encodedId}")
    public String redirectKakaoMap(@PathVariable("encodedId") String encodedId) {
        String url = directionService.getUrlById(encodedId);
        return "redirect:" + url;
    }
}
