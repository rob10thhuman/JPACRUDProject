package com.skilldistillery.edgemarketing.controllers;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.edgemarketing.data.AgentDAO;
import com.skilldistillery.edgemarketing.data.HouseDAO;
import com.skilldistillery.edgemarketing.entities.Agent;

@Controller
public class AgentMVCController {
	
	@Autowired
	AgentDAO agentDAO; 
	
	@Autowired
	HouseDAO housedao;
	
	@RequestMapping(path = "getAgentByLastName.do", params = "lastName", method = RequestMethod.GET)
	public ModelAndView getAgentByLastName(String lastName) throws SQLException {
		ModelAndView mv = new ModelAndView();
		List<Agent> agent = null;
		agent = agentDAO.getAgentByLastName(lastName); 
		System.out.println("Agent after retrieval: " + "\n" + agent);
		mv.addObject("agent", agent);
		mv.setViewName("WEB-INF/views/result.jsp");

		return mv;
	}
	
}
