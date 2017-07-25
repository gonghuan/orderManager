package edu.seu.cs.service;

import java.util.List;

import javax.annotation.Resource;

import edu.seu.cs.dto.GoodsInfoDto;
import edu.seu.cs.mapper2.GoodsMapper2;

public interface GoodsService {
	public String testSelect(String bankCode);
	public List<String> getAllGoodsName();
	public List<String> getSpecifications(String name);
	public List<String> getColors(String name, String specification);
	public GoodsInfoDto getDetailGoodsInfoByName(String name);
	public GoodsInfoDto getDetailGoodsInfo(String name, String specification, String color, String level);
	public List<GoodsInfoDto> getAllCodeAndImg();
	public void setCodeAndImg(String code, String imagePath);
}
