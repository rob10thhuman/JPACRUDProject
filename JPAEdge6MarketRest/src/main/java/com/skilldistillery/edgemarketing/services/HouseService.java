package com.skilldistillery.edgemarketing.services;

import java.util.LinkedHashSet;
import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.edgemarketing.entities.House;

@Service
public interface HouseService {
	
	List<House> index(); 
	
	House show(Integer id); 
	
	House avgPrice(); 
	
	House getHouseByMLS(String mls);

//	Double getAvgPriceYTD();
	
	List<String> getAvgPriceYTD();

	List<String> getTheDaily();

	List<Object[]> getBrokerageListRankingYTD(String startDate, String endDate);
	
	List<Object[]> getBrokerageSellRankingYTD(String startDate, String endDate);

	List<Object[]> getHotSubAreasReport(String startDate, String endDate);

	List<Long> getWhereAreTheLoans();

	List<Object[]> schoolsByDistrict();

	List<Object[]> getZipReport();

	LinkedHashSet<Object[]> getQuarterlyReport();

	List<Object[]> getQuarterlyAverages();

	List<Object[]> getBrokerageCombinedReport(String startDate, String endDate);


}