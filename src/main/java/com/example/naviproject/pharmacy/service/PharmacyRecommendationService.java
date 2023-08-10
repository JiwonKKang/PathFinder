package com.example.naviproject.pharmacy.service;

import com.example.naviproject.api.dto.DocumentDto;
import com.example.naviproject.api.dto.KakaoApiResponseDto;
import com.example.naviproject.api.service.KakaoAddressSearchService;
import com.example.naviproject.direction.dto.OutputDto;
import com.example.naviproject.direction.entity.Direction;
import com.example.naviproject.direction.service.DirectionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

@Service
@Slf4j
@Transactional
@RequiredArgsConstructor
public class PharmacyRecommendationService {

    private final KakaoAddressSearchService kakaoAddressSearchService;
    private final DirectionService directionService;

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
        List<OutputDto> outputDtos = directionService.saveAll(directionList);
        log.info("outputDto {}", outputDtos);
        return outputDtos;
    }


}
