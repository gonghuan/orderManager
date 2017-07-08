package edu.seu.cs.service;

import java.util.List;

import edu.seu.cs.dto.GoodsInfoDto;

public interface GoodsService {
	public String testSelect(String bankCode);
	public List<String> getAllGoodsName();
	public GoodsInfoDto getDetailGoodsInfoByName(String name);
}
