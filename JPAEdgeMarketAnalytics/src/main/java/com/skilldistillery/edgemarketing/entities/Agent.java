package com.skilldistillery.edgemarketing.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="agent")
public class Agent {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id; 
	
	private String nrds; 
	
	@Column(name = "first_name")
	private String firstName; 
	
	@Column(name = "last_name")
	private String lastName; 

	@Column(name = "office_name")
	private String officeName;

	@Column(name = "office_id")
	private String officeId;
	
	private String phone;

	private String email;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNrds() {
		return nrds;
	}

	public void setNrds(String nrds) {
		this.nrds = nrds;
	}

	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getOfficeName() {
		return officeName;
	}

	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}

	public String getOfficeId() {
		return officeId;
	}

	public void setOfficeId(String officeId) {
		this.officeId = officeId;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	

	public Agent() { 
		
	}

	@Override
	public String toString() {
		return "Agent [id=" + id + ", nrds=" + nrds + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", officeName=" + officeName + ", officeId=" + officeId + ", phone=" + phone + ", email=" + email
				+ "]";
	}

	public Agent(int id, String nrds, String firstName, String lastName, String officeName, String officeId,
			String phone, String email) {
		super();
		this.id = id;
		this.nrds = nrds;
		this.firstName = firstName;
		this.lastName = lastName;
		this.officeName = officeName;
		this.officeId = officeId;
		this.phone = phone;
		this.email = email;
	}
	
	
}
