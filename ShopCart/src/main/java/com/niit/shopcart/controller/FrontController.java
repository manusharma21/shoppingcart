package com.niit.shopcart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class FrontController {
	@RequestMapping("/")
	public String showIndex(){
		return "index";
		
	}
	@RequestMapping("/signin")
	public String showSignin(){
		
		return "signin";
	}
	@RequestMapping("/contact")
	public String showContact(){
		
		return "contact";
	}

}
