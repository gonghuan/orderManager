package edu.seu.cs.dto;

public class GoodsInfoDto {
	public int goodsId;
	public String code;
	public String name;
	public String unit;	//基本单位
	public String spec;		//规格
	public double onHand;	//库存
	public double price;	//单价
	public String imagePath;	//图片路径
	
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnitName(String unitName) {
		this.unit = unitName;
	}
	public String getSpec() {
		return spec;
	}
	public void setSpec(String spec) {
		this.spec = spec;
	}
	public double getOnHand() {
		return onHand;
	}
	public void setOnHand(double onHand) {
		this.onHand = onHand;
	}
	
}
