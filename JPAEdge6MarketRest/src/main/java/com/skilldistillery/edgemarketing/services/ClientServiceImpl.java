package com.skilldistillery.edgemarketing.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.skilldistillery.edgemarketing.entities.Client;
import com.skilldistillery.edgemarketing.repositories.ClientRepo;

@Service
public class ClientServiceImpl implements ClientService {
	@PersistenceContext
	private EntityManager em;
	
	private ClientRepo cRepo;
	
	public ClientServiceImpl(ClientRepo cRepo) {
		this.cRepo = cRepo;
	}
	
	@Override
	public List<Client> getAll() {
		String qry1 = "SELECT c from Client c";
//		List<Client[]> theClients = new ArrayList<>(); 
		List<Client> theClients = em.createQuery(qry1, Client.class).getResultList(); 
		
//		for (Object[] objects:allClients){
//			Client firstName = objects[0];
//			theClients.add(firstName);
//		}
		return theClients;
	}

	public Client show(Integer id) {
		Optional<Client> opt = cRepo.findById(id);
		Client client = new Client();
		if (opt.isPresent()) {
			client = opt.get();
		}
		return client;
	}
	
	public List<Client> displayAll() {
		List<Client> getList = cRepo.findAll();
//		if (getList!=null) {
//			client = getL;
//		}
		return getList;
		
	}


}
