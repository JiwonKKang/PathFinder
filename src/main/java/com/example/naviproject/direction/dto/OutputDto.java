package com.example.naviproject.direction.dto;

import com.example.naviproject.direction.entity.Direction;
import lombok.Builder;
import lombok.Getter;
import org.springframework.web.util.UriComponentsBuilder;

@Getter
@Builder
public class OutputDto {

    private String pharmacyName;    // 약국 명
    private String pharmacyAddress; // 약국 주소
    private String directionUrl;    // 길안내 url
    private String roadViewUrl;     // 로드뷰 url
    private String distance;
}