package com.example.naviproject.pharmacy.controller;

import com.example.naviproject.pharmacy.cache.PharmacyRedisTemplateService;
import com.example.naviproject.pharmacy.dto.PharmacyDto;
import com.example.naviproject.pharmacy.service.PharmacyRepositoryService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
@Slf4j
@RequiredArgsConstructor
public class PharmacyController {


    private final PharmacyRepositoryService pharmacyRepositoryService;
    private final PharmacyRedisTemplateService pharmacyRedisTemplateService;

    @GetMapping("/redis/save")
    public String saveRedis() {
        List<PharmacyDto> pharmacyDtoList = pharmacyRepositoryService.findAll().stream()
                .map(PharmacyDto::from)
                .toList();

        pharmacyDtoList.forEach(pharmacyRedisTemplateService::save);

        return "success";
    }

}
