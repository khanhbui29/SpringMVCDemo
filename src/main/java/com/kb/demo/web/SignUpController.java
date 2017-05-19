package com.kb.demo.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kb.demo.model.UserInformation;

@Controller
public class SignUpController {
	private final Logger logger = LoggerFactory.getLogger(SignUpController.class);
	/*
	 * This method will serve as default GET handler of signup 
	 */
	@RequestMapping(value="/signup", method=RequestMethod.GET)
	public String loadSignUpPage(ModelMap m) {
		
		logger.debug("loadSignUpPage() is executed!");
		
		UserInformation userinfo = new UserInformation();
		m.addAttribute("userinfo", userinfo);
		return "signupForm";
	}
	
	@RequestMapping(value="/signup", method=RequestMethod.POST)
	public ModelAndView saveUserInfo(@Valid @ModelAttribute("userinfo")UserInformation userinfo, 
			BindingResult result, HttpSession session ) {
		
		logger.debug("saveUserInfo() is executed!");
		
		if(result.hasErrors()){
			ModelAndView model = new ModelAndView("signupForm");
			model.addObject(new UserInformation());
			return model;
		}
		//m.addAttribute("success", userinfo);
		session.setAttribute("userName", userinfo.getUserName());
		session.setAttribute("dob", userinfo.getDob());
		ModelAndView model = new ModelAndView("redirect:/question");
		return model;
	}
	
	

}
