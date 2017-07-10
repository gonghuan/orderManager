package edu.seu.cs.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.seu.cs.model.User;
import edu.seu.cs.service.UserService;
@Controller
public class UserController {
	@Resource(name="userServiceImpl")
	private UserService userService;
	
	@RequestMapping(value="getUserByName")
	public @ResponseBody User getUserByName(HttpServletRequest request, HttpServletResponse response){
		String userName = request.getParameter("userName");
		User user = userService.selectByName(userName);
		request.getSession().setAttribute("user", user);
		return user;
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(@RequestParam String shortName, HttpServletRequest request, Model model){
		shortName = shortName.trim().toUpperCase();
		User user = userService.login(shortName);
		if(user != null){
			request.getSession().setAttribute("user", user);
			return "/index";
		}else{
			model.addAttribute("error", "error");
			return "/login";
		}
	}
}
