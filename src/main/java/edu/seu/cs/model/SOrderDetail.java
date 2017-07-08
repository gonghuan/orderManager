package edu.seu.cs.model;

public class SOrderDetail {
	private int sOrderId;
	private int itemNo;
	private int unitId;		//goods id选定后，查找goodsunit表得到
	private int goodsId;	//根据商品名在goods表中找goodsid
	private double price;	//基本单价
	private double quantity;	//基本数量
	private double unitPrice;	//单价，默认和前面一样
	private double unitQty;		//数量，默认和前面一样
	private double taxRate;		//税率
	private double amount;		//总价（单价x数量）(1+税率)
	private double taxAmt;		//税额
	private double goodsSamt;	//货款
	private double disc;		//折扣
	private double takeQty;		//交货数量
	private double mnqty;		//生产数量(业务单位)
	private String memo;		//备注
	private int referCount;		//引用次数
	private double nprice;		//原始单价，默认等于amount
	private boolean mrpsel;		//默认为F
	private boolean isPresent;	//是否为赠品，默认为F
	private String priceType;
	public int getsOrderId() {
		return sOrderId;
	}
	public void setsOrderId(int sOrderId) {
		this.sOrderId = sOrderId;
	}
	public int getItemNo() {
		return itemNo;
	}
	public void setItemNo(int itemNo) {
		this.itemNo = itemNo;
	}
	public int getUnitId() {
		return unitId;
	}
	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getQuantity() {
		return quantity;
	}
	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public double getUnitQty() {
		return unitQty;
	}
	public void setUnitQty(double unitQty) {
		this.unitQty = unitQty;
	}
	public double getTaxRate() {
		return taxRate;
	}
	public void setTaxRate(double taxRate) {
		this.taxRate = taxRate;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getTaxAmt() {
		return taxAmt;
	}
	public void setTaxAmt(double taxAmt) {
		this.taxAmt = taxAmt;
	}
	public double getGoodsSamt() {
		return goodsSamt;
	}
	public void setGoodsSamt(double goodsSamt) {
		this.goodsSamt = goodsSamt;
	}
	public double getDisc() {
		return disc;
	}
	public void setDisc(double disc) {
		this.disc = disc;
	}
	public double getTakeQty() {
		return takeQty;
	}
	public void setTakeQty(double takeQty) {
		this.takeQty = takeQty;
	}
	public double getMnqty() {
		return mnqty;
	}
	public void setMnqty(double mnqty) {
		this.mnqty = mnqty;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public int getReferCount() {
		return referCount;
	}
	public void setReferCount(int referCount) {
		this.referCount = referCount;
	}
	public double getNprice() {
		return nprice;
	}
	public void setNprice(double nprice) {
		this.nprice = nprice;
	}
	public boolean isMrpsel() {
		return mrpsel;
	}
	public void setMrpsel(boolean mrpsel) {
		this.mrpsel = mrpsel;
	}
	public boolean isPresent() {
		return isPresent;
	}
	public void setPresent(boolean isPresent) {
		this.isPresent = isPresent;
	}
	public String getPriceType() {
		return priceType;
	}
	public void setPriceType(String priceType) {
		this.priceType = priceType;
	}	
	
}
