package edu.seu.cs.mapper2;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import edu.seu.cs.dto.GoodsInfoDto;

public interface GoodsMapperAA {
	public List<String> selectAllGoodsCode();
	public GoodsInfoDto getDetailGoodsInfoByCode(String code);
	public List<GoodsInfoDto> selectAllCodeAndImg();
	public void updateCodeAndImg(@Param(value="code") String code, @Param(value="imagePath") String imagePath);
}
