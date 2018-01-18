package com.ugarsoft.cryptoex.controller.home;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ugarsoft.cryptoex.util.ViewEnums;

@Controller
public class HomeController {
	
	@RequestMapping(value="/")
	public String home(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("bodyRoute","login");
		return "auth";
	}
	
	@RequestMapping(value="/index")
	public String indexPage(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("bodyRoute", ViewEnums.LOGIN_VIEW.toString());
		return "auth";
	}
	
	@RequestMapping(value="/login")
	public String loginPage(HttpServletRequest request, HttpServletResponse response) {
		return ViewEnums.LOGIN_VIEW.toString();
	}
	
}
