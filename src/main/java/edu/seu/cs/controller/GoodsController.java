package edu.seu.cs.controller;

import java.io.UnsupportedEncodingException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.seu.cs.service.GoodsService;

@Controller
public class GoodsController {
	
	@Resource(name="goodsServiceImpl")
	private GoodsService goodsService;
	
	@RequestMapping(value="/getBankName")
	public @ResponseBody String getBankName(@RequestParam String bankCode) throws UnsupportedEncodingException{
		String resultSet = goodsService.testSelect(bankCode);
		System.out.println(resultSet);
		byte[] bytes = resultSet.getBytes();
		String result = new String(bytes, "UTF-8");
		System.out.println(result);
		return resultSet;
	}
}
