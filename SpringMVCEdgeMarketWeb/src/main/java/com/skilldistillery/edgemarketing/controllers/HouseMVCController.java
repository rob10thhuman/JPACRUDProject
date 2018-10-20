package com.skilldistillery.edgemarketing.controllers;

import java.sql.SQLException;

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
	
	@RequestMapping(path="UpdateHouse.do", method = RequestMethod.GET)
	public ModelAndView updateHouse(House house) throws SQLException {
		ModelAndView mv = new ModelAndView();
		house = housedao.updateHouse(house);
		mv.addObject("house", house);
		mv.setViewName("WEB-INF/views/editHouse.jsp");
		
		return mv;
	}
	
	

}
