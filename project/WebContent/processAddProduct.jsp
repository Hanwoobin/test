<%@page contentType="text/html; charset=utf-8"%>
<%@page import="dto.product"%>
<%@page import="dao.productRep"%>

<%
	request.setCharacterEncoding("UTF-8");

	String productId = request.getParameter("code");
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String condition = request.getParameter("condition");
	String category = request.getParameter("category");
	String unitInStock = request.getParameter("unitInStock");
	String unitPrice = request.getParameter("unitPrice");
	String name = request.getParameter("name");

	Integer price;
	if (unitPrice.isEmpty()) 
		price = 0;
	else 
		price = Integer.valueOf(unitPrice);
	
	long stock;
	
	if (unitInStock.isEmpty()) 
		stock = 0;
	else 
		stock = Long.valueOf(unitInStock);
	
	productRep dao = productRep.getInstance();
	
	product newProduct = new product();
	newProduct.setCode(productId);
	newProduct.setUnitInStocks(stock);
	newProduct.setName(name);
	newProduct.setUnitPrice(price);
	newProduct.setCategory(category);
	newProduct.setDescirption(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCondition(condition);
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");
%>