package com.example.naviproject.pharmacy.service;

import com.example.naviproject.api.dto.DocumentDto;
import com.example.naviproject.api.dto.KakaoApiResponseDto;
import com.example.naviproject.api.service.KakaoAddressSearchService;
import com.example.naviproject.direction.dto.OutputDto;
import com.example.naviproject.direction.entity.Direction;
import com.example.naviproject.direction.service.Base62Service;
import com.example.naviproject.direction.service.DirectionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class PharmacyRecommendationService {

    private final KakaoAddressSearchService kakaoAddressSearchService;
    private final DirectionService directionService;
    private final Base62Service base62Service;

    private final static String ROAD_VIEW_BASE_URL = "https://map.kakao.com/link/roadview/";

    @Value("${pharmacy.recommendation.base.url}")
    private String baseUrl;

    public List<OutputDto> recommendPharmacyList(String address) {

        KakaoApiResponseDto kakaoApiResponseDto = kakaoAddressSearchService.requestAddressSearch(address);

        if (Objects.isNull(kakaoApiResponseDto) || CollectionUtils.isEmpty(kakaoApiResponseDto.getDocumentDtoList())) {
            log.error("[PharmacyRecommendationService recommendPharmacyList fail] Input address: {}", address);
            return Collections.emptyList();
        }

        DocumentDto documentDto = kakaoApiResponseDto.getDocumentDtoList().get(0);

        List<Direction> directionList = directionService.buildDirectionList(documentDto);
        log.info("directionList = {}", directionList);
//        List<Direction> directions = directionService.buildDirectionListByCategoryApi(documentDto); 카테고리 검색 서비스
        return directionService.saveAll(directionList).stream()
                .map(this::convertToOutputDto)
                .collect(Collectors.toList());
    }

    private OutputDto convertToOutputDto(Direction direction) {
        return OutputDto.builder()
                .pharmacyName(direction.getTargetPharmacyName())
                .pharmacyAddress(direction.getTargetAddress())
                .directionUrl(baseUrl + base62Service.encodedDirectionId(direction.getId()))
                .roadViewUrl(ROAD_VIEW_BASE_URL + String.join(",", String.valueOf(direction.getTargetLatitude()), String.valueOf(direction.getTargetLongitude())))
                .distance(String.format("%.2f km", direction.getDistance()))
                .build();
    }


}
