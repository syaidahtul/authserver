package acc.s3pid.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import acc.s3pid.forms.LoginForm;
import acc.s3pid.forms.UserRegistrationForm;

@Controller
@RequestMapping("/auth")
@SessionAttributes({ "loginForm", "registrationForm" })
public class LoginController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
	}
	
	@RequestMapping()
	public ModelAndView getLoginForm() {
		// check if user already logged in
		ModelAndView loginView = new ModelAndView("login");
		loginView.setStatus(HttpStatus.OK);
		loginView.addObject("loginForm", new LoginForm());
		loginView.addObject("registrationForm", new UserRegistrationForm());
		return loginView;
	}
	

}
