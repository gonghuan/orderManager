package edu.seu.cs.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.seu.cs.dto.GoodsInfoDto;
import edu.seu.cs.mapper.GoodsMapper;
import edu.seu.cs.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {
	@Resource(name="goodsMapper")
	private GoodsMapper goodsMapper;
	@Override
	public String testSelect(String bankCode) {
		// TODO Auto-generated method stub
		return goodsMapper.testSelect(bankCode);
	}
	@Override
	public List<String> getAllGoodsName() {
		// TODO Auto-generated method stub
		return goodsMapper.selectAllGoodsName();
	}
	@Override
	public GoodsInfoDto getDetailGoodsInfoByName(String name) {
		// TODO Auto-generated method stub
		return goodsMapper.getDetailGoodsInfoByName(name);
	}

}
