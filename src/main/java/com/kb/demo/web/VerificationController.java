package com.kb.demo.web;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kb.demo.model.SecurityQuestion;
import com.kb.demo.model.Verification;

@Controller
public class VerificationController {
	
	private final Logger logger = LoggerFactory.getLogger(VerificationController.class);
	/*
	 * This method will serve as default GET handler of question verification 
	 */
	@RequestMapping(value="/verify", method=RequestMethod.GET)
	public String loadVerifyPage(ModelMap m) {
		logger.debug("loadVerifyPage() is executed!");
		
		Verification verification = new Verification();
		m.addAttribute("verification", verification);
		return "verify";
	}
	/*
	 * This method will serve as default POST handler of question verification 
	 */
	@RequestMapping(value="/verify", method=RequestMethod.POST)
	public ModelAndView verifyUserAnswer(@Valid @ModelAttribute("verification")Verification verification, 
			BindingResult result, HttpSession session, HttpServletRequest request) {
		logger.debug("verifyUserAnswer() is executed!");
		
		// make sure a question is chosen and answer is provided
		if(result.hasErrors()){
			ModelAndView model = new ModelAndView("verify");
			model.addObject(new Verification());
			return model;
		}
		
		Map<String, String> questions = (Map<String, String>) request.getSession().getAttribute("questions");
		// Check if the answer to the question matches the saved record
		if (questions.containsKey(verification.getQuestion()))
			if(questions.get(verification.getQuestion()).equals(verification.getAnswer())) {
				ModelAndView model = new ModelAndView("redirect:/welcome");
				return model;
			}
		
		ModelAndView model = new ModelAndView();
		model.addObject("error", "Wrong Answer");
		model.setViewName("verify");
		return model;	
		
	}
	
	/*
     * Method used to populate the Question list in view.
     */
    @ModelAttribute("questionList")
    public List<String> initializeSections() {
 
        List<String> questions = new ArrayList<String>();
        questions.add("When were you born?");
        questions.add("What is your favorite color?");
        questions.add("What is the model of your first car?");
        return questions;
    }
}
