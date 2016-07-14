package com.niit.shopcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shopcart.dao.UserDao;
import com.niit.shopcart.dao.UserImpl;



@Controller
public class UserController {
	
	@Autowired
	UserImpl userImpl;
	
	@RequestMapping("/isValidUser")
	public ModelAndView isValidUser(@RequestParam(value="id") String id, @RequestParam(value="password") String password){
		System.out.println("User Controller");
		System.out.println(id+" "+password);
		if(userImpl.isValidUser(id, password, true)){
			ModelAndView mv = new ModelAndView("/adminPage");
			return mv;
		}
		else{
			ModelAndView mv = new ModelAndView("/signin");
			return mv;
		}
		
	}
	
	@RequestMapping("/adminPage")
	public ModelAndView showAdmin(){
		ModelAndView mv = new ModelAndView("adminPage");
		return mv;
	}
	
}
