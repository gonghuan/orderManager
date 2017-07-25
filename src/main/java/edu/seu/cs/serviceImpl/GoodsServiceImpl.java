package edu.seu.cs.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.seu.cs.dto.GoodsInfoDto;
import edu.seu.cs.mapper.GoodsMapper;
import edu.seu.cs.mapper2.GoodsMapper2;
import edu.seu.cs.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Resource(name="goodsMapper")
	private GoodsMapper goodsMapper;
	
	@Resource(name="goodsMapper2")
	private GoodsMapper2 goodsMapper2;
	
	@Override
	public String testSelect(String bankCode) {
		// TODO Auto-generated method stub
		return goodsMapper.testSelect(bankCode);
	}
	@Override
	public List<String> getAllGoodsName() {
		// TODO Auto-generated method stub
		List<String> list= goodsMapper2.selectAllGoodsName();
		if(list.contains(null) || list.contains("")){
			list.remove(null);
			list.remove("");
			list.addAll(goodsMapper2.selectNull());
		}
		return list;
	}
	@Override
	public GoodsInfoDto getDetailGoodsInfoByName(String name) {
		// TODO Auto-generated method stub
		return goodsMapper.getDetailGoodsInfoByName(name);
	}
	@Override
	public List<String> getSpecifications(String name) {
		// TODO Auto-generated method stub
		return goodsMapper2.selectSpecifications(name);
	}
	@Override
	public List<String> getColors(String name, String specification) {
		// TODO Auto-generated method stub
		return goodsMapper2.selectColors(name, specification);
	}
	@Override
	public GoodsInfoDto getDetailGoodsInfo(String name, String specification, String color, String level) {
		// TODO Auto-generated method stub
		level = "PriceFor" + level;
		GoodsInfoDto tmp = goodsMapper2.selectCodeAndPrice(name, specification, color, level);
		GoodsInfoDto result = null;
		if(tmp == null){
			tmp = goodsMapper2.selectCodeAndPriceByCode(name, specification, color, level);
		}
		String code = tmp.getCode();
		result = goodsMapper.getDetailGoodsInfoByCode(code);
		result.setPrice(tmp.getPrice());
		result.setImagePath(tmp.getImagePath());
		return result;
	}
	@Override
	public List<GoodsInfoDto> getAllCodeAndImg() {
		// TODO Auto-generated method stub
		return goodsMapper2.selectAllCodeAndImg();
	}
	@Override
	public void setCodeAndImg(String code, String imagePath) {
		// TODO Auto-generated method stub
		goodsMapper2.updateCodeAndImg(code, imagePath);
	}

}
