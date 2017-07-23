package edu.seu.cs.mapper;

import java.util.List;

import edu.seu.cs.dto.GoodsInfoDto;

public interface GoodsMapper {
	public String testSelect(String bankCode);
	public List<String> selectAllGoodsName();
	public GoodsInfoDto getDetailGoodsInfoByName(String name);
	public GoodsInfoDto getDetailGoodsInfoByCode(String code);
}
