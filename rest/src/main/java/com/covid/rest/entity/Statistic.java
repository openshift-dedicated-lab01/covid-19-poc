package com.covid.rest.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author naultse 
 * Entité de statistiques.
 *
 */

@Entity
public class Statistic {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private Date ts;
	
	@Column(name = "country")
	private String country;
	
	@Column(name = "province")
	private String province;
	
	@Column(name = "country_code")
	private String countryCode;
	
	@Column(name = "confirmed")
	private String confirmed;
	
	@Column(name = "recovered")
	private String recovered;
	
	@Column(name = "deaths")
	private String deaths;
	
//	@Column(name = "confirmed_by_day")
//	private int[] confirmedByDay;
//	
//	@Column(name = "recovered_by_day")
//	private int[] recoveredByDay;
//	
//	@Column(name = "deaths_by_day")
//	private int[] deathsByDay;
	
	@Column(name = "last_updated")
	private String lastUpdated; // 2020-03-20T18:15:45.004949Z
	
	@Column(name = "active")
	private String active;
	
	@Column(name = "mortality_per")
	private String mortalityPer;
	
	@Column(name = "recovered_per")
	private String recoveredPer;

	protected Statistic() {}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Date getTs() {
		return ts;
	}

	public void setTs(Date ts) {
		this.ts = ts;
	}
		
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	public String getConfirmed() {
		return confirmed;
	}

	public void setConfirmed(String confirmed) {
		this.confirmed = confirmed;
	}

	public String getRecovered() {
		return recovered;
	}

	public void setRecovered(String recovered) {
		this.recovered = recovered;
	}

	public String getDeaths() {
		return deaths;
	}

	public void setDeaths(String deaths) {
		this.deaths = deaths;
	}

//	public int[] getConfirmedByDay() {
//		return confirmedByDay;
//	}
//
//	public void setConfirmedByDay(int[] confirmedByDay) {
//		this.confirmedByDay = confirmedByDay;
//	}
//
//	public int[] getRecoveredByDay() {
//		return recoveredByDay;
//	}
//
//	public void setRecoveredByDay(int[] recoveredByDay) {
//		this.recoveredByDay = recoveredByDay;
//	}
//
//	public int[] getDeathsByDay() {
//		return deathsByDay;
//	}
//
//	public void setDeathsByDay(int[] deathsByDay) {
//		this.deathsByDay = deathsByDay;
//	}

	public String getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(String lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getMortalityPer() {
		return mortalityPer;
	}

	public void setMortalityPer(String mortalityPer) {
		this.mortalityPer = mortalityPer;
	}

	public String getRecoveredPer() {
		return recoveredPer;
	}

	public void setRecoveredPer(String recoveredPer) {
		this.recoveredPer = recoveredPer;
	}
}
