package edu.seu.cs.serviceImpl;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Override
	@Transactional
	public void inserSOrderAndDetail(SOrder sOrder, List<SOrderDetail> list) {
		// TODO Auto-generated method stub
		orderMapper.insertSOrder(sOrder);
		int sOrderId = Integer.parseInt(orderMapper.selectMaxSorderId());
		Iterator<SOrderDetail> it = list.iterator();
		while(it.hasNext()){
			SOrderDetail sOrderDetail = it.next();
			sOrderDetail.setsOrderId(sOrderId);
			orderMapper.insertSOrderDetail(sOrderDetail);
		}
	}

}
