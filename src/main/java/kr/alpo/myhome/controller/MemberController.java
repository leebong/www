package kr.alpo.myhome.controller;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.alpo.myhome.dao.Mapper;

@Controller
@RequestMapping(value="/member/*")
public class MemberController {

	@Autowired
	Mapper mapper;
	
	@RequestMapping(value="/member/signup", method= RequestMethod.GET)
	public String signupGet() {
		return "/member/signup";
	}
	
	@RequestMapping(value="/member/signupsuccess", method= RequestMethod.GET)
	public String signupsuccess() {
		return "/member/signupsuccess";
	}
	
	@RequestMapping(value="/member/signupsuccess", method= RequestMethod.POST)
	public String signupsuccess(HttpServletRequest request, Model model) {
		String name= request.getParameter("name");
		String id = request.getParameter("id");
		String pw= request.getParameter("pw");
		String phone= request.getParameter("phone");
		String email= request.getParameter("email");
		String addr= request.getParameter("addr");
		if(mapper.getUser(id) != null)
			return "redirect:/member/signup";
		mapper.setUser(name, id, pw, phone, email, addr);
		return "redirect:/member/signupsuccess";
	}

	
	
}
