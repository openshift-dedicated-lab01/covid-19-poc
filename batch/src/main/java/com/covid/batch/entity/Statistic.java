package com.covid.batch.entity;

import java.util.Date;

/**
 * @author naultse 
 * Entité de statistiques.
 *
 */
public class Statistic {

	private long id;
    private Date ts;
	private String country;
	private String province;
	private String countryCode;
	private String confirmed;
	private String recovered;
	private String deaths;
	private String lastUpdated; // 2020-03-20T18:15:45.004949Z
	private String active;
	private String mortalityPer;
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
