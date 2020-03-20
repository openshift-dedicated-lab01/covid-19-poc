package com.covid.TrackerProxy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class TrackerProxyApplication {

	private static final Logger log = LoggerFactory.getLogger(TrackerProxyApplication.class);
	
	public static void main(String[] args) {
		SpringApplication.run(TrackerProxyApplication.class, args);
	}

	@Bean
	public RestTemplate restTemplate(RestTemplateBuilder builder) {
		return builder.build();
	}
	
	@Bean
	public CommandLineRunner run(RestTemplate restTemplate) throws Exception {
		return args -> {
			TrackerStats trackerStats = restTemplate.getForObject(
					"https://corona-stats.online/Canada?format=json", TrackerStats.class);
			log.info(Integer.toString(trackerStats.getTrackerStats().size()));
		};
	}
}
