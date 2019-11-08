<%@page contentType="text/html; charset=utf-8"%>
<%@page import="dto.product"%>
<%@page import="dao.productRep"%>

<%
	request.setCharacterEncoding("UTF-8");

	String productId = request.getParameter("code");
	String unitInStock = request.getParameter("unitInStock");
	String unitPrice = request.getParameter("unitPrice");

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
	
	newProduct.setUnitPrice(price);
	dao.addProduct(newProduct);
	
	response.sendRedirect("products.jsp");
%>