package com.skilldistillery.edgemarketing.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skilldistillery.edgemarketing.entities.Client;

public interface ClientRepo extends JpaRepository<Client, Integer> {

}
