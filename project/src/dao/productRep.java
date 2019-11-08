package dao;


import java.util.ArrayList;

import dto.product;

public class productRep {
	private ArrayList<product> listOfproduct = new ArrayList<product>();
	
	public productRep() {
		product Product = new product("1234","111",11);
		
		listOfproduct.add(Product);
	}

	public ArrayList<product> getAllproduct() {
		return listOfproduct;
	}
}
