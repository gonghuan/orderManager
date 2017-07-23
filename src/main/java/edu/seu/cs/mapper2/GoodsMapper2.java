package edu.seu.cs.mapper2;

import java.util.List;

import edu.seu.cs.dto.GoodsInfoDto;

public interface GoodsMapper2 {
	public List<String> selectAllGoodsName();
	public List<String> selectNull();
	public List<String> selectSpecifications(String name);
	public GoodsInfoDto getDetailGoodsInfoByName(String name);
}
