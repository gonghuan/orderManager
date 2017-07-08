package edu.seu.cs.dto;

public class GoodsInfoDto {
	public String code;
	public String name;
	public String unit;	//基本单位
	public String spec;		//规格
	public double onHand;	//库存
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
