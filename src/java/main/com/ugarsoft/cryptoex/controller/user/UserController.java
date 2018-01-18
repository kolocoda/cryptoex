package com.ugarsoft.cryptoex.controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.google.gson.Gson;
import com.ugarsoft.cryptoex.buisnesslogic.UserLogic;
import com.ugarsoft.cryptoex.model.User;



@Controller
@RequestMapping(value = "/user")
public class UserController {
	private String MAIN_VIEW = "main/";
	private String PARTIAL_VIEW = "partial/";
	@Autowired
	private UserLogic userLogic;

	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public  String registration(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("message","you are welcome");
		return PARTIAL_VIEW+"user/register";
	}
	
	@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED)
	@RequestMapping(value="/process-registration", method=RequestMethod.POST)
	public String processRegistration(@ModelAttribute @Validated User user,Model model){
		Boolean msg = userLogic.create(user);
		if(msg){
		String message = "User created Successfully.";
		model.addAttribute("message", message);	
		}else{
		String message = "User not-created.";
		model.addAttribute("message", message);
		}
		model.addAttribute("user", new User());
		return MAIN_VIEW+"user/user-auth-base";
	}
	
	
	
	// process login detail
	@RequestMapping(value = "/process-login", method = RequestMethod.POST)
	public @ResponseBody String adminLogin(HttpServletRequest request, String userName, String password){
		HttpSession session= request.getSession();
		User user = userLogic.loginUser(userName, password);
		 if(user != null && !user.equals("")){
			session.setAttribute("user", user);
			return "true";
		 }
		return "false";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public  String userDashboard(HttpServletRequest request, HttpServletResponse response) {
		return MAIN_VIEW+"user/home";
	}
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public  String userProfile(HttpServletRequest request, HttpServletResponse response) {
		return PARTIAL_VIEW+"user/login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public  String logout(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		HttpSession session = request.getSession(false);
		if (auth != null) {
			session.invalidate();
			new SecurityContextLogoutHandler().logout(request,  response, auth);
			SecurityContextHolder.getContext().setAuthentication(null);
		}
		return "redirect:/";
		
	}
	
	
	
}
