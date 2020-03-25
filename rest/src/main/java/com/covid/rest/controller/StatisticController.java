package com.covid.rest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.covid.rest.entity.Statistic;
import com.covid.rest.service.StatisticRepository;

@RestController
public class StatisticController {
	
	@Autowired
	private StatisticRepository statisticRepository;
	
	@GetMapping(path = "/stats/confirmed/canada/smallest")
	public List<Statistic> retrieveSmallestCanadianConfirmed(){
		Integer confirmedValue = statisticRepository.getMinConfirmedByCountry("Canada");
		return statisticRepository.findByConfirmedCanada(confirmedValue);
	}
	
	@GetMapping(path = "/stats/confirmed/canada/biggest")
	public List<Statistic> retrieveBiggestCanadianConfirmed(){
		Integer confirmedValue = statisticRepository.getMaxConfirmedByCountry("Canada");
		return statisticRepository.findByConfirmedCanada(confirmedValue);
	}
	
	@GetMapping(path = "/stats/deaths/canada/smallest")
	public List<Statistic> retrieveSmallestCanadianDeaths(){
		Integer deathsValue = statisticRepository.getMinDeathsByCountry("Canada");
		return statisticRepository.findByDeathsCanada(deathsValue);
	}
	
	@GetMapping(path = "/stats/deaths/canada/biggest")
	public List<Statistic> retrieveBiggestCanadianDeaths(){
		Integer deathsValue = statisticRepository.getMaxDeathsByCountry("Canada");
		return statisticRepository.findByDeathsCanada(deathsValue);
	}

}
