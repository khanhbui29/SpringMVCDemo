package com.kb.demo.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WelcomeController {
	
	private final Logger logger = LoggerFactory.getLogger(WelcomeController.class);
	
	@RequestMapping(value="/welcome", method=RequestMethod.GET)
	ModelAndView loadWelcomePage(HttpSession session, HttpServletRequest request) {
		logger.debug("loadWelcomePage() is executed!");
		if(request.getSession().getAttribute("userName").toString().isEmpty()) {
			ModelAndView model = new ModelAndView("redirect:/");
			return model;
		}
		ModelAndView model = new ModelAndView();
		model.setViewName("welcome");
		model.addObject("userName", request.getSession().getAttribute("userName"));
		
		return model;
	}
	
	@RequestMapping(value="/welcome", method=RequestMethod.POST)
	ModelAndView signout(HttpSession session, HttpServletRequest request) {
		logger.debug("signout() is executed!");
		request.getSession().invalidate();
		ModelAndView model = new ModelAndView("redirect:/");
		return model;
		
	}

}
