package com.covid.rest.controller;

import java.net.URI;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.covid.rest.entity.Statistic;
import com.covid.rest.service.StatisticRepository;

@RestController
public class StatisticController {
	
	@Autowired
	private StatisticRepository statisticRepository;
	
	@GetMapping(path = "/stats/confirmed")
	public int getWorldConfirmed() {
		return statisticRepository.getSumConfirmed();
	}
	
	@GetMapping(path = "/stats/deaths")
	public int getWorldDeaths() {
		return statisticRepository.getSumDeaths();
	}
	
	@GetMapping(path = "/stats/confirmed/ratio/{country}")
	public double getConfirmedRatiobyCountry(@PathVariable String country) {
		double countrySum = statisticRepository.getSumConfirmedbyCountry(country); 
		double totalSum = statisticRepository.getSumConfirmed();
		
		return (countrySum / totalSum);
	}
	
	@GetMapping(path = "/stats/deaths/ratio/{country}")
	public double getDeathsRatiobyCountry(@PathVariable String country) {
		double countrySum = statisticRepository.getSumDeathsbyCountry(country); 
		double totalSum = statisticRepository.getSumDeaths();
		
		return (countrySum / totalSum);
	}
	
	@GetMapping(path = "/stats/confirmed/no-china")
	public int getWorldConfirmedExcludingChina() {
		return statisticRepository.getSumConfirmed() - statisticRepository.getSumConfirmedbyCountry("China");
	}
	
	@GetMapping(path = "/stats/deaths/no-china")
	public int getWorldDeathsExcludingChina() {
		return statisticRepository.getSumDeaths() - statisticRepository.getSumDeathsbyCountry("China");
	}
	
	@GetMapping(path = "/stats/confirmed/canada/smallest")
	public List<Statistic> retrieveSmallestCanadianConfirmed(){
		Integer confirmedValue = statisticRepository.getMinConfirmedByCountry("Canada");
		return statisticRepository.findByConfirmed(confirmedValue, "Canada");
	}
	
	@GetMapping(path = "/stats/confirmed/canada/biggest")
	public List<Statistic> retrieveBiggestCanadianConfirmed(){
		Integer confirmedValue = statisticRepository.getMaxConfirmedByCountry("Canada");
		return statisticRepository.findByConfirmed(confirmedValue, "Canada");
	}
	
	@GetMapping(path = "/stats/deaths/canada/smallest")
	public List<Statistic> retrieveSmallestCanadianDeaths(){
		Integer deathsValue = statisticRepository.getMinDeathsByCountry("Canada");
		return statisticRepository.findByDeaths(deathsValue, "Canada");
	}
	
	@GetMapping(path = "/stats/deaths/canada/biggest")
	public List<Statistic> retrieveBiggestCanadianDeaths(){
		Integer deathsValue = statisticRepository.getMaxDeathsByCountry("Canada");
		return statisticRepository.findByDeaths(deathsValue, "Canada");
	}
	
	@PostMapping(path = "/stats/entry")
	public ResponseEntity<Object> createEntry(@RequestBody Statistic statistic) {
		Statistic savedEntry = statisticRepository.save(statistic);
		
		URI location = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(savedEntry.getId())
				.toUri();
		
		return ResponseEntity.created(location).build();
	}
	
	@PutMapping(path = "/stats/update")
	public void updateEntry(@RequestBody Statistic statistic) {
		
		// Get all the parameters from the response
		String country = statistic.getCountry();
		String province = statistic.getProvince();
		Integer confirmed = statistic.getConfirmed();
		Integer deaths = statistic.getDeaths();
		Double mortalityPer = statistic.getMortalityPer();
		String lastUpdated = statistic.getLastUpdated();
		
		// Check DB to find if response exists
		Statistic statisticInDB = statisticRepository.findByCountryAndProvince(country, province);
		
		// If the entry exists in the DB, update it
		if( statisticInDB == null){
			statisticInDB = Statistic.getInstance();
			statisticInDB.setCountry(country);
			statisticInDB.setCountryCode(statistic.getCountryCode());
			statisticInDB.setProvince(province);
		}

		statisticInDB.setConfirmed(confirmed);
		statisticInDB.setDeaths(deaths);
		statisticInDB.setMortalityPer(mortalityPer);
		statisticInDB.setLastUpdated(lastUpdated);
			
		// Save the newly updated entry
		statisticRepository.save(statisticInDB);
	}

}
