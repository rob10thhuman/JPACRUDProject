package com.skilldistillery.edgemarketing.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.edgemarketing.entities.Title;

@Service
public interface TitleService {
	
	Title show(Integer id);
	
	List<Title> getAll();
	
	List<Object[]> getRankedList();
}
