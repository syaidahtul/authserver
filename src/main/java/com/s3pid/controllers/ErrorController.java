package com.s3pid.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.s3pid.forms.LoginForm;

@Controller
@RequestMapping()
public class ErrorController {
	
private static final Logger LOGGER = LoggerFactory.getLogger(ErrorController.class);
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
	}
	
	@RequestMapping("/errors")
	public ModelAndView getErrorPage() {
		ModelAndView loginView = new ModelAndView("login");
		loginView.setStatus(HttpStatus.INTERNAL_SERVER_ERROR);
		loginView.addObject("loginForm", new LoginForm());
		return loginView;
	}
}
