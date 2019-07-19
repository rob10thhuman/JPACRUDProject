package com.skilldistillery.edgemarketing.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.edgemarketing.entities.Client;

@Service
public interface ClientService {

	Client show(Integer id);

	List<Client> getAll();
}
