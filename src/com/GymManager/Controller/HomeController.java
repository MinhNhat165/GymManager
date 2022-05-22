package com.GymManager.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/homepage/")
public class HomeController {
	@RequestMapping("index")
	public String index(HttpServletRequest request, HttpSession session) {
		return "homepage/index";
	}

	@RequestMapping("log-in")
	public String login(HttpServletRequest request, HttpSession session) {
		return "homepage/log-in";
	}

	@RequestMapping("sign-up")
	public String signup(HttpServletRequest request, HttpSession session) {
		return "homepage/sign-up";
	}
	
	@RequestMapping("user-infor")
	public String userinfor(HttpServletRequest request, HttpSession session) {
		return "homepage/user-infor";
	}
}
