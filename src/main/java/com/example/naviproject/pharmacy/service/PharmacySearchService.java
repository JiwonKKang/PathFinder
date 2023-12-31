package com.example.naviproject.pharmacy.service;

import com.example.naviproject.pharmacy.cache.PharmacyRedisTemplateService;
import com.example.naviproject.pharmacy.dto.PharmacyDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Transactional
@Service
@RequiredArgsConstructor
public class PharmacySearchService {

    private final PharmacyRepositoryService pharmacyRepositoryService;
    private final PharmacyRedisTemplateService pharmacyRedisTemplateService;

    public List<PharmacyDto> searchPharmacyDtoList() {

        //redis
        List<PharmacyDto> pharmacyDtoList = pharmacyRedisTemplateService.findAll();

        if(pharmacyDtoList.isEmpty()) {
            //db
            return pharmacyRepositoryService.findAll().stream()
                    .map(PharmacyDto::from)
                    .collect(Collectors.toList());
        }
        return pharmacyDtoList;
    }
}
