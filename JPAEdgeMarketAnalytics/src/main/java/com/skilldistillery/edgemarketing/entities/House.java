package com.skilldistillery.edgemarketing.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author robthompson
 *
 */
@Entity
@Table(name = "house")
public class House {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	@Column(name = "mls")
	private String mls;

	private String address;

	private String city;

	@Column(name = "zip_code")
	private String zipCode;

	private String zoning;

	@Column(name = "listagent")
	private String listAgent;

	@Column(name = "buyersagent")
	private String buyersAgent;

	@Column(name = "closed_date")
	private String closedDate;

	@Column(name = "close_price")
	private Double closedPrice;

	@Column(name = "sold_concessions")
	private Double soldConcessions;
	
	@Column(name = "total_sf")
	private Double totalSf; 
	
	@Column(name = "finished_sf")
	private Double finishedSf; 
	
	@Column(name = "sp_sf")
	private Double salePriceSf;
	
	private String listoffice;

	private String selloffice;
	
	private String area; 
	
	@Column(name = "subarea")
	private String subArea; 

	@Column(name = "school_district")
	private String schoolDistrict; 
	
	@Column(name="terms_sale")
	private String termsSale; 

	private int dom;

	@Column(name = "list_price")
	private String listPrice;
	
	@Column(name= "property_type")
	private String propertyType; 
	
	@Column(name="bedrooms")
	private Integer bedrooms; 
	
	

	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


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


	public Double getSoldConcessions() {
		return soldConcessions;
	}


	public void setSoldConcessions(Double soldConcessions) {
		this.soldConcessions = soldConcessions;
	}


	public Double getTotalSf() {
		return totalSf;
	}


	public void setTotalSf(Double totalSf) {
		this.totalSf = totalSf;
	}


	public Double getFinishedSf() {
		return finishedSf;
	}


	public void setFinishedSf(Double finishedSf) {
		this.finishedSf = finishedSf;
	}


	public Double getSalePriceSf() {
		return salePriceSf;
	}


	public void setSalePriceSf(Double salePriceSf) {
		this.salePriceSf = salePriceSf;
	}


	public String getListoffice() {
		return listoffice;
	}


	public void setListoffice(String listoffice) {
		this.listoffice = listoffice;
	}


	public String getSelloffice() {
		return selloffice;
	}


	public void setSelloffice(String selloffice) {
		this.selloffice = selloffice;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getSubArea() {
		return subArea;
	}


	public void setSubArea(String subArea) {
		this.subArea = subArea;
	}


	public String getSchoolDistrict() {
		return schoolDistrict;
	}


	public void setSchoolDistrict(String schoolDistrict) {
		this.schoolDistrict = schoolDistrict;
	}


	public String getTermsSale() {
		return termsSale;
	}


	public void setTermsSale(String termsSale) {
		this.termsSale = termsSale;
	}


	public int getDom() {
		return dom;
	}


	public void setDom(int dom) {
		this.dom = dom;
	}


	public String getListPrice() {
		return listPrice;
	}


	public void setListPrice(String listPrice) {
		this.listPrice = listPrice;
	}


	public String getPropertyType() {
		return propertyType;
	}


	public void setPropertyType(String propertyType) {
		this.propertyType = propertyType;
	}


	public Integer getBedrooms() {
		return bedrooms;
	}


	public void setBedrooms(Integer bedrooms) {
		this.bedrooms = bedrooms;
	}


	public House () {
		
	}


	public House(int id, String mls, String address, String city, String zipCode, String zoning, String listAgent,
			String buyersAgent, String closedDate, Double closedPrice, Double soldConcessions, String listoffice,
			String selloffice, String area, String subArea, String schoolDistrict, String termsSale, int dom,
			String listPrice, String propertyType, Integer bedrooms, Double totalSf, Double finishedSf, Double salePriceSf) {
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
		this.soldConcessions = soldConcessions;
		this.listoffice = listoffice;
		this.selloffice = selloffice;
		this.area = area;
		this.subArea = subArea;
		this.schoolDistrict = schoolDistrict;
		this.termsSale = termsSale;
		this.dom = dom;
		this.listPrice = listPrice;
		this.propertyType = propertyType;
		this.bedrooms = bedrooms;
		this.totalSf = totalSf;
		this.finishedSf = finishedSf; 
		this.salePriceSf = salePriceSf;
	}



	@Override
	public String toString() {
		return "House [id=" + id + ", mls=" + mls + ", address=" + address + ", city=" + city + ", zipCode=" + zipCode
				+ ", zoning=" + zoning + ", listAgent=" + listAgent + ", buyersAgent=" + buyersAgent + ", closedDate="
				+ closedDate + ", closedPrice=" + closedPrice + ", soldConcessions=" + soldConcessions + ", listoffice="
				+ listoffice + ", selloffice=" + selloffice + ", area=" + area + ", subArea=" + subArea
				+ ", schoolDistrict=" + schoolDistrict + ", termsSale=" + termsSale + ", dom=" + dom + ", listPrice="
				+ listPrice + ", propertyType=" + propertyType + ", bedrooms=" + bedrooms + "]";
	}



	
	

	

}
