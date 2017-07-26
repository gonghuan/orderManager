package edu.seu.cs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	@RequestMapping(value="index")
	public String getIndex(){
		return "/index";
	}
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String getLogin(){
		return "/login";
	}
	
	@RequestMapping(value="test")
	public String getTest(){
		return "/test";
	}
	
	@RequestMapping(value="uploadImage")
	public String getUploadImage(){
		return "/uploadImage";
	}
	
	@RequestMapping(value="indexAA")
	public String getIndexAA(){
		return "/indexAA";
	}
}
