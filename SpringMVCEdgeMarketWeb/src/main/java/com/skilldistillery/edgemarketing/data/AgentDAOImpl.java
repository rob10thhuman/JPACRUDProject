package com.skilldistillery.edgemarketing.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.skilldistillery.edgemarketing.entities.Agent;

@Repository
@Transactional
public class AgentDAOImpl implements AgentDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Agent> getAgentByLastName(String lastName) {

		List<Agent> agent = null;

		String jpql = "SELECT a FROM Agent a where lastName = :lastName order by firstName";

		agent = em.createQuery(jpql, Agent.class).setParameter("lastName", lastName).getResultList();

		return agent;
	}

}
