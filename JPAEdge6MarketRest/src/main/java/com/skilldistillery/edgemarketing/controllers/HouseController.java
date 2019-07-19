package com.skilldistillery.edgemarketing.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.edgemarketing.entities.House;
import com.skilldistillery.edgemarketing.services.HouseService;

@RestController
@RequestMapping("api") 
@CrossOrigin({ "*", "http://localhost:4200" })
public class HouseController {

	@Autowired
	private   HouseService houseServ;

    public HouseController(HouseService houseServ) {
        this.houseServ = houseServ;
    }

    @GetMapping(value = "index/{id}")
    public House show(@PathVariable("id") Integer id) {
        return houseServ.show(id); 
    }
    
    @GetMapping(value = "query/{mls}")
    public House getHouseByMLS(@PathVariable("mls") String mls) {
    	return houseServ.getHouseByMLS(mls); 
    }
    
    @GetMapping(value = "query/avgytd")
    public List<String> getAvgPriceYTD() {
    	return houseServ.getAvgPriceYTD(); 
    }
    
    @GetMapping(value = "query/daily")
    public List<String> getTheDaily() {
    	return houseServ.getTheDaily(); 
    } 
    
    @GetMapping(path = "query/brokerageytd", params = { "startDate", "endDate" })
    public List getBrokerageListRankingYTD(String startDate, String endDate) {

    	List<String> brokerageStandings = new ArrayList<>();
    	List<Object[]> stats = houseServ.getBrokerageListRankingYTD(startDate, endDate);

    	for (Object[] objects : stats) {
    		String listoffice = objects[0].toString();
    		String countSales = objects[1].toString();
    		String sumSales = objects[2].toString();
    		brokerageStandings.add(listoffice + "," + countSales + "," + sumSales);
    	}

    	return houseServ.getBrokerageListRankingYTD(startDate, endDate);

    }
    
    @GetMapping(path = "query/brokerageytdsell", params = { "startDate", "endDate" })
    public List getBrokerageSellRankingYTD(String startDate, String endDate) {

    	List<String> brokerageStandings = new ArrayList<>();
    	List<Object[]> stats = houseServ.getBrokerageListRankingYTD(startDate, endDate);

    	for (Object[] objects : stats) {
    		String selloffice = objects[0].toString();
    		String countSales = objects[1].toString();
    		String sumSales = objects[2].toString();
    		brokerageStandings.add(selloffice + "," + countSales + "," + sumSales);
    	}

    	return houseServ.getBrokerageSellRankingYTD(startDate, endDate);

    }
    
    @GetMapping(path = "query/brokerageytdcombined", params = { "startDate", "endDate" })
    public List getBrokerageCombined(String startDate, String endDate) {

    	List<String> brokerageStandings = new ArrayList<>();
    	List<Object[]> stats = houseServ.getBrokerageCombinedReport(startDate, endDate);

    	for (Object[] objects : stats) {
    		String office = objects[0].toString();
    		String numlists = objects[1].toString();
    		String numSales = objects[2].toString();
    		String numTotal = objects[3].toString();
    		brokerageStandings.add(office);
    		brokerageStandings.add(numlists);
    		brokerageStandings.add(numSales);
    		brokerageStandings.add(numTotal);
    		
    	}

//    	return houseServ.getBrokerageCombinedReport(startDate, endDate);
    	return brokerageStandings;

    }
    
    @GetMapping(path = "query/hotSubAreaReport", params = { "startDate", "endDate" })
    public List getHotSubAreasReport(String startDate, String endDate) {
    	return houseServ.getHotSubAreasReport(startDate, endDate);
    }
    
    @GetMapping(path = "query/wherearetheloans")
    public List getWhereAreTheLoans() throws SQLException {
    	return houseServ.getWhereAreTheLoans();
    }
    
    @GetMapping(path = "query/schools")
    public List schoolsByDistrict() throws SQLException {
    	return houseServ.schoolsByDistrict();
    }
    
    @GetMapping(path = "query/zipsytd")
    public List zipCodesYtd() throws SQLException {
    	return houseServ.getZipReport();
    }
    
    @GetMapping(path = "query/quarterlyreport")
    public LinkedHashSet<Object[]> quarterlyReport() throws SQLException {
    	return houseServ.getQuarterlyReport();
    }
    
    @GetMapping(path = "query/quarterlyreportaverages")
    public List quarterlyAverages() throws SQLException {
    	return houseServ.getQuarterlyAverages();
    }
}