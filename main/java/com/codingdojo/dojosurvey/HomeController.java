package com.codingdojo.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	

	@RequestMapping(value="/", method=RequestMethod.POST)
	public String index(HttpSession session, @RequestParam(value="name") String name, @RequestParam(value="dojo") String dojo, @RequestParam(value="language") String language, @RequestParam(value="comment") String comment) {
		
		// set the inbound form variables to the session and send them over to the /result route
		session.setAttribute("name", name);
		session.setAttribute("dojo", dojo);
		session.setAttribute("language", language);
		session.setAttribute("comment", comment);
		
		return "redirect:/result";
	}
	
		
	@RequestMapping("/result")
	public String result(Model model, HttpSession session) {
		
		// declared variables to hold session attributes
		String name = (String) session.getAttribute("name");
		String dojo = (String) session.getAttribute("dojo");
		String language = (String) session.getAttribute("language");
		String comment = (String) session.getAttribute("comment");
		
		// add variables to the model object to pass to the results page view for rendering
		model.addAttribute("name",name);
		model.addAttribute("dojo",dojo);
		model.addAttribute("language",language);
		model.addAttribute("comment",comment);
		
		return "result.jsp";
	}
	
	
	
}
