package com.skilldistillery.edgemarketing.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skilldistillery.edgemarketing.entities.House;

//@Repository
public interface HouseRepo extends JpaRepository<House, Integer>  {


}
