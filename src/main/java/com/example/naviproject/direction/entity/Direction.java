package com.example.naviproject.direction.entity;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name = "direction")
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Direction {

    @Id
    @GeneratedValue
    private Long id;

    //고객
    private String inputAddress;
    private double inputLatitude;
    private double inputLongitude;

    //약국
    private String targetPharmacyName;
    private String targetAddress;
    private double targetLatitude;
    private double targetLongitude;

    //고객 주소와 약국 주소 사이의 거리
    private double distance;



}
