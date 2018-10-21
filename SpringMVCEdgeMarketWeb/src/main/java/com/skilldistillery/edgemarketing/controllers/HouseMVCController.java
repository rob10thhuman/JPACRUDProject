package com.skilldistillery.edgemarketing.controllers;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(path="getId.do", params="id", method = RequestMethod.GET)
	public ModelAndView getHouseById(int id) throws SQLException {
		ModelAndView mv = new ModelAndView();
		House house = null;
		house = housedao.getHouseById(id);
		System.out.println("House after retrieval: " + "\n" + house);
		mv.addObject("house", house);
		mv.setViewName("WEB-INF/views/result.jsp");

		return mv;
	}
	
	@RequestMapping(path="getMLS.do", params="mls", method = RequestMethod.GET)
	public ModelAndView getHouseByMLS(String mls) throws SQLException {
		ModelAndView mv = new ModelAndView();
		House house = null;
		house = housedao.getHouseByMLS(mls);
		System.out.println("House after retrieval: " + "\n" + house);
		mv.addObject("house", house);
		mv.setViewName("WEB-INF/views/result.jsp");

		return mv;
	}
	
	@RequestMapping(path="addHouse.do", method = RequestMethod.GET)
	public ModelAndView addHouse(House house) throws SQLException {
		ModelAndView mv = new ModelAndView();
		house = housedao.addHouse(house);
		System.out.println("House after retrieval: " + "\n" + house);
		mv.addObject("house", house);
		mv.setViewName("WEB-INF/views/result.jsp");
		
		return mv;
	}
	
	@RequestMapping(path="deleteHouse.do", params="id", method = RequestMethod.GET)
	public ModelAndView deleteHouse(int id) throws SQLException {
		ModelAndView mv = new ModelAndView();
		boolean result = housedao.deleteHouse(id); 
		
		mv.setViewName("WEB-INF/views/deleted.jsp");
		
		return mv;
	}
	
	@RequestMapping(path="editHouse.do", params="mls", method = RequestMethod.GET)
	public ModelAndView deleteHouse(String mls) throws SQLException {
		ModelAndView mv = new ModelAndView();
		House house = housedao.editHouse(mls);
		mv.addObject("house", house);
		mv.setViewName("WEB-INF/views/editHouse.jsp");
		
		return mv;
	}
	
	@RequestMapping(path="updateHouse.do", method = RequestMethod.GET)
	public ModelAndView updateHouse(int id, House updatedHouse) throws SQLException {
		ModelAndView mv = new ModelAndView();
		updatedHouse = housedao.updateHouse(id, updatedHouse);
		mv.addObject("house", updatedHouse);
		mv.setViewName("WEB-INF/views/result.jsp");
		
		return mv;
	}
	
	@RequestMapping(path="getAVG.do", method = RequestMethod.GET)
	public ModelAndView getAvgPrice() throws SQLException {
		ModelAndView mv = new ModelAndView();
		Double stat; 
		stat = housedao.getAvgPrice();
		System.out.println("stat after retrieval: " + "\n" + stat);
		mv.addObject("stat", stat);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;
	}
	
	@RequestMapping(path="getAVGYTD.do", method = RequestMethod.GET)
	public ModelAndView getAvgPriceYTD() throws SQLException {
		ModelAndView mv = new ModelAndView();
		Double stat; 
		stat = housedao.getAvgPriceYTD();
		System.out.println("stat after retrieval: " + "\n" + stat);
		mv.addObject("stat", stat);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}
	
	@RequestMapping(path="getAVGYTDStats.do", method = RequestMethod.GET)
	public ModelAndView getAvgYTDStats() throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String>ytdStats = new ArrayList<>(); 
		List<Object[]> stats = housedao.getAvgPriceYTDStats();
		
		System.out.println("stat after retrieval: " + "\n" + stats);
		mv.addObject("stats", stats); 
		
		for (Object[] objects : stats) {
			String avgPrice = objects[0].toString().substring(0,9);
			String avgConcessions = objects[1].toString().substring(0,7);
			ytdStats.add("Average sales price YTD: $" + avgPrice + " and the " + 
			"average seller's concessions are: $" + avgConcessions);
		}
		
		mv.addObject("ytdStats", ytdStats);
		
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}
	
	@RequestMapping(path="getAVGYTDStatsByAgent.do", params="NRDS", method = RequestMethod.GET)
	public ModelAndView getAvgYTDStatsByAgent(String NRDS) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String>agentYtdStats = new ArrayList<>(); 
		List<Object[]> stats = housedao.getAgentAvgPriceYTDStats(NRDS);
		
		for (Object[] objects : stats) {
			String avgPrice = objects[0].toString();
			String avgConcessions = objects[1].toString();
			agentYtdStats.add("Average sales price YTD: $" + avgPrice + " and the " +  
			"average seller's concessions are: $" + avgConcessions);
		}
		
		mv.addObject("agentYtdStats", agentYtdStats);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}
	
	@RequestMapping(path="getBrokerageDeals.do", params="brokerage", method = RequestMethod.GET)
	public ModelAndView getBrokerageDeals(String brokerage) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<String>brokerageYtdStats = new ArrayList<>(); 
		List<Object[]> stats = housedao.getBrokerageDeals(brokerage);
		
		for (Object[] objects : stats) {
			String avgPrice = objects[0].toString();
			String avgConcessions = objects[1].toString();
			brokerageYtdStats.add("Average sales price YTD: $" + avgPrice + " and the " +  
			"average seller's concessions are: $" + avgConcessions);
		}
		
		mv.addObject("brokerageYtdStats", brokerageYtdStats);
		mv.setViewName("WEB-INF/views/stats.jsp");

		return mv;

	}

	@RequestMapping(path="getHomesInDateRangeAsHyperlinks.do", params="closedDate", method = RequestMethod.GET)
	public ModelAndView getHomesInDateRangeAsHyperlinks(String closedDate) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Object[]> housesInDateRange = housedao.getHomesInDateRangeAsHyperlinks(closedDate);
		
		
		mv.addObject("housesInDateRange", housesInDateRange);
		mv.setViewName("WEB-INF/views/housesInDateRange.jsp");

		return mv;

	}

}
