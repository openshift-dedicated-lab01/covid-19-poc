package com.covid.proxy;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

/**
 * @author naultse Les types de cet objet portent exactement le même nom que les
 *         clés json afin qu'ils soient directement bindés par le template
 *         helper.
 *
 */
// indicates that any properties not bound in this type should be ignored.
@JsonIgnoreProperties(ignoreUnknown = true)
public class TrackerStats {
	private String country; // Canada
	private String province; // Québec
	private String countryCode; // CA
	private String confirmed;
	private String recovered;
	private String deaths;
	private int[] confirmedByDay;
	private int[] recoveredByDay;
	private int[] deathsByDay;
	private String lastUpdated; // 2020-03-20T18:15:45.004949Z
	private String active;
	private String mortalityPer;
	private String recoveredPer;

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

	public int[] getConfirmedByDay() {
		return confirmedByDay;
	}

	public void setConfirmedByDay(int[] confirmedByDay) {
		this.confirmedByDay = confirmedByDay;
	}

	public int[] getRecoveredByDay() {
		return recoveredByDay;
	}

	public void setRecoveredByDay(int[] recoveredByDay) {
		this.recoveredByDay = recoveredByDay;
	}

	public int[] getDeathsByDay() {
		return deathsByDay;
	}

	public void setDeathsByDay(int[] deathsByDay) {
		this.deathsByDay = deathsByDay;
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
