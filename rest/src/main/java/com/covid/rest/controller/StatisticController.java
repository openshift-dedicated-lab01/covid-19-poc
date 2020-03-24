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

	@GetMapping(path = "/statistics")
	public List<Statistic> retrieveAllStatistics(){
		return statisticRepository.findAll();
	}
}
