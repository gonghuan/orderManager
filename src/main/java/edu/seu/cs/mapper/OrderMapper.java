package edu.seu.cs.mapper;

import java.util.List;

import edu.seu.cs.model.SOrder;
import edu.seu.cs.model.SOrderDetail;

public interface OrderMapper {
	public void insertSOrder(SOrder sOrder);
	public void insertSOrderDetail(SOrderDetail sOrderDetail);
}
