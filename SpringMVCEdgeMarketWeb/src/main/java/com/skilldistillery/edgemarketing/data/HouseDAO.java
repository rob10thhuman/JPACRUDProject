package com.skilldistillery.edgemarketing.data;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

import com.skilldistillery.edgemarketing.entities.House;

public interface HouseDAO {
	String findById(int id); 
	List<House> findAll();
	House editHouse(String mls); 
	House getHouseById(int id);
	House getHouseByMLS(String mls);
	House addHouse(House house);
	boolean deleteHouse(int id);
	House updateHouse(int id, House updatedHouse);
	Double getAvgPrice(); 
	Double getAvgPriceYTD(); 
	List<ClosedAndConcessionsAvg> getAvgPriceYTDStats() throws SQLException;
	LinkedHashSet<Object[]> getAgentAvgPriceYTDStats(String NRDS);
	List<Object[]> getBrokerageDeals(String brokerage);
	List<Object[]> getHomesInDateRangeAsHyperlinks(String closedDate);
	List<Object[]> getBrokerageListRankingYTD(String startDate, String endDate);
	List<Object[]> getZipYearToDate(String zipCode);
	List<Object[]> getHotAreasReport(String startDate, String endDate);
	List<Object[]> getTopBAs();
	List<Object[]> getTopLAs();
	List<Object[]> getZipReport();
	List<Object[]> getHotSubAreasReport(String startDate, String endDate);
	LinkedHashSet<Object[]> getQuarterlyReport();
	LinkedHashSet<Object[]> getAreaQuarterlyReport();
	LinkedHashSet<Object[]> get300PriceReportYTD();
	List<Object[]> schoolsByDistrict();
	List<Long> getWhereAreTheLoans();
	List<Object[]> getBrokerageSellRankingYTD(String startDate, String endDate);
	List<Long> getWhereAreTheLoansDateRange(String startDate, String endDate);
	List<String> getTheDaily();
	List<Long> getWhereAreTheSalesDateRange(String startDate, String endDate);
	List<String> getWhereAreTheSalesDateRangeBeds(String startDate, String endDate, String propertyType, Integer bedrooms); 

}
