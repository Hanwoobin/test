package dto;

import java.io.Serializable;

public class product implements Serializable{

	private static final long serialVersionUID = 1L;

	private String code;
	private long unitInStocks;
	private int unitPrice;
	private String name;
	private String descirption;
	private String condition;
	private String manufacturer;
	private String category;

	public product() {
		super();
	}
	
	public product(String code, String name,int unitPrice){
		this.code = code;
		this.name = name;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescirption() {
		return descirption;
	}

	public void setDescirption(String descirption) {
		this.descirption = descirption;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
}
