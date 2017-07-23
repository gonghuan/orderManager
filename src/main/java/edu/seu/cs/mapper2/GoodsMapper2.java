package edu.seu.cs.mapper2;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.seu.cs.dto.GoodsInfoDto;

public interface GoodsMapper2 {
	public List<String> selectAllGoodsName();
	public List<String> selectNull();
	public List<String> selectSpecifications(String name);
	public List<String> selectColors(@Param(value = "name") String name, @Param(value = "specification") String specification);
	public GoodsInfoDto getDetailGoodsInfoByName(String name);
	public GoodsInfoDto selectCodeAndPrice(@Param(value="name") String name, @Param(value = "specification") String specification, 
			@Param(value="color") String color, @Param(value="level") String level);
	public GoodsInfoDto selectCodeAndPriceByCode(@Param(value="code") String code, @Param(value = "specification") String specification, 
			@Param(value="color") String color, @Param(value="level") String level);
}
