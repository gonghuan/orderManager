package edu.seu.cs.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import edu.seu.cs.mapper.OrderMapper;
import edu.seu.cs.model.SOrder;
import edu.seu.cs.model.SOrderDetail;
import edu.seu.cs.service.OrderService;
@Service
public class OrderServiceImpl implements OrderService{
	
	@Resource(name="orderMapper")
	private OrderMapper orderMapper;
	
	@Override
	public void insertSOrder(SOrder sOrder) {
		// TODO Auto-generated method stub
		orderMapper.insertSOrder(sOrder);
	}

	@Override
	public void insertSOrderDetail(SOrderDetail sOrderDetail) {
		// TODO Auto-generated method stub
		orderMapper.insertSOrderDetail(sOrderDetail);
	}

}
