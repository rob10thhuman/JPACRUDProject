package com.skilldistillery.edgemarketing.services;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.edgemarketing.entities.House;
import com.skilldistillery.edgemarketing.repositories.HouseRepo;

@Service
public class HouseServiceImpl implements HouseService{
	@PersistenceContext
	private EntityManager em;

	private  HouseRepo hRepo;

	    public HouseServiceImpl(HouseRepo hRepo) {
	        this.hRepo = hRepo;
	    }

	    @Override
	    public List<House> index() {
	        return null;
	    }

	    public House show(Integer id) {
	        Optional<House> opt = hRepo.findById(id); 
	        House house = new House();
	        if (opt.isPresent()) {
	            house = opt.get();
	        }
	        return house;
	    }

		@Override
		public House avgPrice() {
			// TODO Auto-generated method stub
			return null;
		}

		@Override
		public House getHouseByMLS(String mls) {

			House house = null;

			String query = "SELECT h FROM House h where mls= :mls";

			house = em.createQuery(query, House.class).setParameter("mls", mls).getSingleResult();

			return house;
		}
		
		@Override 
		public List<String> getAvgPriceYTD() {
			String qry1 = "select round(avg(closedPrice),2), round(avg(soldConcessions),2), round(avg(dom),2), count(h) from House h where closedDate>=\'2019-01-01\'";
			List<String> theAverage = new ArrayList<>(); 
			List<Object[]> theAvg = em.createQuery(qry1, Object[].class).getResultList(); 
			 
			for (Object[] objects:theAvg){
				String avgClosed = objects[0].toString(); 
				String avgConcessions = objects[1].toString(); 
				String avgDom = objects[2].toString(); 
				String count = objects[3].toString(); 
				theAverage.add("Average Closed Price: $" + avgClosed); 
				theAverage.add("Avg Sellers Concessions: $" + avgConcessions); 
				theAverage.add("Avg Days on the Market: " + avgDom); 
				theAverage.add("# Homes Sold: " + count); 
			}
			
			return theAverage;
			
		}
		
		@Override
		public List<String> getTheDaily() {

//			String qry1 = "select round(avg(closedPrice),2), round(avg(soldConcessions),2), round(avg(dom),2), count(h) from House h where closedDate>=\'2019-05-23\'";
			String qry1 = "select round(avg(closedPrice),2), round(avg(soldConcessions),2), round(avg(dom),2), count(h) from House h where h.closedDate >=\'2019-06-15\'";
			List<String> theDailyDouble = new ArrayList<>(); 
			List<Object[]> theDaily = em.createQuery(qry1, Object[].class).getResultList(); 
			
			for (Object[] objects:theDaily){
				String avgClosed = objects[0].toString(); 
				String avgConcessions = objects[1].toString(); 
				String avgDom = objects[2].toString(); 
				String count = objects[3].toString(); 
				theDailyDouble.add("Average Closed Price: $" + avgClosed); 
				theDailyDouble.add("Avg Sellers Concessions: $" + avgConcessions); 
				theDailyDouble.add("Avg Days on the Market: " + avgDom); 
				theDailyDouble.add("# Homes Sold: " + count); 
			}
			
			return theDailyDouble;
		}		
		
		@Override
		public List<Object[]> getBrokerageListRankingYTD(String startDate, String endDate) {
			// returns list of homes sold and sum sales by brokerage
			
			String sql = "select h.listoffice, count(h) as sales, sum(h) from House h where closedDate>= :startDate and closedDate<= :endDate group by h.listoffice order by sales desc";
			
			List<Object[]> stats = em.createQuery(sql, Object[].class).setParameter("startDate", startDate)
					.setParameter("endDate", endDate).getResultList();
			for (Object[] objects : stats) {
	            System.out.println(objects[0]);
	            System.out.println(objects[1]);
	            System.out.println(objects[2]);
	        }
			
			return stats;
		}
		
		@Override
		public List<Object[]> getBrokerageSellRankingYTD(String startDate, String endDate) {
			// returns list of homes sold and sum sales by brokerage
			
			String sql = "select h.selloffice, count(h) as sales, sum(h) from House h where closedDate>= :startDate and closedDate<= :endDate group by h.selloffice order by sales desc";
			
			List<Object[]> stats = em.createQuery(sql, Object[].class).setParameter("startDate", startDate)
					.setParameter("endDate", endDate).getResultList();
			for (Object[] objects : stats) {
	            System.out.println(objects[0]);
	            System.out.println(objects[1]);
	            System.out.println(objects[2]);
	        }
			
			return stats;
		}
		
		@Override
		public List<Object[]> getBrokerageCombinedReport(String startDate, String endDate) {
			String sql = "select h.selloffice, count(h) as sales, sum(h) from House h where closedDate>= :startDate and closedDate<= :endDate group by h.selloffice order by sales desc";
			
			String sql2 = "select office sum(islist) as numlists, sum (issell) as numsells, "
					+ "sum(islist + issell) as numtotal" 
					+ "from ((select h.listoffice as office, 1 as islist, 0 as issell"
				    + "from House h where h.closed_date>= :startDate"
				    + " ) union all" 
				    + " (select h.selloffice, 0, 1"
				    + "from House h where h.closed_date>= :endDate"
				    + "   ) ) sl group by office order by numtotal desc";
			
			List<Object[]> stats = em.createQuery(sql2, Object[].class).setParameter("startDate", startDate)
					.setParameter("endDate", endDate).getResultList();
			
			return stats;
		}
		
		@Override
		public List<Object[]> getHotSubAreasReport(String startDate, String endDate) {
			// returns list of homes sold and sum sales by brokerage

			String jpql = "select h.subArea, count(h) as subareas, round(avg(closedPrice),2), round(avg(listPrice),2), round(avg(closedPrice)/avg(listPrice)*100,2), round(avg(dom),2), round(avg(totalSf),2), round(avg(finishedSf),2), round(avg(salePriceSf),2) from House "
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
		public List<Long> getWhereAreTheLoans() {
			String qry1 = "select count(h) from House h where closedDate>='2019-01-01' and termsSale like 'va'";
			String qry2 = "select count(h) from House h where closedDate>='2019-01-01' and termsSale like 'fha'";
			String qry3 = "select count(h) from House h where closedDate>='2019-01-01' and termsSale like 'conventional'";
			String qry4 = "select count(h) from House h where closedDate>='2019-01-01' and termsSale like 'cash'";
			String qry5 = "select count(h) from House h where closedDate>='2019-01-01' and termsSale not like 'cash' and termsSale not like 'conventional' and termsSale not like 'fha' and termsSale not like 'va' and termsSale not like 'usda'";
			String qry6 = "select count(h) from House h where closedDate>='2019-01-01' and termsSale like 'usda'";

			
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
		public List<Object[]> getZipReport() {

			String qry = "select h.zipCode, count(h) as countSales, round(avg(h.closedPrice),2), round(avg(h.listPrice),2), round(avg(h.dom),2), round(avg(h.closedPrice)/avg(h.listPrice)*100,2)  from House h where h.closedDate>=\'2019-01-01\' group by h.zipCode order by countSales desc";
//			String sql = "select count(h.closedPrice) AS countSales, sum(h.closedPrice), h.buyersAgent from House h where h.closedDate>=\'2018-01-01\' group by h.buyersAgent order by countSales desc";
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
		public LinkedHashSet<Object[]> getQuarterlyReport() {
			
			String jpql = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2017-01-01' and h.closedDate<='2017-03-31'";
			String jpql2 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2017-04-01' and h.closedDate<='2017-06-30'";
			String jpql3 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2017-07-01' and h.closedDate<='2017-09-30'";
			String jpql4 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2017-10-01' and h.closedDate<='2017-12-31'";
			
			String sql = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-01-01' and h.closedDate<='2018-03-31'";
			String sql1 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-04-01' and h.closedDate<='2018-06-30'";
			String sql2 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-07-01' and h.closedDate<='2018-09-30'";
			String sql3 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2018-10-01' and h.closedDate<='2018-12-31'";
			
			String sql4 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2019-01-01' and h.closedDate<='2019-03-31'";
			String sql5 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2019-04-01' and h.closedDate<='2019-06-30'";
			String msq1 = "select count(h), round(avg(h.closedPrice),2),round(avg(h.dom),2),round(avg(h.soldConcessions),2) from House h where h.closedDate>='2019-07-01' and h.closedDate<='2019-09-30'";

			
			List<Object[]> jpql5 = em.createQuery(jpql, Object[].class).getResultList();
			List<Object[]> jpql6 = em.createQuery(jpql2, Object[].class).getResultList();
			List<Object[]> jpql7 = em.createQuery(jpql3, Object[].class).getResultList();
			List<Object[]> jpql8 = em.createQuery(jpql4, Object[].class).getResultList();

			List<Object[]> stats = em.createQuery(sql, Object[].class).getResultList();
			List<Object[]> stats1 = em.createQuery(sql1, Object[].class).getResultList();
			List<Object[]> stats2 = em.createQuery(sql2, Object[].class).getResultList();
			List<Object[]> stats3 = em.createQuery(sql3, Object[].class).getResultList();
			
			List<Object[]> stats4 = em.createQuery(sql4, Object[].class).getResultList();
			List<Object[]> stats5 = em.createQuery(sql5, Object[].class).getResultList();
			List<Object[]> msq10 = em.createQuery(msq1, Object[].class).getResultList();

			
			LinkedHashSet<Object[]> result = new LinkedHashSet<Object[]>();
			
			result.addAll(jpql5);
			result.addAll(jpql6);
			result.addAll(jpql7);
			result.addAll(jpql8);
			
			
			result.addAll(stats);
			result.addAll(stats1);
			result.addAll(stats2);
			result.addAll(stats3);

			result.addAll(stats4);
			result.addAll(stats5);
			result.addAll(msq10);
			
			return result;

		}
		
		@Override
		public List<Object[]> getQuarterlyAverages() {
			
			String qry = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2016-01-01' and h.closedDate<='2016-03-31'";
			String qry2 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2016-04-01' and h.closedDate<='2016-06-30'";
			String qry3 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2016-07-01' and h.closedDate<='2016-09-30'";
			String qry4 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2016-10-01' and h.closedDate<='2016-12-31'";
			
			String jpql = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2017-01-01' and h.closedDate<='2017-03-31'";
			String jpql2 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2017-04-01' and h.closedDate<='2017-06-30'";
			String jpql3 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2017-07-01' and h.closedDate<='2017-09-30'";
			String jpql4 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2017-10-01' and h.closedDate<='2017-12-31'";
			
			String sql = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2018-01-01' and h.closedDate<='2018-03-31'";
			String sql1 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2018-04-01' and h.closedDate<='2018-06-30'";
			String sql2 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2018-07-01' and h.closedDate<='2018-09-30'";
			String sql3 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2018-10-01' and h.closedDate<='2018-12-31'";
			
			String sql4 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2019-01-01' and h.closedDate<='2019-03-31'";
			String sql5 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2019-04-01' and h.closedDate<='2019-06-30'";
			String sql6 = "select round(avg(h.closedPrice),2) from House h where h.closedDate>='2019-07-01' and h.closedDate<='2019-09-30'";

			
			List<Object[]> qry5 = em.createQuery(qry, Object[].class).getResultList();
			List<Object[]> qry6 = em.createQuery(qry2, Object[].class).getResultList();
			List<Object[]> qry7 = em.createQuery(qry3, Object[].class).getResultList();
			List<Object[]> qry8 = em.createQuery(qry4, Object[].class).getResultList();
			
			List<Object[]> jpql5 = em.createQuery(jpql, Object[].class).getResultList();
			List<Object[]> jpql6 = em.createQuery(jpql2, Object[].class).getResultList();
			List<Object[]> jpql7 = em.createQuery(jpql3, Object[].class).getResultList();
			List<Object[]> jpql8 = em.createQuery(jpql4, Object[].class).getResultList();

			List<Object[]> stats = em.createQuery(sql, Object[].class).getResultList();
			List<Object[]> stats1 = em.createQuery(sql1, Object[].class).getResultList();
			List<Object[]> stats2 = em.createQuery(sql2, Object[].class).getResultList();
			List<Object[]> stats3 = em.createQuery(sql3, Object[].class).getResultList();
			
			List<Object[]> stats4 = em.createQuery(sql4, Object[].class).getResultList();
			List<Object[]> stats5 = em.createQuery(sql5, Object[].class).getResultList();
			List<Object[]> stats6 = em.createQuery(sql6, Object[].class).getResultList();

			
			List<Object[]> result = new ArrayList<Object[]>();
			
			result.addAll(qry5);
			result.addAll(qry6);
			result.addAll(qry7);
			result.addAll(qry8);
			
			result.addAll(jpql5);
			result.addAll(jpql6);
			result.addAll(jpql7);
			result.addAll(jpql8);
			
			
			result.addAll(stats);
			result.addAll(stats1);
			result.addAll(stats2);
			result.addAll(stats3);

			result.addAll(stats4);
			result.addAll(stats5);
			result.addAll(stats6);
			
			return result;

		}

	}
