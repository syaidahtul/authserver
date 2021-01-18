package acc.s3pid.controllers;

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
		LOGGER.info("!! Admin is here !!");
		ModelAndView dashboardView = new ModelAndView("secured.dashboard.admin", HttpStatus.OK);
		return dashboardView;
	}
	
	@RequestMapping("/dashboard")
	public ModelAndView getDashboardPage() {
		LOGGER.info("!! Admin is here !!");
		ModelAndView dashboardView = new ModelAndView("secured.dashboard.user", HttpStatus.OK);
		return dashboardView;
	}
	
	@RequestMapping()
	public ModelAndView getUserPage() {
		LOGGER.info("!! User successfully authenticated !!");
		ModelAndView dashboardView = new ModelAndView("secured.dashboard.user", HttpStatus.OK);
		return dashboardView;
	}
}
