package com.example.naviproject.api;

import com.example.naviproject.api.dto.KakaoApiResponseDto;
import com.example.naviproject.api.service.KakaoAddressSearchService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class HelloController {

    private final KakaoAddressSearchService kakaoAddressSearchService;

    @GetMapping("/address")
    public KakaoApiResponseDto a(@RequestParam String address) {
        return kakaoAddressSearchService.requestAddressSearch(address);
    }

}
