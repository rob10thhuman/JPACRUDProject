package com.skilldistillery.edgemarketing.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skilldistillery.edgemarketing.entities.Client;
import com.skilldistillery.edgemarketing.entities.House;
import com.skilldistillery.edgemarketing.services.ClientService;

@RestController
@RequestMapping("api") 
@CrossOrigin({ "*", "http://localhost:4200" })
public class ClientController {

	@Autowired
	private ClientService clientServ;
	
	public ClientController(ClientService clientServ) {
		this.clientServ = clientServ;
	}
	
	@GetMapping(value = "client/index/all")
	public List<Client> getAll() {
		return clientServ.getAll();
	}
	
	@GetMapping(value = "client/index/{id}")
	public Client show(@PathVariable("id") Integer id) {
		return clientServ.show(id);
	}
	
	@GetMapping(value = "client/showall")
	public List<Client> displayAll() {
		return clientServ.getAll();
	}
	
}
