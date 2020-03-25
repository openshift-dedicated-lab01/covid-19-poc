package com.covid.batch.proxy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.client.RestTemplateBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.web.client.RestTemplate;

import com.covid.batch.entity.TrackerStats;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

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
			// Get JSON from provider
			TrackerStats[] trackerStats = restTemplate.getForObject(
					"https://corona-stats.online/?source=1&format=json", TrackerStats[].class);
			for (TrackerStats stat: trackerStats) {
				log.info("Pays: " + stat.getCountry());
				log.info("Province: " + stat.getProvince());
				log.info("Décès: " + stat.getDeaths());
			}
			// Parse unessary fields
			
			// Send resulting object to persistance component Application A rest
		    // Create ObjectMapper
		    ObjectMapper mapper = new ObjectMapper();
		    mapper.enable(SerializationFeature.INDENT_OUTPUT);
			// Convert object to JSON string
		      String json = mapper.writeValueAsString(trackerStats);			
			log.info(json.toString() );
			
		};
	}
}
