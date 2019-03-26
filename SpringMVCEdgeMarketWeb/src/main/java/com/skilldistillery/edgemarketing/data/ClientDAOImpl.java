package com.skilldistillery.edgemarketing.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.skilldistillery.edgemarketing.entities.Client;

@Repository
@Transactional
public class ClientDAOImpl implements ClientDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Client getClientByLastName(String lastName) {

		Client client = null;

		String jpql = "SELECT c FROM Client c where lastName = :lastName";

		client = em.createQuery(jpql, Client.class).setParameter("lastName", lastName).getSingleResult();

		return client;
	}

}
