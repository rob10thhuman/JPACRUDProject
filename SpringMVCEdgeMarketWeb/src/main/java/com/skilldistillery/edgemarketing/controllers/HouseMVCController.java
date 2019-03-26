package com.skilldistillery.edgemarketing.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.edgemarketing.data.ClosedAndConcessionsAvg;
import com.skilldistillery.edgemarketing.data.HouseDAO;
import com.skilldistillery.edgemarketing.entities.House;

@Controller
public class HouseMVCController {

	@Autowired
	HouseDAO housedao;


	public HouseDAO getHousedao() {
		return housedao;
	}

	public void setHousedao(HouseDAO housedao) {
		this.housedao = housedao;
	}

	@RequestMapping(path = "home.do")
	public ModelAndView welcomePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/home.jsp");
		return mv;
	}
	
	@RequestMapping(path = "mortgage.do")
	public ModelAndView mortgageCalc() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/mortgagecalc.jsp");
		return mv;
	}
	
	@RequestMapping(path = "rental.do")
	public ModelAndView rental() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/rentalcost.jsp");
		return mv;
	}
	
	@RequestMapping(path = "homePage.do")
	public ModelAndView homePage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/home.jsp");
		return mv;
	}
	
	@RequestMapping(path = "resources.do")
	public ModelAndView resources() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/resources.jsp");
		return mv;
	}
	
	@RequestMapping(path = "chart.do")
	public ModelAndView chart() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/chart.jsp");
		return mv;
	}
	
	@RequestMapping(path = "client.do")
	public ModelAndView clientPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/clientView.jsp");
		return mv;
	}
	
	@RequestMapping(path = "mls.do")
	public ModelAndView mlsPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/mlsView.jsp");
		return mv;
	}
	
	@RequestMapping(path = "stats.do")
	public ModelAndView statsPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/statsView.jsp");
		return mv;
	}
	
	@RequestMapping(path = "agent.do")
	public ModelAndView agentPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/agentView.jsp");
		return mv;
	}

	@RequestMapping(path = "getId.do", params = "id", method = RequestMethod.GET)
	public ModelAndView getHouseById(int id) throws SQLException {
		ModelAndView mv = new ModelAndView();
		House house = null;
		house = housedao.getHouseById(id);
		System.out.println("House after retrieval: " + "\n" + house);
		mv.addObject("house", house);
		mv.setViewName("WEB-INF/views/result.jsp");

		return mv;
	}

	@RequestMapping(path = "getMLS.do", params = "mls", method = RequestMethod.GET)
	public ModelAndView getHouseByMLS(String mls) throws SQLException {
		ModelAndView mv = new ModelAndView();
		House house = null;
		house = housedao.getHouseByMLS(mls);
		System.out.println("House after retrieval: " + "\n" + house);
		mv.addObject("house", house);
		mv.setViewName("WEB-INF/views/result.jsp");

		return mv;
	}

	@RequestMapping(path = "addHouse.do", method = RequestMethod.GET)
	public ModelAndView addHouse(House house) throws SQLException {
		ModelAndView mv = new ModelAndView();
		house = housedao.addHouse(house);
		System.out.println("House after retrieval: " + "\n" + house);
		mv.addObject("house", house);
		mv.setViewName("WEB-INF/views/result.jsp");

		return mv;
	}

	@RequestMapping(path = "deleteHouse.do", params = "id", method = RequestMethod.GET)
	public ModelAndView deleteHouse(int id) throws SQLException {
		ModelAndView mv = new ModelAndView();
		boolean result = housedao.deleteHouse(id);

		mv.setViewName("WEB-INF/views/deleted.jsp");

		return mv;
	}

	@RequestMapping(path = "editHouse.do", params = "mls", method = RequestMethod.GET)
	public ModelAndView deleteHouse(String mls) throws SQLException {
		ModelAndView mv = new ModelAndView();
		House house = housedao.editHouse(mls);
		mv.addObject("house", house);
		mv.setViewName("WEB-INF/views/editHouse.jsp");

		return mv;
	}

	@RequestMapping(path = "updateHouse.do", method = RequestMethod.GET)
	public ModelAndView updateHouse(int id, House updatedHouse) throws SQLException {
		ModelAndView mv = new ModelAndView();
		updatedHouse = housedao.updateHouse(id, updatedHouse);
		mv.addObject("updatedHouse", updatedHouse);
		mv.setViewName("WEB-INF/views/result.jsp");

		return mv;
	}

	@RequestMapping(path = "getAVG.do", method = RequestMethod.GET)
	public ModelAndView getAvgPrice() throws SQLException {
		ModelAndView mv = new ModelAndView();
		Double stat;
		stat = housedao.getAvgPrice();
		System.out.println("stat after retrieval: " + "\n" + stat);
		mv.addObject("stat", stat);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;
	}

	@RequestMapping(path = "getAVGYTD.do", method = RequestMethod.GET)
	public ModelAndView getAvgPriceYTD() throws SQLException {
		ModelAndView mv = new ModelAndView();
		Double stat;
		stat = housedao.getAvgPriceYTD();
		System.out.println("stat after retrieval: " + "\n" + stat);
		mv.addObject("stat", stat);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}
	
	@RequestMapping(path = "theDaily.do", method = RequestMethod.GET)
	public ModelAndView theDaily() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String> theDaily;
		
		theDaily = housedao.getTheDaily();
		System.out.println("loans after retrieval: " + "\n" + theDaily);
		
		mv.addObject("theDaily",theDaily);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}
	     
	@RequestMapping(path = "whereAreTheLoans.do", method = RequestMethod.GET)
	public ModelAndView getWhereAreTheLoans() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Long> loans;
		
		loans = housedao.getWhereAreTheLoans();
		System.out.println("loans after retrieval: " + "\n" + loans);
		
		mv.addObject("loans",loans);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}
	
	@RequestMapping(path = "whereAreTheLoansDateRange.do", params = { "startDate", "endDate" }, method = RequestMethod.GET)
	public ModelAndView getWhereAreTheLoansDateRange(String startDate, String endDate) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Long> loans = housedao.getWhereAreTheLoansDateRange(startDate, endDate);

		mv.addObject("loans",loans);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;
	}
	
	@RequestMapping(path = "whereAreTheSalesDateRange.do", params = { "startDate", "endDate" }, method = RequestMethod.GET)
	public ModelAndView getWhereAreSalesDateRange(String startDate, String endDate) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Long> sales = housedao.getWhereAreTheSalesDateRange(startDate, endDate);

		mv.addObject("sales",sales);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;
	}
	
	@RequestMapping(path = "whereAreTheSalesDateRangeBeds.do", params = { "startDate", "endDate", "propertyType", "bedrooms" }, method = RequestMethod.GET)
	public ModelAndView getWhereAreSalesDateRangeRooms(String startDate, String endDate, String propertyType, Integer bedrooms) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String> salesBeds = housedao.getWhereAreTheSalesDateRangeBeds(startDate, endDate, propertyType, bedrooms);

		mv.addObject("salesBeds",salesBeds);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;
	}
	
	@RequestMapping(path = "schoolsByDistrict.do", method = RequestMethod.GET)
	public ModelAndView schoolsByDistrict() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String> sDistricts = new ArrayList<>(); 
		List<Object[]> schoolsByDistrict;
		
		schoolsByDistrict = housedao.schoolsByDistrict();
		System.out.println("stat after retrieval: " + "\n" + schoolsByDistrict);
		
		for (Object[] objects : schoolsByDistrict) {
			String sd = objects[0].toString();
			String count = objects[1].toString(); 
			String avgClosed = objects[2].toString();
			String avgSoldConcessions = objects[3].toString();
			String avgDom = objects[4].toString();
//			sDistricts.add("SD:" + sd + " Count:" + count +  " AvgCP:" + avgClosed + " AvgSC:" + avgSoldConcessions + " AvgDOM:" + avgDom.substring(0,2));
			sDistricts.add(":" + sd + ":" + count +  ":" + avgClosed + ":" + avgSoldConcessions + ":" + avgDom.substring(0,2));
		}
		
		
		mv.addObject("sDistricts", sDistricts);
		mv.setViewName("WEB-INF/views/stats.jsp");
		
		return mv;
		
	}

	@RequestMapping(path = "top10BuyersAgents.do", method = RequestMethod.GET)
	public ModelAndView getTopBAs() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String> topBAs = new ArrayList<>();
		List<Object[]> stats = housedao.getTopBAs();

		System.out.println("stat after retrieval: " + "\n" + stats);
		mv.addObject("stats", stats);

		for (Object[] objects : stats) {
			String countSold = objects[0].toString();
			String sumSold = objects[1].toString();
			String bNRDS = objects[2].toString();
			String fName = objects[3].toString();
			String lName = objects[4].toString();
			String office = objects[5].toString();
			String phone = objects[6].toString();
			String email = objects[7].toString();
			topBAs.add("Homes Sold: " + countSold + " Sales $" + sumSold + " Name: " + fName + " " + lName + "  // Phone: " + phone + "  // Email: " + email);
		}

		mv.addObject("topBAs", topBAs);

		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}

	@RequestMapping(path = "top10ListAgents.do", method = RequestMethod.GET)
	public ModelAndView getListBAs() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String> topLAs = new ArrayList<>();
		List<Object[]> stats = housedao.getTopLAs();

		System.out.println("stat after retrieval: " + "\n" + stats);
		mv.addObject("stats", stats);

		for (Object[] objects : stats) {
			String countSold = objects[0].toString();
			String sumSold = objects[1].toString();
			String lNRDS = objects[2].toString();
			topLAs.add("Homes Sold: " + countSold + " Sales $: " + sumSold + " Agent: " + lNRDS);
		}

		mv.addObject("topLAs", topLAs);

		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}

	@RequestMapping(path = "quarterlyReport.do", method = RequestMethod.GET)
	public ModelAndView quarterlyReport() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String> qRpt = new ArrayList<>();
		LinkedHashSet<Object[]> stats = housedao.getQuarterlyReport();

		System.out.println("stat after retrieval: " + "\n" + stats);

		for (Object[] objects : stats) {
			String numSales = objects[0].toString();
			String avgCP = objects[1].toString();
			String avgDom = objects[2].toString();
			String avgCon = objects[3].toString();
			qRpt.add("#Sales: " + numSales + " AvgCP: $" + avgCP + " AvgDOM: " + avgDom + " AvgCon: " + avgCon);
		}

		mv.addObject("qRpt", qRpt);
//		mv.addObject("qRpt", stats);
		//curious to see how I pull the info out into a jsp on stats from object

		mv.setViewName("WEB-INF/views/stats.jsp");
		return mv;

	}

	@RequestMapping(path = "areaQuarterlyReport.do", method = RequestMethod.GET)
	public ModelAndView areaQuarterlyReport() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String> qRptArea = new ArrayList<>();
		LinkedHashSet<Object[]> stats = housedao.getAreaQuarterlyReport();

		System.out.println("stat after retrieval: " + "\n" + stats);

		for (Object[] objects : stats) {
			String area = objects[0].toString();
			String numSales = objects[1].toString();
			String avgCP = objects[2].toString();
			String avgDom = objects[3].toString();
			String avgCon = objects[4].toString();
			qRptArea.add("Area:  " + area + ", #Sales: " + numSales + ", AvgCP: $" + avgCP + ", AvgDOM: " + avgDom + ", AvgCon: "
					+ avgCon + "\n");
//			qRptArea.add("****************");
		}

		mv.addObject("qRptArea", qRptArea);

		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}
	
//	get300PriceReportYTD
	
	@RequestMapping(path = "get300PriceReportYTD.do", method = RequestMethod.GET)
	public ModelAndView get300PriceReportYTD() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String> qRpt300 = new ArrayList<>();
		LinkedHashSet<Object[]> stats = housedao.get300PriceReportYTD();

		System.out.println("stat after retrieval: " + "\n" + stats);

		for (Object[] objects : stats) {
//			String area = objects[0].toString();
			String numSales = objects[0].toString();
//			String avgCP = objects[1].toString();
			String avgDom = objects[1].toString();
			String avgCon = objects[2].toString();
			qRpt300.add("#Sales: " + numSales + " AvgDOM: " + avgDom + " AvgCon: "
					+ avgCon + "\n");
		}

		mv.addObject("qRpt300", qRpt300);

		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}

	@RequestMapping(path = "getAVGYTDStats.do", method = RequestMethod.GET)
	public ModelAndView getAvgYTDStats() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String> ytdStats = new ArrayList<>();
		List<ClosedAndConcessionsAvg> statsCC = housedao.getAvgPriceYTDStats();

		System.out.println("stat after retrieval: " + "\n" + statsCC);
		mv.addObject("statsCC", statsCC.toString());

		for (ClosedAndConcessionsAvg data : statsCC) {
			Double avgPrice = data.getClosedAvg();
			Double avgConcessions = data.getConcessionsAvg();
			Double avgDom = data.getAvgDom();
//			ytdStats.add("Average sales price YTD: $" + avgPrice + " and the " + 
//			"average seller's concessions are: $" + avgConcessions);
			ytdStats.add(avgPrice + " " + avgConcessions + " " + avgDom);
		

		}

		mv.addObject("ytdStats", ytdStats);

		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}
	
	@RequestMapping(path = "getAVGYTDStatsByAgent.do", params = "NRDS", method = RequestMethod.GET)
	public ModelAndView getAvgYTDStatsByAgent(String NRDS) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Double> agentYtdStats = new ArrayList<>();
		LinkedHashSet<Object[]> stats = housedao.getAgentAvgPriceYTDStats(NRDS);

		for (Object[] objects : stats) {
			double avgPrice = (double) objects[0];
			double avgConcessions = (double) objects[1];
			agentYtdStats.add(avgPrice);
			agentYtdStats.add(avgConcessions);
			
		}

		mv.addObject("agentYtdStats", agentYtdStats);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}

	@RequestMapping(path = "getBrokerageDeals.do", params = "brokerage", method = RequestMethod.GET)
	public ModelAndView getBrokerageDeals(String brokerage) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Double> brokerageYtdStats = new ArrayList<>();
		List<Object[]> stats = housedao.getBrokerageDeals(brokerage);

		for (Object[] objects : stats) {
			double avgPrice = (double) objects[0];
			double avgConcessions = (double) objects[1];
			brokerageYtdStats.add(avgPrice);
			brokerageYtdStats.add(avgConcessions);
//			brokerageYtdStats.add("Sum sales price YTD: $" + avgPrice + " and the " +  
//			"sum seller's concessions are: $" + avgConcessions);
		}

		mv.addObject("brokerageYtdStats", brokerageYtdStats);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}

	@RequestMapping(path = "getHomesInDateRangeAsHyperlinks.do", params = "closedDate", method = RequestMethod.GET)
	public ModelAndView getHomesInDateRangeAsHyperlinks(String closedDate) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Object[]> housesInDateRange = housedao.getHomesInDateRangeAsHyperlinks(closedDate);

		mv.addObject("housesInDateRange", housesInDateRange);
		mv.setViewName("WEB-INF/views/housesInDateRange.jsp");

		return mv;

	}

//	getBrokerageListRankingYTD

//	getZipYearToDate

	@RequestMapping(path = "getZipYearToDate.do", params = "zipCode", method = RequestMethod.GET)
	public ModelAndView getZipYearToDate(String zipCode) throws SQLException {
		ModelAndView mv = new ModelAndView();

		List<String> zipCodeStats = new ArrayList<>();
		List<Object[]> zipStats = housedao.getZipYearToDate(zipCode);

		for (Object[] objects : zipStats) {
			String count = objects[0].toString();
			String closedPrice = objects[1].toString();
			String listPrice = objects[2].toString();
			String dom = objects[3].toString();
			String cpLpRatio = objects[4].toString();
			zipCodeStats
					.add("Average sales price for zip is $: " + closedPrice + " and average days on market is: " + dom);
		}

		mv.addObject("zipCodeStats", zipCodeStats);

		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}

	@RequestMapping(path = "getZipReport.do", method = RequestMethod.GET)
	public ModelAndView getZipReport() throws SQLException {
		ModelAndView mv = new ModelAndView();

		List<String> zipCodeStats = new ArrayList<>();
		List<Object[]> zipStats = housedao.getZipReport();

		for (Object[] objects : zipStats) {
			String zip = objects[0].toString();
			String count = objects[1].toString();
			String closedPrice = objects[2].toString();
			String listPrice = objects[3].toString();
			String dom = objects[4].toString();
			String cpLpRatio = objects[5].toString();
//			zipCodeStats.add("Zip: " + zip + " Count: " + count + " avgCP$: " + closedPrice + " avgLP$: " + listPrice
//					+ " cpLPr: " + cpLpRatio + " avgDOM: " + dom);
			zipCodeStats.add(":" + zip + ":" + count + ":" + closedPrice + ":" + listPrice
					+ ":" + cpLpRatio + ":" + dom);
		}

		mv.addObject("zipCodeStats", zipCodeStats);

		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}

	@RequestMapping(path = "getBrokerageListRankingYTD.do", params = { "startDate",
			"endDate" }, method = RequestMethod.GET)
	public ModelAndView getBrokerageListRankingYTD(String startDate, String endDate) throws SQLException {
		ModelAndView mv = new ModelAndView();

		List<String> brokerageStandings = new ArrayList<>();
		List<Object[]> stats = housedao.getBrokerageListRankingYTD(startDate, endDate);

		for (Object[] objects : stats) {
			String listoffice = objects[0].toString();
			String countSales = objects[1].toString();
			brokerageStandings.add(listoffice + "," + countSales);
		}

		mv.addObject("brokerageStandings", brokerageStandings);

		mv.setViewName("WEB-INF/views/brokerageStandings.jsp");

		return mv;

	}
	
	@RequestMapping(path = "getBrokerageSellRankingYTD.do", params = { "startDate",
		"endDate" }, method = RequestMethod.GET)
	public ModelAndView getBrokerageSellRankingYTD(String startDate, String endDate) throws SQLException {
		ModelAndView mv = new ModelAndView();

		List<String> brokerageSellStandings = new ArrayList<>();
		List<Object[]> stats = housedao.getBrokerageSellRankingYTD(startDate, endDate);

		for (Object[] objects : stats) {
			String listoffice = objects[0].toString();
			String countSales = objects[1].toString();
			brokerageSellStandings.add(listoffice + ": " + countSales);
		}

		mv.addObject("brokerageSellStandings", brokerageSellStandings);

		mv.setViewName("WEB-INF/views/brokerageStandings.jsp");

		return mv;

}

	@RequestMapping(path = "getHotSubAreasReport.do", params = { "startDate", "endDate" }, method = RequestMethod.GET)
	public ModelAndView getHotSubAreasReport(String startDate, String endDate) throws SQLException {
		ModelAndView mv = new ModelAndView();

		List<String> subareaStandings = new ArrayList<>();
		List<Object[]> stats = housedao.getHotSubAreasReport(startDate, endDate);

		for (Object[] objects : stats) {
			String area = objects[0].toString();
			String countSales = objects[1].toString();
			String avgPrice = objects[2].toString();
			String avgListPrice = objects[3].toString();
			String percentCpLp = objects[4].toString();
			String dom = objects[5].toString();
			subareaStandings.add("A:" + area + ", # Sales:" + countSales + ", A/P:$" + avgPrice
					+ ", A/L:$" + avgListPrice + ", " + percentCpLp + "% LPR, "
					+ "A/DOM: " + dom);
		}

		mv.addObject("subareaStandings", subareaStandings);

		mv.setViewName("WEB-INF/views/brokerageStandings.jsp");

		return mv;

	}

//	getHotAreasReport

	@RequestMapping(path = "getHotAreasReport.do", params = { "startDate", "endDate" }, method = RequestMethod.GET)
	public ModelAndView getHotAreasReport(String startDate, String endDate) throws SQLException {
		ModelAndView mv = new ModelAndView();

		List<String> areaStandings = new ArrayList<>();
		List<Object[]> stats = housedao.getHotAreasReport(startDate, endDate);

		for (Object[] objects : stats) {
			String area = objects[0].toString();
			String countSales = objects[1].toString();
			String avgPrice = objects[2].toString();
			String avgListPrice = objects[3].toString();
			String percentCpLp = objects[4].toString();
			String dom = objects[5].toString();
			areaStandings.add("A:" + area + ", # Sales:" + countSales + ", A/P:$" + avgPrice + ", A/L:$"
					+ avgListPrice + ", " + percentCpLp + "% LPR, " + "A/DOM: "
					+ dom);
		}

		mv.addObject("areaStandings", areaStandings);

		mv.setViewName("WEB-INF/views/brokerageStandings.jsp");

		return mv;

	}
}
