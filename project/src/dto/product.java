package dto;

import java.io.Serializable;

public class product implements Serializable{
	private static final long Id = 10000;
	private String code;
	private String unitInStocks;
	
	private String unitPrice;
	
	public product() {
		super();
	}
	
	public product(String code, String unitInStocks,String unitPrice){
		this.code = code;
		this.unitInStocks = unitInStocks;
		this.unitPrice = unitPrice;
	}
	
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getUnitInStocks() {
		return unitInStocks;
	}
	public void setUnitInStocks(String unitInStocks) {
		this.unitInStocks = unitInStocks;
	}
	public String getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(String unitPrice) {
		this.unitPrice = unitPrice;
	}
}
