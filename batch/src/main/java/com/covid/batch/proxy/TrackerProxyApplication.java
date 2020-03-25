package com.covid.batch.proxy;

import java.net.URI;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestClientException;
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
	
	// Quelques exemples @link https://programmerbruce.blogspot.com/2011/05/deserialize-json-with-jackson-into.html
	
	@Bean
	public CommandLineRunner run() throws Exception {
		return args -> {
		    // Create ObjectMapper
		    ObjectMapper mapper = new ObjectMapper();
		    mapper.enable(SerializationFeature.INDENT_OUTPUT);
//		    mapper.getDeserializationConfig().addMixInAnnotations(
//		    		TrackerStats.class, RemoteStatistic.class);
//			mapper.getSerializationConfig().addMixInAnnotations(
//					TrackerStats.class, Statistic.class);
		    MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();
		    converter.setObjectMapper(mapper);		    
		    URI uri = new URI("https://corona-stats.online/?source=1&format=json");

		    try {
		    RestTemplate restTemplate = new RestTemplate();
		    restTemplate.getMessageConverters().add(0,converter);
			TrackerStats[] trackerStats = restTemplate.getForObject(uri, TrackerStats[].class);
		    }catch(RestClientException rce) {
		    	log.error(rce.getMessage());
		    }
			
			// Send resulting object to persistance component Application A rest

			// Convert object to JSON string - sérialisation
	//	      String json = mapper.writeValueAsString(trackerStats);			
//			log.debug(json.toString() );
			
		};
	}
}

// SVP ignorer le code ci-dessous, ce sont des librairies que j'expérimente

//Playgin with Jackson ObjectMapper...
//TrackerStats[] trackerStats = mapper.readValue(url, TrackerStats[].class);

//Playing with RestTemplate...
//restTemplate example 2
//RestTemplate restTemplate = new RestTemplate();
//ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);

//Playing with WebClient...
//WebClient example 1  (non-blocking)
//WebClient webClient = WebClient.create("https://corona-stats.online/?source=1&format=json");
//  Mono<String> result = webClient.get()
//                                 .retrieve()
//                                 .bodyToMono(String.class);
//  String response = result.block();
//  log.info(response);
//WebClient webClient = WebClient.create("https://corona-stats.online/?source=1&format=json");
//TrackerStats[] response = webClient.get(TrackerStats[].class);
		
//		.accept(MediaType.APPLICATION_JSON)
//        .get(TrackerStats[].class);
//
//WebClient example 2
//WebClient client = WebClient
//		  .builder()
//		    .baseUrl("https://corona-stats.online")
//		    .defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE) 
//		  .build();
//
//Mono<TrackerStats[]> flux = client.get()
//		.uri("/?source=1&format=json")
//		.retrieve()
//		.bodyToMono(TrackerStats[].class);
