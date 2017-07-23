package edu.seu.cs.service;

import java.util.List;

import edu.seu.cs.dto.GoodsInfoDto;

public interface GoodsService {
	public String testSelect(String bankCode);
	public List<String> getAllGoodsName();
	public List<String> getSpecifications(String name);
	public List<String> getColors(String name, String specification);
	public GoodsInfoDto getDetailGoodsInfoByName(String name);
	public GoodsInfoDto getDetailGoodsInfo(String name, String specification, String color, String level);
}
