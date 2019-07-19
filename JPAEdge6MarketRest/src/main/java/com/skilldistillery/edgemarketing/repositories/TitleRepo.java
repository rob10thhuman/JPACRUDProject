package com.skilldistillery.edgemarketing.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.skilldistillery.edgemarketing.entities.House;
import com.skilldistillery.edgemarketing.entities.Title;

@Repository
public interface TitleRepo extends JpaRepository<Title, Integer>  {

}
