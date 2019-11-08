package dao;


import java.util.ArrayList;

import dto.product;

public class productRep {
	private ArrayList<product> listOfproduct = new ArrayList<product>();
	private static productRep  instance = new productRep();

	public static productRep getInstance() {
		return instance;
	}

	public static void setInstance(productRep instance) {
		productRep.instance = instance;
	}

	public productRep() {
		product Product = new product("P1234","»ç¶û",2100000000);
		Product.setCategory("love");
		Product.setCondition("ING");
		Product.setManufacturer("Human");
		Product.setUnitInStocks(1);
		Product.setDescirption("don't never give up");
		listOfproduct.add(Product);
		
		product note = new product("P1235", "³ëÆ®", 10000);
		note.setCategory("note");
		note.setCondition("new");
		note.setManufacturer("samsung");
		note.setUnitInStocks(100);
		note.setDescirption("don't never give up");
		listOfproduct.add(note);
		
		
	}

	public ArrayList<product> getAllproduct() {
		return listOfproduct;
	}
	public product getProductById(String productId) {
		   product productById = null;
		   
		   for(int i = 0; i< listOfproduct.size();i++) {
			   product Product = listOfproduct.get(i);
			   if(Product != null && Product != null && Product.getCode().equals(productId)) {
				   productById = Product;
				   break;
			   }
		   }
		   return productById;
	   }
	   public void addProduct(product Product) {
		   	listOfproduct.add(Product);
	   }
	   
		
}
