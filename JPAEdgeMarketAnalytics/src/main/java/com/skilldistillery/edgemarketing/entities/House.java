package com.skilldistillery.edgemarketing.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="house")
public class House {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="mls")
	private String mls; 
	
	private String address;
	private String city; 
	
	@Column(name="zip_code")
	private String zipCode;
	
	private String zoning; 
	
	@Column(name="listagent")
	private String listAgent;
	
	@Column(name="buyersagent")
	private String buyersAgent;
	
	@Column(name="closed_date")
	private String closedDate; 
	
	@Column(name="close_price")
	private Double closedPrice;

	public int getId() {
		return id;
	}

//	public void setId(int id) {
//		this.id = id;
//	}

	public String getMls() {
		return mls;
	}

	public void setMls(String mls) {
		this.mls = mls;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getZoning() {
		return zoning;
	}

	public void setZoning(String zoning) {
		this.zoning = zoning;
	}

	public String getListAgent() {
		return listAgent;
	}

	public void setListAgent(String listAgent) {
		this.listAgent = listAgent;
	}

	public String getBuyersAgent() {
		return buyersAgent;
	}

	public void setBuyersAgent(String buyersAgent) {
		this.buyersAgent = buyersAgent;
	}

	public String getClosedDate() {
		return closedDate;
	}

	public void setClosedDate(String closedDate) {
		this.closedDate = closedDate;
	}

	public Double getClosedPrice() {
		return closedPrice;
	}

	public void setClosedPrice(Double closedPrice) {
		this.closedPrice = closedPrice;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((buyersAgent == null) ? 0 : buyersAgent.hashCode());
		result = prime * result + ((city == null) ? 0 : city.hashCode());
		result = prime * result + ((closedDate == null) ? 0 : closedDate.hashCode());
		result = prime * result + ((closedPrice == null) ? 0 : closedPrice.hashCode());
		result = prime * result + id;
		result = prime * result + ((listAgent == null) ? 0 : listAgent.hashCode());
		result = prime * result + ((mls == null) ? 0 : mls.hashCode());
		result = prime * result + ((zipCode == null) ? 0 : zipCode.hashCode());
		result = prime * result + ((zoning == null) ? 0 : zoning.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		House other = (House) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (buyersAgent == null) {
			if (other.buyersAgent != null)
				return false;
		} else if (!buyersAgent.equals(other.buyersAgent))
			return false;
		if (city == null) {
			if (other.city != null)
				return false;
		} else if (!city.equals(other.city))
			return false;
		if (closedDate == null) {
			if (other.closedDate != null)
				return false;
		} else if (!closedDate.equals(other.closedDate))
			return false;
		if (closedPrice == null) {
			if (other.closedPrice != null)
				return false;
		} else if (!closedPrice.equals(other.closedPrice))
			return false;
		if (id != other.id)
			return false;
		if (listAgent == null) {
			if (other.listAgent != null)
				return false;
		} else if (!listAgent.equals(other.listAgent))
			return false;
		if (mls == null) {
			if (other.mls != null)
				return false;
		} else if (!mls.equals(other.mls))
			return false;
		if (zipCode == null) {
			if (other.zipCode != null)
				return false;
		} else if (!zipCode.equals(other.zipCode))
			return false;
		if (zoning == null) {
			if (other.zoning != null)
				return false;
		} else if (!zoning.equals(other.zoning))
			return false;
		return true;
	}

	public House(int id, String mls, String address, String city, String zipCode, String zoning, String listAgent,
			String buyersAgent, String closedDate, Double closedPrice) {
		super();
		this.id = id;
		this.mls = mls;
		this.address = address;
		this.city = city;
		this.zipCode = zipCode;
		this.zoning = zoning;
		this.listAgent = listAgent;
		this.buyersAgent = buyersAgent;
		this.closedDate = closedDate;
		this.closedPrice = closedPrice;
	}
	
	
	public House () {
		
	}
	
}
