package acc.s3pid.controllers;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import acc.s3pid.forms.UserForm;
import acc.s3pid.forms.UserRegistrationForm;
import acc.s3pid.forms.UserSearchForm;
import acc.s3pid.forms.UsersResultForm;
import acc.s3pid.helpers.WebConstant;

@Controller
@RequestMapping("/secured/admin")
@SessionAttributes({ "userForm", "userSearchForm", "usersResultForm" })
public class UserManagementController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		
	}

	@RequestMapping(value = "/users", method = RequestMethod.GET)
	public ModelAndView getUsers() {
		LOGGER.info("! Admin: List of User !");
		ModelAndView userView = new ModelAndView("secured.admin.usermanagement", HttpStatus.OK);
		userView.setStatus(HttpStatus.OK);
		UserForm userForm = new UserForm();
		userView.addObject("userForm", userForm);
		userView.addObject("userSearchForm", new UserSearchForm());
		userView.addObject("usersResultForm", new UsersResultForm());
		return userView;
	}

	@RequestMapping(value = "/users", method = RequestMethod.POST)
	public ModelAndView getUsersPage(Locale locale, HttpServletRequest req, HttpServletResponse resp, Model model,
			@ModelAttribute("userSearchForm") UserSearchForm userSearchForm, BindingResult result) {

		ModelAndView userView = new ModelAndView();
		if (WebConstant.ACTION_BACK.equalsIgnoreCase(userSearchForm.getAction())) {
			userView.setViewName(WebConstant.VIEW_DASHBOARD);
		}
		
		if (WebConstant.ACTION_SEARCH.equalsIgnoreCase(userSearchForm.getAction())) {
			userView.setViewName(WebConstant.VIEW_DASHBOARD);
		}
		
		if (WebConstant.ACTION_NEW.equalsIgnoreCase(userSearchForm.getAction())) {
			userView.setViewName("secured.admin.usermanagement.create");
		}
		
		LOGGER.info("! Users !");
		userView.setStatus(HttpStatus.OK);
		userView.addObject("userForm", new UserForm());
		userView.addObject("userRegistrationForm", new UserRegistrationForm());
		return userView;
	}

	@PostMapping("/user/search")
	public void getUsersResult(Locale locale, HttpServletRequest req, HttpServletResponse resp, Model model,
			@ModelAttribute("userSearchForm") UserSearchForm userSearchForm, BindingResult result) {
		LOGGER.info("! Search USERS !");
	}

	@GetMapping("/user/new")
	public void getUsersResult() {
		LOGGER.info("! Create New User !");
		
	}

	@PostMapping("/user/new")
	public void createUser(Locale locale, HttpServletRequest req, HttpServletResponse resp, Model model,
			@ModelAttribute("userForm") UserForm userForm, BindingResult result) {
		
	}

	@PutMapping("/user/update")
	public void updateUser(Locale locale, HttpServletRequest req, HttpServletResponse resp, Model model,
			@ModelAttribute("userForm") UserForm userForm, BindingResult result) {
		
	}
	
}