package com.covid.batch.proxy;

public class Test {

	// SVP ignorer le code ci-dessous, ce sont des librairies que j'expérimente

	//https://www.baeldung.com/spring-5-webclient
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
//	                                 .retrieve()
//	                                 .bodyToMono(String.class);
	//  String response = result.block();
	//  log.info(response);
	//WebClient webClient = WebClient.create("https://corona-stats.online/?source=1&format=json");
	//TrackerStats[] response = webClient.get(TrackerStats[].class);

//			.accept(MediaType.APPLICATION_JSON)
//	        .get(TrackerStats[].class);
	//
	//WebClient example 2
	//WebClient client = WebClient
//			  .builder()
//			    .baseUrl("https://corona-stats.online")
//			    .defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE) 
//			  .build();
	//
	//Mono<TrackerStats[]> flux = client.get()
//			.uri("/?source=1&format=json")
//			.retrieve()
//			.bodyToMono(TrackerStats[].class);

}
