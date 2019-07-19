package com.skilldistillery.edgemarketing.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "permits")
public class Title {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "permit")
	private String permit; 
	
	@Column(name = "date")
	private String date; 
	
	@Column(name = "contractor")
	private String contractor; 
	
	@Column(name = "cphone")
	private String cphone;
	
	@Column(name = "owner")
	private String ophone;
	
	@Column(name = "pcode")
	private String pcode;
	
	@Column(name = "units")
	private String units; 
	
	@Column(name = "legaldesc")
	private String legalDesc; 
	
	@Column(name = "block")
	private String block;
	
	@Column(name = "subdivision")
	private String subdivision;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "zipcode")
	private String zipcode;
	
	@Column(name = "mainsqft")
	private String mainsqft;
	
	@Column(name = "basementsqft")
	private String basementsqft;

	@Column(name = "garagesqft")
	private String garagesqft;

	@Column(name = "value")
	private String value;

	@Column(name = "plan_number")
	private String planNumber;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPermit() {
		return permit;
	}

	public void setPermit(String permit) {
		this.permit = permit;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getContractor() {
		return contractor;
	}

	public void setContractor(String contractor) {
		this.contractor = contractor;
	}

	public String getCphone() {
		return cphone;
	}

	public void setCphone(String cphone) {
		this.cphone = cphone;
	}

	public String getOphone() {
		return ophone;
	}

	public void setOphone(String ophone) {
		this.ophone = ophone;
	}

	public String getPcode() {
		return pcode;
	}
	
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getUnits() {
		return units;
	}

	public void setUnits(String units) {
		this.units = units;
	}

	public String getLegalDesc() {
		return legalDesc;
	}

	public void setLegalDesc(String legalDesc) {
		this.legalDesc = legalDesc;
	}

	public String getBlock() {
		return block;
	}

	public void setBlock(String block) {
		this.block = block;
	}

	public String getSubdivision() {
		return subdivision;
	}

	public void setSubdivision(String subdivision) {
		this.subdivision = subdivision;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getMainsqft() {
		return mainsqft;
	}

	public void setMainsqft(String mainsqft) {
		this.mainsqft = mainsqft;
	}

	public String getBasementsqft() {
		return basementsqft;
	}

	public void setBasementsqft(String basementsqft) {
		this.basementsqft = basementsqft;
	}

	public String getGaragesqft() {
		return garagesqft;
	}

	public void setGaragesqft(String garagesqft) {
		this.garagesqft = garagesqft;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getPlanNumber() {
		return planNumber;
	}

	public void setPlanNumber(String planNumber) {
		this.planNumber = planNumber;
	}

	public Title() {
		
	}

	public Title(int id, String permit, String date, String contractor, String cphone, String ophone, String pcode,
			String units, String legalDesc, String block, String subdivision, String address, String zipcode,
			String mainsqft, String basementsqft, String garagesqft, String value, String planNumber) {
		super();
		this.id = id;
		this.permit = permit;
		this.date = date;
		this.contractor = contractor;
		this.cphone = cphone;
		this.ophone = ophone;
		this.pcode = pcode;
		this.units = units;
		this.legalDesc = legalDesc;
		this.block = block;
		this.subdivision = subdivision;
		this.address = address;
		this.zipcode = zipcode;
		this.mainsqft = mainsqft;
		this.basementsqft = basementsqft;
		this.garagesqft = garagesqft;
		this.value = value;
		this.planNumber = planNumber;
	}

	@Override
	public String toString() {
		return "Title [id=" + id + ", permit=" + permit + ", date=" + date + ", contractor=" + contractor + ", cphone="
				+ cphone + ", ophone=" + ophone + ", pcode=" + pcode + ", units=" + units + ", legalDesc=" + legalDesc
				+ ", block=" + block + ", subdivision=" + subdivision + ", address=" + address + ", zipcode=" + zipcode
				+ ", mainsqft=" + mainsqft + ", basementsqft=" + basementsqft + ", garagesqft=" + garagesqft
				+ ", value=" + value + ", planNumber=" + planNumber + "]";
	}
	
	
}
