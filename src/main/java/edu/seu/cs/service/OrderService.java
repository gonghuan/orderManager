package edu.seu.cs.service;

import edu.seu.cs.model.SOrder;
import edu.seu.cs.model.SOrderDetail;

public interface OrderService {
	public void insertSOrder(SOrder sOrder);
	public void insertSOrderDetail(SOrderDetail sOrderDetail);
}
