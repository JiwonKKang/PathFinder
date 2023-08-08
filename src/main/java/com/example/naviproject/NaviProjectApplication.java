package com.example.naviproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class NaviProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(NaviProjectApplication.class, args);
	}

}
