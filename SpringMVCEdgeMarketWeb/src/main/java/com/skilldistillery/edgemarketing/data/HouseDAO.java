package com.skilldistillery.edgemarketing.data;

import java.util.List;

import com.skilldistillery.edgemarketanalytics.entities.House;

public interface HouseDAO {
	House findById(int id); 
	List<House> findAll();
	House add(House h); 
	House update(House h); 
	boolean delete (House h); 
	boolean deleteById(int hid); 

}
