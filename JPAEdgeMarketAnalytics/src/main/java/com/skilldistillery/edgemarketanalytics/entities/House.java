package com.skilldistillery.edgemarketanalytics.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class House {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id; 
	private int mls; 
	private String address; 
	

}
