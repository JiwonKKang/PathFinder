package com.example.naviproject.direction.service;

import com.example.naviproject.api.dto.DocumentDto;
import com.example.naviproject.direction.entity.Direction;
import com.example.naviproject.pharmacy.dto.PharmacyDto;
import com.example.naviproject.pharmacy.service.PharmacySearchService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional
public class DirectionService {

    private final PharmacySearchService pharmacySearchService;
    private static final int MAX_SEARCH_COUNT = 3;
    private static final double RADIUS_KM = 10;

    public List<Direction> buildDirectionList(DocumentDto documentDto) {
        return pharmacySearchService.searchPharmacyDtoList().stream().map(pharmacyDto ->
                        Direction.builder()
                                .inputAddress(documentDto.getAddressName())
                                .inputLatitude(documentDto.getLatitude())
                                .inputLongitude(documentDto.getLongitude())
                                .targetAddress(pharmacyDto.getPharmacyAddress())
                                .targetLatitude(pharmacyDto.getLatitude())
                                .targetLongitude(pharmacyDto.getLongitude())
                                .distance(calculateDistance(documentDto, pharmacyDto))
                                .build())
                .filter(direction -> direction.getDistance() <= RADIUS_KM)
                .sorted(Comparator.comparing(Direction::getDistance))
                .limit(MAX_SEARCH_COUNT)
                .collect(Collectors.toList());
    }


    public double calculateDistance(DocumentDto documentDto, PharmacyDto pharmacyDto) {
        double lat1 = Math.toRadians(documentDto.getLatitude());
        double lon1 = Math.toRadians(documentDto.getLongitude());
        double lat2 = Math.toRadians(pharmacyDto.getLatitude());
        double lon2 = Math.toRadians(pharmacyDto.getLongitude());

        double earthRadius = 6371; //Kilometers
        return earthRadius * Math.acos(Math.sin(lat1) * Math.sin(lat2) + Math.cos(lat1) * Math.cos(lat2) * Math.cos(lon1 - lon2)); //거리계산 알고리즘
    }

}
