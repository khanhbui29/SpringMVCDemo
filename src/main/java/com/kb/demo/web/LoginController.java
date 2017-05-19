package com.kb.demo.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kb.demo.model.Login;
import com.kb.demo.model.UserInformation;



@Controller
public class LoginController {
	private final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loadLoginPage(ModelMap m) {
		logger.debug("loadLoginPage() is executed!");
		
		Login login = new Login();
		m.addAttribute("login", login);
		return "login";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView processLogin(@ModelAttribute("login")Login login, ModelMap modelmap,HttpSession session, HttpServletRequest request) {
		if(login.getUserName().equals((String)request.getSession().getAttribute("userName"))){
			
			logger.debug("processLogin() is executed!");
			
			ModelAndView model = new ModelAndView("redirect:/verify");
			//model.addObject(new Login());
			return model;
		} else {
			ModelAndView model = new ModelAndView();
			model.addObject("error", "Invalid User Name");
			model.setViewName("login");
			return model;
		}
	}

}
