package com.skilldistillery.edgemarketing.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
	public House updateHouse(int id, House updatedHouse) {

		House house = em.find(House.class, id);

		house.setAddress(updatedHouse.getAddress());

		return house;
	}

	public Double getAvgPrice() {
		Double stat = null;
		String sql = "select avg(h.closedPrice)from House h";
		stat = em.createQuery(sql, Double.class).getSingleResult();

		return stat;

	}

	public Double getAvgPriceYTD() {
		Double stat = null;
		String sql = "select avg(h.closedPrice)from House h where h.closedDate>=\'2018-01-01\'";
		stat = em.createQuery(sql, Double.class).getSingleResult();
		return stat;
	}

	public List<Object[]> getAvgPriceYTDStats() throws SQLException {

		String qry = "select avg(h.closedPrice) as closedAvg, avg(h.soldConcessions) as concessionsAvg from House h where h.closedDate>=\'2018-01-01\'";

		List<Object[]> stats = em.createQuery(qry, Object[].class).getResultList();
		for (Object[] objects : stats) {
			System.out.println(objects[0] + " - " + objects[1]);
		}

		System.out.println("*************************************");
		System.out.println(stats);
		return stats;
	}

	@Override
	public List<Object[]> getAgentAvgPriceYTDStats(String NRDS) {

		String sql = "select sum(h.closedPrice) as closedSum, sum(h.soldConcessions) as concessionsSum from House h where h.closedDate>=\'2018-01-01\' and h.buyersAgent= :NRDS or h.listAgent= :NRDS";

		List<Object[]> stats = em.createQuery(sql, Object[].class).setParameter("NRDS", NRDS).getResultList();
		for (Object[] objects : stats) {
			System.out.println(objects[0]);
			System.out.println(objects[1]);
		}

		return stats;
	}

	@Override
	public List<Object[]> getBrokerageDeals(String brokerage) {

		String sql = "select sum(h.closedPrice) as closedSum, sum(h.soldConcessions) as sumConcessions from House h where h.closedDate>=\'2018-01-01\' and h.listoffice = :brokerage or h.selloffice = :brokerage";
//		String sql = "select avg(h.closedPrice) as closedAvg, avg(h.soldConcessions) as concessionsAvg from House h where h.closedDate>=\'2018-01-01\'";

		List<Object[]> stats = em.createQuery(sql, Object[].class).setParameter("brokerage", brokerage).getResultList();
		for (Object[] objects : stats) {
			System.out.println(objects[0]);
			System.out.println(objects[1]);
		}

		return stats;
	}

	@Override
	public boolean deleteHouse(int id) {
		House house = em.find(House.class, id);
		em.remove(house);
		return true;
	}

	@Override
	public List<Object[]> getHomesInDateRangeAsHyperlinks(String closedDate) {
		// returns list of homes sold after specified date

		String sql = "select h from House h where h.closedDate>= :closedDate";
		List<Object[]> houses = em.createQuery(sql, Object[].class).setParameter("closedDate", closedDate)
				.getResultList();

		return houses;
	}

	@Override
	public List<Object[]> getBrokerageListRankingYTD(String startDate, String endDate) {
		// returns list of homes sold and sum sales by brokerage

		String sql = "select h.listoffice, count(h) as sales from House h where closedDate>= :startDate and closedDate<= :endDate group by h.listoffice order by sales desc";
		List<Object[]> stats = em.createQuery(sql, Object[].class).setParameter("startDate", startDate)
				.setParameter("endDate", endDate).getResultList();
//		for (Object[] objects : stats) {
//            System.out.println(objects[0]);
//            System.out.println(objects[1]);
//        }

		return stats;
	}

	@Override
	public List<Object[]> getZipYearToDate(String zipCode) {

		String qry = "select avg(h.closedPrice) as avgClosed, avg(h.dom) as avgDom from House h where h.zipCode= :zipCode and closedDate>=\'2018-01-01\'";

		List<Object[]> stats = em.createQuery(qry, Object[].class).setParameter("zipCode", zipCode).getResultList();
		for (Object[] objects : stats) {
			System.out.println(objects[0] + " - " + objects[1]);
		}

		System.out.println("*************************************");
		System.out.println(stats);
		return stats;
	}
	
	@Override
	public List<Object[]> getHotAreasReport(String startDate, String endDate) {
		// returns list of homes sold and sum sales by brokerage

		String sql = "select h.area, count(h) as areas, avg(closedPrice), avg(listPrice), avg(closedPrice)/avg(listPrice)*100, avg(dom) from House h where closedDate>= :startDate and closedDate<= :endDate group by h.area order by areas desc";
		List<Object[]> stats = em.createQuery(sql, Object[].class).setParameter("startDate", startDate)
				.setParameter("endDate", endDate).getResultList();
//		for (Object[] objects : stats) {
//            System.out.println(objects[0]);
//            System.out.println(objects[1]);
//        }

		return stats;
	}
	
//	String sql = "select h.area, count(h) as sales from House h where closedDate>= :startDate and closedDate<= :endDate group by h.listoffice order by sales desc";


}
