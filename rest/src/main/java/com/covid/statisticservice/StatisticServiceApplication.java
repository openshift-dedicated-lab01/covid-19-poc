package com.covid.statisticservice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class StatisticServiceApplication {

	private static final Logger log = LoggerFactory.getLogger(StatisticServiceApplication.class);

	public static void main(String[] args) {
		SpringApplication.run(StatisticServiceApplication.class, args);
	}

	@Bean
	public CommandLineRunner run() throws Exception {
		return args -> {
				log.info("Run CommandLineRunner");
		};
	}
}
