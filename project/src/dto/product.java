package dto;

import java.io.Serializable;

public class product implements Serializable{

	private static final long serialVersionUID = 1L;

	private String code;
	private long unitInStocks;
	
	private int unitPrice;
	
	public product() {
		super();
	}
	
	public product(String code, long unitInStocks,int unitPrice){
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
	public long getUnitInStocks() {
		return unitInStocks;
	}
	public void setUnitInStocks(long unitInStocks) {
		this.unitInStocks = unitInStocks;
	}
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
}
