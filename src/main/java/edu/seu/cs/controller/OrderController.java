package edu.seu.cs.controller;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import edu.seu.cs.model.SOrder;
import edu.seu.cs.model.SOrderDetail;
import edu.seu.cs.service.OrderService;

@Controller
public class OrderController {
	@Resource(name="orderServiceImpl")
	private OrderService orderService;
	
	@RequestMapping(value="/testInsert")
	public @ResponseBody boolean testInsert(){
		SOrder sOrder = new SOrder();
		SOrderDetail sOrderDetail = new SOrderDetail();
		sOrder.setShortName("致远");
		sOrder.setContator("贡欢");
		sOrder.setPhone("121345");
		sOrder.setTakeDate(new Date());
		sOrder.setShipTo("东南大学");
		sOrder.setClientId(1);
		sOrder.setTaxRate(0);
		sOrder.setDisc(100);
		sOrder.setAmount(0);
		sOrder.setShopId(0);
		sOrder.setOpId(1);
		sOrder.setClosed(false);
		sOrder.setFinished(false);
		sOrder.setReferCount(0);
		sOrder.setPrinted(0);
		sOrder.setPrintCount(0);
		sOrder.setDsOrder(false);
		sOrder.setUploaded(false);
		sOrder.setBillStatus(0);
		sOrder.setAckAppr(false);
		sOrder.setFileCount(0);
		sOrder.setExemanId(1);
		orderService.insertSOrder(sOrder);
		
		return true;
	}
}
