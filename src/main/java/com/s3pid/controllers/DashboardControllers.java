package com.s3pid.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/secured")
@SessionAttributes({ "dashboardForm" })
public class DashboardControllers {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(DashboardControllers.class);
	
	@RequestMapping("/admin")
	public ModelAndView getAdminPage() {
		ModelAndView dashboardView = new ModelAndView("secured.dashboard.admin", HttpStatus.OK);
		return dashboardView;
	}

	@RequestMapping("/government")
	public ModelAndView getGovernmentPage() {
		// TODO: Government landing page
		LOGGER.info("!! Government staff successfully authenticated !!");
		ModelAndView dashboardView = new ModelAndView("secured.dashboard.government", HttpStatus.OK);
		return dashboardView;
	}

	@RequestMapping("/institute")
	public ModelAndView getInstitutePage() {
		// TODO: Institute landing page
		LOGGER.info("!! Institue member successfully authenticated !!");
		ModelAndView dashboardView = new ModelAndView("secured.dashboard.institute", HttpStatus.OK);
		return dashboardView;
	}
	
	@RequestMapping("/public")
	public ModelAndView getPublicPage() {
		// TODO: Public landing page
		LOGGER.info("!! Public user successfully authenticated  !!");
		ModelAndView dashboardView = new ModelAndView("secured.dashboard.public", HttpStatus.OK);
		return dashboardView;
	}
}
