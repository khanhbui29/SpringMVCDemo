package com.kb.demo.web;

import java.util.ArrayList;
import java.util.HashMap;
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
import com.kb.demo.model.UserInformation;


@Controller
public class QuestionController {
	
	private final Logger logger = LoggerFactory.getLogger(QuestionController.class);
	/*
	 * This method will serve as default GET handler of question 
	 */
	@RequestMapping(value="/question", method=RequestMethod.GET)
	public String loadQuestionPage(ModelMap m) {
		logger.debug("loadQuestionPage() is executed!");
		SecurityQuestion questions = new SecurityQuestion();
		m.addAttribute("questions", questions);
		return "question";
	}
	/*
	 * This method will serve as POST handler of question 
	 */
	@RequestMapping(value="/question", method=RequestMethod.POST)
	public ModelAndView saveUserAnswer(@Valid @ModelAttribute("questions")SecurityQuestion questions, 
			BindingResult result, HttpSession session, HttpServletRequest request) {
		
		logger.debug("saveUserAnswer() is executed!");
		
		if(result.hasErrors()){
			ModelAndView model = new ModelAndView("question");
			model.addObject(new SecurityQuestion());
			return model;
		}
		// Store the security questions and answers
		Map<String, String> securityQuestion = new HashMap<String, String>();
		securityQuestion.put(questions.getQuestion1(), questions.getAnswer1());
		securityQuestion.put(questions.getQuestion2(), questions.getAnswer2());
		securityQuestion.put(questions.getQuestion3(), questions.getAnswer3());
		session.setAttribute("questions", securityQuestion);

		ModelAndView model = new ModelAndView("redirect:/");
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
