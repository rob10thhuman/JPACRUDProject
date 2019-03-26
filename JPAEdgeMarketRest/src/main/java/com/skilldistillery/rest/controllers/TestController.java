package com.skilldistillery.rest.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class TestController {

	@RequestMapping(path = "api/ping", method = RequestMethod.GET)
	public String ping() {
	  return "pong";
	}
}
