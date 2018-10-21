package com.skilldistillery.edgemarketing.data;

import java.sql.SQLException;
import java.util.ArrayList;
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
	List<Object[]> getAvgPriceYTDStats() throws SQLException;
	List<Object[]> getAgentAvgPriceYTDStats(String NRDS);
	List<Object[]> getBrokerageDeals(String brokerage);
	List<Object[]> getHomesInDateRangeAsHyperlinks(String closedDate); 

}
