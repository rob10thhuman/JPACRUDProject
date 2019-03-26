package com.skilldistillery.edgemarketing.controllers;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.edgemarketing.data.ClientDAO;
import com.skilldistillery.edgemarketing.entities.Client;

@Controller
public class ClientMVCController {
	
	@Autowired
	ClientDAO clientDAO;

	public ClientDAO getClientDAO() {
		return clientDAO;
	}

	public void setClientDAO(ClientDAO clientDAO) {
		this.clientDAO = clientDAO;
	} 
	
	@RequestMapping(path = "getClientByLastName.do", params = "lastName", method = RequestMethod.GET)
	public ModelAndView getHouseByMLS(String lastName) throws SQLException {
		ModelAndView mv = new ModelAndView();
		Client client = null;
		client = clientDAO.getClientByLastName(lastName); 
		System.out.println("Client after retrieval: " + "\n" + client);
		mv.addObject("client", client);
		mv.setViewName("WEB-INF/views/result.jsp");

		return mv;
	}
	

}
