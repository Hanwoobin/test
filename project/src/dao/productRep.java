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
		product Product = new product("1234",111,11);	
		listOfproduct.add(Product);
		
		
		
		
		
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
