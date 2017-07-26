package edu.seu.cs.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.seu.cs.dto.GoodsInfoDto;
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
	
	/*@RequestMapping(value="/getAllGoodsName")
	public @ResponseBody List<String> getAllGoodsName(){
		List<String> resultSet = goodsService.getAllGoodsName();
		return resultSet;
	}*/
	@RequestMapping(value="/getAllGoodsName")
	public @ResponseBody List<String> getAllGoodsName(){
		List<String> resultSet = goodsService.getAllGoodsName();
		return resultSet;
	}
	
	@RequestMapping(value="/getDetailGoodsInfoByName")
	public @ResponseBody GoodsInfoDto getDetailGoodsInfoByName(@RequestParam String name){
		GoodsInfoDto result = goodsService.getDetailGoodsInfoByName(name);
		return result;
	}
	
	@RequestMapping(value="getSpecifications")
	public @ResponseBody List<String> getSpecifications(@RequestParam String name){
		return goodsService.getSpecifications(name);
	}
	
	@RequestMapping(value="getColors")
	public @ResponseBody List<String> getColors(@RequestParam String name, @RequestParam String specification){
		return goodsService.getColors(name, specification);
	}
	
	@RequestMapping(value="getDetailGoodsInfo")
	public @ResponseBody GoodsInfoDto getDetailGoodsInfo(@RequestParam String name, @RequestParam String specification,
			@RequestParam String color, @RequestParam String level){
		return goodsService.getDetailGoodsInfo(name, specification, color, level);
	}
	
	
	@RequestMapping(value="/getAllGoodsNameForAA")
	public @ResponseBody List<String> getAllGoodsNameForAA(){
		List<String> resultSet = goodsService.getAllGoodsNameForAA();
		return resultSet;
	}
	
	@RequestMapping(value="getDetailGoodsInfoForAA")
	public @ResponseBody GoodsInfoDto getDetailGoodsInfoForAA(@RequestParam String code){
		return goodsService.getDetailGoodsInfoForAA(code);
	}
}
