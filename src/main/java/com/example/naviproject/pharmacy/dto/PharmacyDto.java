package com.example.naviproject.pharmacy.dto;

import com.example.naviproject.pharmacy.entity.Pharmacy;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PharmacyDto {
    private Long id;
    private String pharmacyName;
    private String pharmacyAddress;
    private double latitude;
    private double longitude;

    public static PharmacyDto from(Pharmacy entity) {
        return new PharmacyDto(
                entity.getId(),
                entity.getPharmacyName(),
                entity.getPharmacyAddress(),
                entity.getLatitude(),
                entity.getLongitude()
        );
    }
}
