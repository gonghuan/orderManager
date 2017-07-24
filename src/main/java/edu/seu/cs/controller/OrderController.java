package edu.seu.cs.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
		/*sOrder.setShortName("致远");
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
		orderService.insertSOrder(sOrder);*/
		
		sOrderDetail.setGoodsId(400);
		sOrderDetail.setPrice(10);
		sOrderDetail.setQuantity(1);
		sOrderDetail.setUnitPrice(10);
		sOrderDetail.setUnitQty(1);
		sOrderDetail.setTaxRate(0);
		sOrderDetail.setAmount(10);
		sOrderDetail.setTaxAmt(0);
		sOrderDetail.setGoodsSamt(0);
		sOrderDetail.setDisc(100);
		sOrderDetail.setTakeQty(10);
		sOrderDetail.setMnqty(0);
		sOrderDetail.setReferCount(0);
		sOrderDetail.setNprice(10);
		sOrderDetail.setMrpsel(false);
		sOrderDetail.setPresent(false);
		orderService.insertSOrderDetail(sOrderDetail);
		return true;
	}
	
	@RequestMapping(value="insertOrderAndDetail")
	public @ResponseBody boolean insertOrderAndDetail(@RequestParam String shortName, @RequestParam String contector,
			@RequestParam String phone, @RequestParam String shipto, @RequestParam int clientId, @RequestParam String strs){
		SOrder sOrder = new SOrder();
		List<SOrderDetail> array = new ArrayList<>();
		
		int i = 0;
		double amount=0.0;
		String[] list = strs.split("\\$+");
		while(i < list.length){
			String str = list[i];
			str = str.substring(1, str.length() - 1);
			String[] attrs = str.split(",");
			//JSONObject json = JSONObject.parseObject(str);
			SOrderDetail sOrderDetail = new SOrderDetail();
			sOrderDetail.setGoodsId(Integer.parseInt(attrs[5].split(":")[1].trim()));
			sOrderDetail.setPrice(Double.parseDouble(attrs[2].split(":")[1].trim()));
			sOrderDetail.setQuantity(Double.parseDouble(attrs[3].split(":")[1].trim()));
			sOrderDetail.setUnitPrice(Double.parseDouble(attrs[2].split(":")[1].trim()));
			sOrderDetail.setUnitQty(Double.parseDouble(attrs[3].split(":")[1].trim()));
			sOrderDetail.setTaxRate(0);
			sOrderDetail.setAmount(Double.parseDouble(attrs[4].split(":")[1].trim()));
			amount+=Double.parseDouble(attrs[4].split(":")[1].trim());
			sOrderDetail.setTaxAmt(0);
			//sOrderDetail.setGoodsSamt(0);
			sOrderDetail.setGoodsSamt(Double.parseDouble(attrs[4].split(":")[1].trim()));
			sOrderDetail.setDisc(100);
			//sOrderDetail.setTakeQty(Double.parseDouble(attrs[3].split(":")[1].trim()));
			sOrderDetail.setTakeQty(0);
			sOrderDetail.setMnqty(0);
			sOrderDetail.setMnqty(0);
			sOrderDetail.setReferCount(0);
			sOrderDetail.setNprice(10);
			sOrderDetail.setMrpsel(false);
			sOrderDetail.setPresent(false);
			array.add(sOrderDetail);
			i++;
		}
		
		sOrder.setContator(contector);
		sOrder.setPhone(phone);
		sOrder.setTakeDate(new Date());
		sOrder.setShipTo(shipto);
		sOrder.setClientId(clientId);
		sOrder.setTaxRate(0);
		sOrder.setDisc(100);
		sOrder.setAmount(amount);
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
		sOrder.setBillTypeId(1);
		sOrder.setTemplateId(1);
		sOrder.setRptId(5);
		
		orderService.inserSOrderAndDetail(sOrder, array);
		return true;
	}
}
