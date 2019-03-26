package com.skilldistillery.edgemarketing.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;



@Entity
@Table(name="exchange")
public class Exchange {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	@Column(name="e_id")
	private int id; 
		
	@Enumerated(EnumType.STRING)
	private Status status; 
	
	private String address; 
	
	private String closingDate; 
	
//	@OneToOne(mappedBy="title")
//	private Title title;
	
//	@OneToOne(mappedBy="lender")
//	private Lender lender; 
	
//	@OneToMany(mappedBy="agent")
//	private List<Agent> agents;
	
	private String comments; 

}
