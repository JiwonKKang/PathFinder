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

    public static OutputDto from(Direction entity) {
        return new OutputDto(
                entity.getTargetPharmacyName(),
                entity.getTargetAddress(),
                convertUri(entity),
                Constant.ROAD_VIEW_BASE_URL + entity.getTargetLatitude() + "," + entity.getTargetLongitude(),
                String.format("%.2f km", entity.getDistance())
        );
    }// 고객 주소와 약국 주소의 거리

    private static String convertUri(Direction direction) {
        String params = String.join(",", direction.getTargetPharmacyName(),
                String.valueOf(direction.getTargetLatitude()), String.valueOf(direction.getTargetLongitude()));

        return UriComponentsBuilder.fromHttpUrl(Constant.DIRECTION_BASE_URL + params).toUriString();
    }
}