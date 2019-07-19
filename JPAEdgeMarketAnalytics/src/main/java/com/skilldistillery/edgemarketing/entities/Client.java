package com.skilldistillery.edgemarketing.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "clients")
public class Client {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "client_id")
	private int id;
	
	@Column(name = "first_name")
	private String firstName; 
	
	@Column(name = "last_name")
	private String lastName; 
	
	@Column(name = "agent")
	private String agent;
	
	@Column(name ="phone")
	private String phone;
	
//	@Column(name = "comments")
//	private String comments;
	
//	@JsonIgnore
	@OneToMany(mappedBy="client")
	private List<Comment> comments;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getAgent() {
		return agent;
	}

	public void setAgent(String agent) {
		this.agent = agent;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

//	@JsonIgnore
	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Client [id=").append(id).append(", firstName=").append(firstName)
		.append(", lastName=").append(lastName).append(", agent=").append(agent)
		.append(", phone=").append(phone).append(", comments=").append(comments)
		.append("]");
		return builder.toString();
	}

	public Client(int id, String firstName, String lastName, String agent, String phone, List<Comment> comments) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.agent = agent;
		this.phone = phone;
		this.comments = comments;
	}
	
	public Client() {
		
	}

	

}
