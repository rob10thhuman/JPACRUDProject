package com.skilldistillery.edgemarketing.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class HouseTest {
	private static EntityManagerFactory emf; 
	private EntityManager em; 

	@BeforeAll 
	static void setUpEmf() {
		emf = Persistence.createEntityManagerFactory("EdgeMarketAnalytics");
	}
	
	@AfterAll 
	static void tearDownEmf() {
		emf.close();
	}
	
	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}
	
	@Test 
	void em_returns_house() {
		House house =em.find(House.class, 3070);
		System.out.println("***************************************");
		System.out.println(house);
		
		assertEquals(3070, house.getId());
	}
}
