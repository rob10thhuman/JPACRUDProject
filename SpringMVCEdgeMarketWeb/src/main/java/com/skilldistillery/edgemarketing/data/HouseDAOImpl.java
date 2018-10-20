package com.skilldistillery.edgemarketing.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.skilldistillery.edgemarketing.entities.House;

@Repository
@Transactional
public class HouseDAOImpl implements HouseDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public House getHouseById(int id) {
		
		House house = null;
		
		String query = "SELECT h FROM House h where id= :id";

		house = em.createQuery(query, House.class).setParameter("id", id).getSingleResult();
		
		return house;
	}
	
	@Override
	public House getHouseByMLS(String mls) {
		
		House house = null;
		
		String query = "SELECT h FROM House h where mls= :mls";

		house = em.createQuery(query, House.class).setParameter("mls", mls).getSingleResult();
		
		return house;
	}

	@Override
	public String findById(int id) {

		String query = "SELECT h FROM House h where id= :id";

		String results = em.createQuery(query, String.class).setParameter("id", id).getSingleResult();

		return results;

	}

	@Override
	public List<House> findAll() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public House addHouse(House house) {
		
		em.persist(house);
		em.flush();
		
		return house;
	}

	@Override
	public House editHouse(String mls) {
		House house = null;
		String query = "SELECT h FROM House h where mls= :mls";
		house = em.createQuery(query, House.class).setParameter("mls", mls).getSingleResult();		
		
		return house;
	}

	@Override
	public boolean deleteHouse(int id) {
		House house = em.find(House.class, id);
		em.remove(house);
		return true;
	}

	@Override
	public boolean deleteById(int hid) {
		// TODO Auto-generated method stub
		return false;
	}

}
