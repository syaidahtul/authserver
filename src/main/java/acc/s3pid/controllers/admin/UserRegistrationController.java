package acc.s3pid.controllers.admin;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import acc.s3pid.forms.LoginForm;
import acc.s3pid.forms.UserRegistrationForm;
import acc.s3pid.services.UserService;
import acc.s3pid.validators.RegistrationFormValidator;

@Controller
@RequestMapping("/secured/admin")
@SessionAttributes({ "userRegistrationForm" })
public class UserRegistrationController {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserRegistrationController.class);

	@Autowired
	UserService userService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
	}
	
	@GetMapping("/user")
	public ModelAndView getUsersPage() {
		ModelAndView userregistration = new ModelAndView("secured.registration.user", HttpStatus.OK);
		userregistration.addObject("userRegistrationForm", new UserRegistrationForm());
		
		return userregistration;
	}

	
	@PostMapping("/registration")
	public ModelAndView postregistrationForm(Locale locale, HttpServletRequest req, HttpServletResponse resp, Model model,
			@ModelAttribute("userRegistrationForm") UserRegistrationForm userRegistrationForm, BindingResult result) {
		
		ModelAndView userregistration = new ModelAndView("secured.registration.user", HttpStatus.OK);
		
		RegistrationFormValidator validator = new RegistrationFormValidator(userService);
		validator.validate(userRegistrationForm, result);
		
		if (result.hasErrors()) {
			userregistration.addObject("message", result);
			return null;
		} else {
			LOGGER.info("!!! User registrataion success !!!");
			userService.createUser(userRegistrationForm);
			userregistration.addObject("loginForm", new LoginForm());
			userregistration.addObject("registrationForm", new UserRegistrationForm());
			userregistration.addObject("message", new UserRegistrationForm());
			userregistration.setStatus(HttpStatus.OK);
			return userregistration;
		}
		
	}
}
