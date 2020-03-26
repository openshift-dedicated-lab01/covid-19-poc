package com.covid.batch.proxy;

import java.net.URI;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.env.Environment;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.covid.batch.entity.Statistic;
import com.covid.batch.entity.TrackerStats;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

@SpringBootApplication
public class TrackerProxyApplication {

	private static final Logger log = LoggerFactory.getLogger(TrackerProxyApplication.class);
	private static final String DEFAULT_COVID_INPUT_URL = "https://localhost:8800/?source=1&format=json";
	private static final String DEFAULT_COVID_OUTPUT_URL = "http://localhost:8080/statistic";
	private static final String INPUT_URL_PROPERTY_NAME = "covid.input.url";
	private static final String OUTPUT_URL_PROPERTY_NAME = "covid.output.url";

	@Autowired
	private Environment env;

	public static void main(String[] args) {
		log.debug("Arguments pass to main");
		for (String arg : args) {
			log.debug(arg);
		}
		log.debug("End arguments pass to main");

		SpringApplication.run(TrackerProxyApplication.class, args).close();
	}

	// Quelques exemples @link
	// https://programmerbruce.blogspot.com/2011/05/deserialize-json-with-jackson-into.html
	// https://dzone.com/articles/configuring-a-custom-objectmapper-for-spring-restt
	// https://www.boraji.com/jackson-api-converting-pojos-to-json-example
	// https://www.baeldung.com/rest-template

	@Bean
	public CommandLineRunner run(ApplicationArguments appArgs) throws Exception {
		return args -> {
			// Retreives input url from environment properties. Default provided.
			String covidInputUrl = env.getProperty(INPUT_URL_PROPERTY_NAME, DEFAULT_COVID_INPUT_URL);
			String covidOutputUrl = env.getProperty(OUTPUT_URL_PROPERTY_NAME, DEFAULT_COVID_OUTPUT_URL);

			log.info("Requested covid input provider url : " + covidInputUrl);
			URI uri = new URI(covidInputUrl);
			log.info("Requested covid output url : " + covidOutputUrl);

			try {
				// OjectMapper defines how the rest payload will be converted
				// it this case, the payload is json to be mapped to an object.
				ObjectMapper mapper = new ObjectMapper();
				mapper.enable(SerializationFeature.INDENT_OUTPUT);

//			    mapper.getDeserializationConfig().addMixInAnnotations(
//			    		TrackerStats.class, RemoteStatistic.class);
//				mapper.getSerializationConfig().addMixInAnnotations(
//						TrackerStats.class, Statistic.class);

				MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter();
				converter.setObjectMapper(mapper);

				RestTemplate restTemplate = new RestTemplate();
				restTemplate.getMessageConverters().add(0, converter);
				TrackerStats[] trackerStats = restTemplate.getForObject(uri, TrackerStats[].class);
				log.debug(mapper.writeValueAsString(trackerStats).toString());
				log.debug("Response array size: " + trackerStats.length);

				// Send throught REST resulting object to persistance component Application A
				HttpEntity<Statistic> requestUpdate;
				for (TrackerStats originStats : trackerStats) {
					requestUpdate = new HttpEntity<Statistic>(originStats.toStatistic());
					restTemplate.exchange(covidOutputUrl, HttpMethod.PUT, requestUpdate, Void.class);
				}

			} catch (RestClientException rce) {
				log.error(rce.getMessage());
			}

		};
	}
}
