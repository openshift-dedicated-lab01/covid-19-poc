package com.covid.rest.entity;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.UpdateTimestamp;

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

	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "ts")
    private Date ts;
	
	@Column(name = "country")
	private String country;
	
	@Column(name = "province")
	private String province;
	
	@Column(name = "country_code")
	private String countryCode;
	
	@Column(name = "confirmed")
	private Integer confirmed;
	
	@Column(name = "recovered")
	private Integer recovered;
	
	@Column(name = "deaths")
	private Integer deaths;
	
	@Column(name = "last_updated")
	private String lastUpdated;
	
	@Column(name = "active")
	private Integer active;
	
	@Column(name = "mortality_per")
	private Integer mortalityPer;
	
	@Column(name = "recovered_per")
	private Integer recoveredPer;

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

	public Integer getConfirmed() {
		return confirmed;
	}

	public void setConfirmed(Integer confirmed) {
		this.confirmed = confirmed;
	}

	public Integer getRecovered() {
		return recovered;
	}

	public void setRecovered(Integer recovered) {
		this.recovered = recovered;
	}

	public Integer getDeaths() {
		return deaths;
	}

	public void setDeaths(Integer deaths) {
		this.deaths = deaths;
	}

	public String getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(String lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public Integer getActive() {
		return active;
	}

	public void setActive(Integer active) {
		this.active = active;
	}

	public Integer getMortalityPer() {
		return mortalityPer;
	}

	public void setMortalityPer(Integer mortalityPer) {
		this.mortalityPer = mortalityPer;
	}

	public Integer getRecoveredPer() {
		return recoveredPer;
	}

	public void setRecoveredPer(Integer recoveredPer) {
		this.recoveredPer = recoveredPer;
	}
}
