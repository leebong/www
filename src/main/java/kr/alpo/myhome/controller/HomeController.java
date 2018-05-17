/*package kr.alpo.myhome.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

*//**
 * Handles requests for the application home page.
 *//*
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	*//**
	 * Simply selects the home view to render by returning its name.
	 *//*
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
}*/




package kr.alpo.myhome.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.alpo.myhome.dao.Mapper;
import kr.alpo.myhome.dao.User;

@Controller
@RequestMapping(value="/")
public class HomeController {
	
	@Autowired
	Mapper mapper;
	

	User user;
	
	@RequestMapping(value="/main", method= RequestMethod.GET)
	public String main() {
		return "main";
	}
	
	@RequestMapping(value="/test1", method= RequestMethod.GET)
	public String test1() {
		return "test1";
	}
	
	@RequestMapping(value="/test2", method= RequestMethod.GET)
	public String test2() {
		return "test2";
	}
	
	@RequestMapping(value="/", method= RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value="/login", method= RequestMethod.GET)
	public String login() {
		return "login";
	}
	
		
	@RequestMapping(value="login", method= RequestMethod.POST)
	public String login(String id, String pw) {
			return "redirect:/login_ok";

	}
	
	
	@RequestMapping(value="/login_ok", method= RequestMethod.GET)
	public String login_okGet(String id, String pw, Model model) {
		model.addAttribute("id", id);
		return "/login_ok";
	}
	
	@RequestMapping(value="/login_ok", method= RequestMethod.POST)
	public String login_okPost(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		String pw= request.getParameter("pw");
		User user = mapper.getUser(id);
		if(user == null) //계정을 못찾은 경우
			return "redirect:/login";
		//계정은 찾았지만 비번이 틀린 경우
		else if(user.getPw().compareTo(pw) != 0)
			return "redirect:/login";
		return "/login_ok";
	}
	
	
	@RequestMapping(value="/test", method= RequestMethod.POST)
	public String testPost(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		User tmp = mapper.getUser(id);
		model.addAttribute("user", tmp);
		return "/test";

	}
	
}




