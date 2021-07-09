package com.erproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		
	
		
		return "home";
	}
	
}


<<<<<<< HEAD









=======
>>>>>>> 5d9c37c3e48de6d8f710bae96933053d2e6c9050
