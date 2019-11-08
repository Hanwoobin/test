package dto;

import java.io.Serializable;

public class product implements Serializable{

	private static final long serialVersionUID = 1L;

	private String code;
	private String unitInStocks;
	
	private int unitPrice;
	
	public product() {
		super();
	}
	
	public product(String code, String unitInStocks,int unitPrice){
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
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
}
