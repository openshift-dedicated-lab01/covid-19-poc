package com.covid.rest.service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.covid.rest.entity.Statistic;

@Repository
public interface StatisticRepository extends JpaRepository<Statistic, Integer>{

}
