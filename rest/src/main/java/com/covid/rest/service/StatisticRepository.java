package com.covid.rest.service;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.covid.rest.entity.Statistic;

@Repository
public interface StatisticRepository extends JpaRepository<Statistic, Integer>{
	
	@Query("SELECT MIN(confirmed) FROM Statistic WHERE country = ?1")
    Integer getMinConfirmedByCountry(String country);
	
	@Query("SELECT MAX(confirmed) FROM Statistic WHERE country = ?1")
	Integer getMaxConfirmedByCountry(String country);
	
	@Query("SELECT MIN(deaths) FROM Statistic WHERE country = ?1")
    Integer getMinDeathsByCountry(String country);
	
	@Query("SELECT MAX(deaths) FROM Statistic WHERE country = ?1")
	Integer getMaxDeathsByCountry(String country);
	
	@Query("SELECT u FROM Statistic u WHERE u.confirmed = ?1 AND u.country = ?2")
	List<Statistic> findByConfirmed(Integer confirmed, String country);
	
	@Query("SELECT u FROM Statistic u WHERE u.deaths = ?1 AND u.country = ?2")
	List<Statistic> findByDeaths(Integer deaths, String country);
	
	@Query("SELECT SUM(confirmed) FROM Statistic")
	int getSumConfirmed();
	
	@Query("SELECT SUM(deaths) FROM Statistic")
	int getSumDeaths();
	
	@Query("SELECT SUM(confirmed) FROM Statistic WHERE Country = ?1")
	int getSumConfirmedbyCountry(String country);
	
	@Query("SELECT SUM(deaths) FROM Statistic WHERE Country = ?1")
	int getSumDeathsbyCountry(String country);

	@Query("SELECT u FROM Statistic u WHERE u.country = ?1 AND u.province = ?2")
	Statistic findByCountryAndProvince(String country, String province);
}
