package edu.seu.cs.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.seu.cs.model.User;
import edu.seu.cs.service.UserService;
@Controller
public class UserController {
	@Resource(name="userServiceImpl")
	private UserService userService;
	
	@RequestMapping(value="getUserByName")
	public @ResponseBody User getUserByName(HttpServletRequest request){
		String userName = request.getParameter("userName");
		User user = userService.selectByName(userName);
		request.getSession().setAttribute("user", user);
		return user;
	}
}
