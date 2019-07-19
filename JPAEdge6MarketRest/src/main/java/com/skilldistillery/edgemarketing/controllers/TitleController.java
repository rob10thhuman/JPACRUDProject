package com.skilldistillery.edgemarketing.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skilldistillery.edgemarketing.entities.Client;
import com.skilldistillery.edgemarketing.entities.Title;
import com.skilldistillery.edgemarketing.services.TitleService;

@RestController
@RequestMapping("api")
@CrossOrigin({"*", "http://localhost:4200" })
public class TitleController {

	@Autowired
	private TitleService titleServ;
	
	public TitleController(TitleService titleServ) {
		this.titleServ = titleServ;	
	}
	
	@GetMapping(value = "title/index/all")
	public List<Title> getAll() {
		return titleServ.getAll();
	}
	
	@GetMapping(value = "title/rankedlist")
	public List<Object[]> rankedList() {
		return titleServ.getRankedList();
	}
}
