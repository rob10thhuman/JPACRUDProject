package com.skilldistillery.edgemarketing.data;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

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
		house.setCity(updatedHouse.getCity());
		house.setZipCode(updatedHouse.getZipCode());
		house.setListAgent(updatedHouse.getListAgent());
		house.setBuyersAgent(updatedHouse.getBuyersAgent());
		house.setClosedDate(updatedHouse.getClosedDate());
		house.setClosedPrice(updatedHouse.getClosedPrice());

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
		String sql = "select round(avg(h.closedPrice),2) from House h where h.closedDate>=\'2019-01-01\'";
		stat = em.createQuery(sql, Double.class).getSingleResult();
		return stat;
	}

	public List<ClosedAndConcessionsAvg> getAvgPriceYTDStats() throws SQLException {

		String qry = "select round(avg(h.closedPrice),2) as closedAvg, round(avg(h.soldConcessions),2) as concessionsAvg, round(avg(h.dom),2) as avgDom from House h where h.closedDate>=\'2019-01-01\'";

		List<Object[]> stats = em.createQuery(qry, Object[].class).getResultList();
		
		List<ClosedAndConcessionsAvg> results = new ArrayList<>(); 

		for (Object[] objects : stats) {
			
			Double closedAvg = (Double)objects[0];
			Double concessionsAvg = (Double)objects[1];
			Double avgDom = (Double)objects[2];
			
			results.add(new ClosedAndConcessionsAvg(closedAvg, concessionsAvg, avgDom)); 
		}
		
		return results;
	}

	@Override
	public LinkedHashSet<Object[]> getAgentAvgPriceYTDStats(String NRDS) {

		String sql = "select round(sum(h.closedPrice),2), round(sum(h.soldConcessions),2) from House h where (h.listAgent= :NRDS or h.buyersAgent= :NRDS ) and h.closedDate>=\'2019-01-01\' ";
		String jpql = "select round(avg(h.closedPrice),2), round(avg(h.soldConcessions),2) from House h where (h.listAgent= :NRDS or h.buyersAgent= :NRDS ) and h.closedDate>=\'2019-01-01\' ";
		String jpql2 = "select round(avg(h.closedPrice),2), round(avg(h.soldConcessions),2) from House h where (h.listAgent= :NRDS) and h.closedDate>=\'2019-01-01\' ";
		String jpql3 = "select round(avg(h.closedPrice),2), round(avg(h.soldConcessions),2) from House h where (h.buyersAgent= :NRDS) and h.closedDate>=\'2019-01-01\' ";
		String sql1 = "select round(avg(h.closedPrice),2), round(avg(h.soldConcessions),2) from House h where h.closedDate>=\'2019-01-01\' ";

		List<Object[]> stats = em.createQuery(sql, Object[].class).setParameter("NRDS", NRDS).getResultList();
		List<Object[]> stats2 = em.createQuery(jpql, Object[].class).setParameter("NRDS", NRDS).getResultList();
		List<Object[]> stats3 = em.createQuery(jpql2, Object[].class).setParameter("NRDS", NRDS).getResultList();
		List<Object[]> stats4 = em.createQuery(jpql3, Object[].class).setParameter("NRDS", NRDS).getResultList();
		List<Object[]> stats1 = em.createQuery(sql1, Object[].class).getResultList();
		
		
		for (Object[] objects : stats) {
			System.out.println(objects[0]);
			System.out.println(objects[1]);
		}
		
		LinkedHashSet<Object[]> result = new LinkedHashSet<Object[]>();
		
		result.addAll(stats);
		result.addAll(stats2);
		result.addAll(stats3);
		result.addAll(stats4);
		result.addAll(stats1);
		
		return result;
	}
	
	@Override
	public List<Object[]> getTopBAs() {

//		String sql = "select count(h.closedPrice), sum(h.closedPrice), h.buyersAgent from House h where h.closedDate>=\'2018-01-01\' group by h.buyersAgent";
//		String sql = "select count(h.closedPrice) AS countSales, sum(h.closedPrice), h.buyersAgent from House h where h.closedDate>=\'2018-01-01\' group by h.buyersAgent order by countSales desc";
		String sql = "select count(h.closedPrice) as countSales, sum(h.closedPrice), h.buyersAgent, a.firstName, a.lastName, a.officeName, a.phone, a.email from House h join Agent a on a.nrds = h.buyersAgent  where h.closedDate>='2019-01-01' group by h.buyersAgent, a.firstName, a.lastName, a.officeName, a.phone, a.email  order by countSales desc";
//		select count(close_price) as count, sum(close_price), buyersagent from house where closed_date>='2018-01-01'  group by buyersagent order by count desc limit 11;
//		sql.setMaxResults(10);
		
		
		List<Object[]> stats = em.createQuery(sql, Object[].class).getResultList();
		for (Object[] objects : stats) {
			System.out.println(objects[0]);
			System.out.println(objects[1]);
			System.out.println(objects[2]);
		}

		return stats;
	}
	
	@Override
	public List<Object[]> getTopLAs() {

//		String sql = "select count(h.closedPrice), sum(h.closedPrice), h.buyersAgent from House h where h.closedDate>=\'2018-01-01\' group by h.buyersAgent";
		String sql = "select count(h.closedPrice) AS countSales, sum(h.closedPrice), h.listAgent from House h where h.closedDate>=\'2019-01-01\' group by h.listAgent order by countSales desc";
//		select count(close_price) as count, sum(close_price), listagent from house where closed_date>='2018-01-01'  group by listagent order by count desc limit 11;
//		sql.setMaxResults(10);
		
		
		List<Object[]> stats = em.createQuery(sql, Object[].class).getResultList();
		for (Object[] objects : stats) {
			System.out.println(objects[0]);
			System.out.println(objects[1]);
			System.out.println(objects[2]);
		}

		return stats;
	}
	
	@Override
	public LinkedHashSet<Object[]> getQuarterlyReport() {
		
		String jpql = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2017-01-01' and h.closedDate<='2017-03-31'";
		String jpql2 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2017-04-01' and h.closedDate<='2017-06-30'";
		String jpql3 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2017-07-01' and h.closedDate<='2017-09-30'";
		String jpql4 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2017-10-01' and h.closedDate<='2017-12-31'";
		
		String sql = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-01-01' and h.closedDate<='2018-03-31'";
		String sql1 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-04-01' and h.closedDate<='2018-06-30'";
		String sql2 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-07-01' and h.closedDate<='2018-09-30'";
		String sql3 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-10-01' and h.closedDate<='2018-12-31'";
		
		List<Object[]> jpql5 = em.createQuery(jpql, Object[].class).getResultList();
		List<Object[]> jpql6 = em.createQuery(jpql2, Object[].class).getResultList();
		List<Object[]> jpql7 = em.createQuery(jpql3, Object[].class).getResultList();
		List<Object[]> jpql8 = em.createQuery(jpql4, Object[].class).getResultList();

		List<Object[]> stats = em.createQuery(sql, Object[].class).getResultList();
		List<Object[]> stats1 = em.createQuery(sql1, Object[].class).getResultList();
		List<Object[]> stats2 = em.createQuery(sql2, Object[].class).getResultList();
		List<Object[]> stats3 = em.createQuery(sql3, Object[].class).getResultList();
		
		LinkedHashSet<Object[]> result = new LinkedHashSet<Object[]>();
		
		result.addAll(jpql5);
		result.addAll(jpql6);
		result.addAll(jpql7);
		result.addAll(jpql8);
		
		
		result.addAll(stats);
		result.addAll(stats1);
		result.addAll(stats2);
		result.addAll(stats3);
		
		return result;

	}
	
	@Override
	public LinkedHashSet<Object[]> getAreaQuarterlyReport() {
		
//		String sql = "select area, count(h), avg(h.closedPrice),avg(h.dom),avg(h.soldConcessions) from House h where h.closedDate>='2018-01-01' and h.closedDate<='2018-03-31' group by area";
//		String sql1 = "select area, count(h), avg(h.closedPrice),avg(h.dom),avg(h.soldConcessions) from House h where h.closedDate>='2018-04-01' and h.closedDate<='2018-06-30' group by area";
//		String sql2 = "select area, count(h), avg(h.closedPrice),avg(h.dom),avg(h.soldConcessions) from House h where h.closedDate>='2018-07-01' and h.closedDate<='2018-09-30' group by area";
		String sql3 = "select area, count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2019-01-01' and h.closedDate<='2019-03-31' group by area order by count(h) desc";
		
//		List<Object[]> stats = em.createQuery(sql, Object[].class).getResultList();
//		List<Object[]> stats1 = em.createQuery(sql1, Object[].class).getResultList();
//		List<Object[]> stats2 = em.createQuery(sql2, Object[].class).getResultList();
		List<Object[]> stats3 = em.createQuery(sql3, Object[].class).getResultList();
		
		LinkedHashSet<Object[]> result = new LinkedHashSet<Object[]>();
//		result.addAll(stats);
//		result.addAll(stats1);
//		result.addAll(stats2);
		result.addAll(stats3);
		
		return result;

	}
	
	@Override
	public LinkedHashSet<Object[]> get300PriceReportYTD() {
		
		String sql = "select count(h), round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-01-01' and h.closedDate<='2018-03-31' and closedPrice<='300000' ";
		String sql1 = "select count(h), round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-04-01' and h.closedDate<='2018-06-30' and closedPrice<='300000' ";
		String sql2 = "select  count(h), round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-07-01' and h.closedDate<='2018-09-30' and closedPrice<='300000' ";
		String sql3 = "select  count(h), round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-10-01' and h.closedDate<='2018-12-31' and closedPrice<='300000' ";
		
		List<Object[]> stats = em.createQuery(sql, Object[].class).getResultList();
		List<Object[]> stats1 = em.createQuery(sql1, Object[].class).getResultList();
		List<Object[]> stats2 = em.createQuery(sql2, Object[].class).getResultList();
		List<Object[]> stats3 = em.createQuery(sql3, Object[].class).getResultList();
		
		LinkedHashSet<Object[]> result = new LinkedHashSet<Object[]>();
		result.addAll(stats);
		result.addAll(stats1);
		result.addAll(stats2);
		result.addAll(stats3);
		
		return result;

	}


	@Override
	public List<Object[]> getBrokerageDeals(String brokerage) {

		String sql = "select sum(h.closedPrice) as closedSum, sum(h.soldConcessions) as sumConcessions from House h where (h.listoffice = :brokerage or h.selloffice = :brokerage) and h.closedDate>=\'2019-01-01\'";
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
	public List<Object[]> getZipYearToDate(String zipCode) {

		String qry = "select count(h), round(avg(h.closedPrice),2) as avgClosed, round(avg(listPrice),2), round(avg(h.dom),2) as avgDom, avg(closedPrice)/avg(listPrice)*100 from House h where h.zipCode= :zipCode and closedDate>=\'2019-01-01\'";

		List<Object[]> stats = em.createQuery(qry, Object[].class).setParameter("zipCode", zipCode).getResultList();
		for (Object[] objects : stats) {
			System.out.println(objects[0] + " - " + objects[1]);
		}

		System.out.println("*************************************");
		System.out.println(stats);
		
		return stats;
	}
	
	@Override
	public List<Object[]> getZipReport() {

		String qry = "select h.zipCode, count(h) as countSales, round(avg(h.closedPrice),2), round(avg(h.listPrice),2), round(avg(h.dom),2), round(avg(h.closedPrice)/avg(h.listPrice)*100,2)  from House h where h.closedDate>=\'2019-01-01\' group by h.zipCode order by countSales desc";
//		String sql = "select count(h.closedPrice) AS countSales, sum(h.closedPrice), h.buyersAgent from House h where h.closedDate>=\'2018-01-01\' group by h.buyersAgent order by countSales desc";
		//		select zip_code, count(*) count, avg(close_price) as avgC, avg(list_price), avg(dom), avg(close_price)/avg(list_price)*100 from house where closed_date>='2018-01-01' group by zip_code order by count desc;
		List<Object[]> zipStats = em.createQuery(qry, Object[].class).getResultList();
		for (Object[] objects : zipStats) {
			System.out.println(objects[0] + " - " + objects[1]);
		}

		System.out.println("*************************************");
		System.out.println(zipStats);
		
		return zipStats;
	}
	
	@Override
	public List<Object[]> getBrokerageListRankingYTD(String startDate, String endDate) {
		// returns list of homes sold and sum sales by brokerage
		
		String sql = "select h.listoffice, count(h) as sales from House h where closedDate>= :startDate and closedDate<= :endDate group by h.listoffice order by sales desc";
		
		List<Object[]> stats = em.createQuery(sql, Object[].class).setParameter("startDate", startDate)
				.setParameter("endDate", endDate).getResultList();
		for (Object[] objects : stats) {
            System.out.println(objects[0]);
            System.out.println(objects[1]);
        }
		
		return stats;
	}
	
	@Override
	public List<Object[]> getBrokerageSellRankingYTD(String startDate, String endDate) {
		// returns list of homes sold and sum sales by brokerage
		
		String sql = "select h.selloffice, count(h) as sales from House h where closedDate>= :startDate and closedDate<= :endDate group by h.selloffice order by sales desc";
		
		List<Object[]> stats = em.createQuery(sql, Object[].class).setParameter("startDate", startDate)
				.setParameter("endDate", endDate).getResultList();
		for (Object[] objects : stats) {
            System.out.println(objects[0]);
            System.out.println(objects[1]);
        }
		
		return stats;
	}
	
	@Override
	public List<Object[]> getHotSubAreasReport(String startDate, String endDate) {
		// returns list of homes sold and sum sales by brokerage

		String jpql = "select h.subArea, count(h) as subareas, round(avg(closedPrice),2), round(avg(listPrice),2), round(avg(closedPrice)/avg(listPrice)*100,2), round(avg(dom),2) from House "
				+ "h where closedDate>= :startDate and closedDate<= :endDate"
				+ " group by h.subArea order by subareas desc";
		List<Object[]> subAreaStats = em.createQuery(jpql, Object[].class).setParameter("startDate", startDate)
				.setParameter("endDate", endDate).getResultList();
		
		for (Object[] objects : subAreaStats) {
            System.out.println(objects[0]);
            System.out.println(objects[1]);
        }
		return subAreaStats;
	}
	
	@Override
	public List<Object[]> getHotAreasReport(String startDate, String endDate) {
		// returns list of homes sold and sum sales by brokerage

		String sql = "select h.area, count(h) as areas, round(avg(closedPrice),2), round(avg(listPrice),2), avg(closedPrice)/avg(listPrice)*100, round(avg(dom),2) from House h where "
				+ "closedDate>= :startDate and"
				+ " closedDate<= :endDate group by h.area order by areas desc";
		List<Object[]> hotStats = em.createQuery(sql, Object[].class).setParameter("startDate", startDate)
				.setParameter("endDate", endDate).getResultList();
		for (Object[] objects : hotStats) {
            System.out.println(objects[0]);
            System.out.println(objects[1]);
        }
		return hotStats;
	}

	@Override
	public List<Object[]> schoolsByDistrict() {
		String qry = "select h.schoolDistrict, count(h), round(avg(h.closedPrice),2), round(avg(h.soldConcessions),2), round(avg(h.dom),2) from House h where closedDate>=\'2019-01-01\' group by schoolDistrict order by count(closedPrice) desc";
		List<Object[]> stats = em.createQuery(qry, Object[].class).getResultList();
		for (Object[] objects : stats) {
			System.out.println(objects[0] + " - " + objects[1]);
		}

		System.out.println("*************************************");
		System.out.println(stats);
		
		return stats;
	}

	@Override
	public List<Long> getWhereAreTheLoans() {
		String qry1 = "select count(h) from House h where closedDate>='2018-10-01' and termsSale like 'va'";
		String qry2 = "select count(h) from House h where closedDate>='2018-10-01' and termsSale like 'fha'";
		String qry3 = "select count(h) from House h where closedDate>='2018-10-01' and termsSale like 'conventional'";
		String qry4 = "select count(h) from House h where closedDate>='2018-10-01' and termsSale like 'cash'";
		String qry5 = "select count(h) from House h where closedDate>='2018-10-01' and termsSale not like 'cash' and termsSale not like 'conventional' and termsSale not like 'fha' and termsSale not like 'va' and termsSale not like 'usda'";
		String qry6 = "select count(h) from House h where closedDate>='2018-10-01' and termsSale like 'usda'";

		
		List<Long> stats1 = em.createQuery(qry1, Long.class).getResultList();
		List<Long> stats2 = em.createQuery(qry2, Long.class).getResultList();
		List<Long> stats3 = em.createQuery(qry3, Long.class).getResultList();
		List<Long> stats4 = em.createQuery(qry4, Long.class).getResultList();
		List<Long> stats5 = em.createQuery(qry5, Long.class).getResultList();
		List<Long> stats6 = em.createQuery(qry6, Long.class).getResultList();
		
		List<Long> stats = new ArrayList<Long>();

		stats.addAll(stats1);
		stats.addAll(stats2);
		stats.addAll(stats3);
		stats.addAll(stats4);
		stats.addAll(stats5);
		stats.addAll(stats6);

		return stats;
	}
	
	@Override
	public List<Long> getWhereAreTheLoansDateRange(String startDate, String endDate) {
		String qry1 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and termsSale like 'va'";
		String qry2 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and termsSale like 'fha'";
		String qry3 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and termsSale like 'conventional'";
		String qry4 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and termsSale like 'cash'";
		String qry5 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and termsSale not like 'cash' and termsSale not like 'conventional' and termsSale not like 'fha' and termsSale not like 'va' and termsSale not like 'usda'";
		String qry6 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and termsSale like 'usda'";

		List<Long> stats1 = em.createQuery(qry1, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate)
				.getResultList();
		List<Long> stats2 = em.createQuery(qry2, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate)
				.getResultList();
		List<Long> stats3 = em.createQuery(qry3, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate)
				.getResultList();
		List<Long> stats4 = em.createQuery(qry4, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate).getResultList();
		List<Long> stats5 = em.createQuery(qry5, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate)
				.getResultList();
		List<Long> stats6 = em.createQuery(qry6, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate)
				.getResultList();
		
		List<Long> stats = new ArrayList<Long>();

		stats.addAll(stats1);
		stats.addAll(stats2);
		stats.addAll(stats3);
		stats.addAll(stats4);
		stats.addAll(stats5);
		stats.addAll(stats6);

		return stats;
	}
	
	@Override
	public List<Long> getWhereAreTheSalesDateRange(String startDate, String endDate) {
		String qry1 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and propertyType like 'Single Family'";
//		String qry1 = "select count(h), round(avg(closedPrice),2) from House h where closedDate>= :startDate and closedDate<= :endDate and propertyType like 'Single Family'";
		String qry2 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and propertyType like 'Townhouse'";
		String qry3 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and propertyType like 'Patio Home'";
		String qry4 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and propertyType like 'Condominium'";
//		String qry5 = "select count(h) from House h where closedDate>= :startDate and closedDate<= :endDate and termsSale not like 'cash' and termsSale not like 'conventional' and termsSale not like 'fha' and termsSale not like 'va'";

		List<Long> stats1 = em.createQuery(qry1, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate)
				.getResultList();
		List<Long> stats2 = em.createQuery(qry2, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate)
				.getResultList();
		List<Long> stats3 = em.createQuery(qry3, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate)
				.getResultList();
		List<Long> stats4 = em.createQuery(qry4, Long.class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate).getResultList();
//		List<Long> stats5 = em.createQuery(qry5, Long.class)
//				.setParameter("startDate", startDate)
//				.setParameter("endDate", endDate)
//				.getResultList();
		
		List<Long> stats = new ArrayList<Long>();

		stats.addAll(stats1);
		stats.addAll(stats2);
		stats.addAll(stats3);
		stats.addAll(stats4);
//		stats.addAll(stats5);x`

		return stats;
	}

	@Override
	public List<String> getTheDaily() {
		String qry1 = "select round(avg(closedPrice),2), round(avg(soldConcessions),2), round(avg(dom),2), count(h) from House h where closedDate>='2019-02-18'";
//		String qry1 = "select round(avg(closedPrice),2), round(avg(dom),2), count(h) from House h where closedDate BETWEEN CURDATE()-30 AND CURDATE()";
//		String qry2 = "select round(avg(closedPrice),2), round(avg(dom),2), count(h) from House h where closedDate>=(curdate()-60)";
		List<String> theDailyDouble = new ArrayList<>(); 
		List<Object[]> theDaily = em.createQuery(qry1, Object[].class).getResultList(); 
//		List<Object[]> theDaily2 = em.createQuery(qry2, Object[].class).getResultList(); 
		
		for (Object[] objects:theDaily){
			String avgClosed = objects[0].toString(); 
			String avgConcessions = objects[1].toString(); 
			String avgDom = objects[2].toString(); 
			String count = objects[3].toString(); 
			theDailyDouble.add("avgCP: $" + avgClosed); 
			theDailyDouble.add("avgConcessions: $" + avgConcessions); 
			theDailyDouble.add("avgDOM: " + avgDom); 
			theDailyDouble.add("count: " + count); 
		}
		
//		for (Object[] objects:theDaily2){
//			String avgClosed2 = objects[0].toString(); 
//			String avgDom2 = objects[1].toString(); 
//			String count2 = objects[2].toString(); 
//			theDailyDouble.add("//avgCP: $" + avgClosed2); 
//			theDailyDouble.add("avgDOM: " + avgDom2); 
//			theDailyDouble.add("count: " + count2); 
//		}
		return theDailyDouble;
	}

	@Override
	public List<String> getWhereAreTheSalesDateRangeBeds(String startDate, String endDate, String propertyType, Integer bedrooms) {
		String qry1 = "select count(h), round(avg(closedPrice),2), round(avg(dom),2) from House h where closedDate>= :startDate and closedDate<= :endDate and propertyType like :propertyType and bedrooms like :bedrooms";
//		String qry12 = "select count(h), round(avg(closedPrice),2), round(avg(dom),2) from House h where closedDate>= :startDate and closedDate<= :endDate and propertyType like :propertyType and bedrooms like '%' || :bedrooms ||'%'";

		List<Object[]> stats1 = em.createQuery(qry1, Object[].class)
				.setParameter("startDate", startDate)
				.setParameter("endDate", endDate)
				.setParameter("propertyType", propertyType)
				.setParameter("bedrooms", bedrooms)
				.getResultList();
		
		List<String> stats = new ArrayList<String>();
		
		for (Object[] objects:stats1) {
			String count = objects[0].toString(); 
			String avg = objects[1].toString(); 
			String dom = objects[2].toString(); 
			stats.add("count: " + count);
			stats.add("average: " + avg);
			stats.add("dom: " + dom);
		}
		
		return stats;
	}
	

}
