<%@page contentType="text/html; charset=utf-8"%>
<%@page import="dto.product"%>
<jsp:useBean id="productDAO" class="dao.productRep" scope="session" />
<html>
<head>
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<%
		String id = request.getParameter("id");
		product Product = productDAO.getProductById(id);
	%>
	<div class="container">
		<div class="content">
			<h3>
				상품 코드<%=Product.getCode()%></h3>
			<p>
				재고 :
				<%=Product.getUnitInStocks()%>
			<p><%=Product.getUnitPrice()%>원
			<p>
				<a href="#">상품주문</a>
			<p>
				<a href="./products.jsp">상품 목록</a>
		</div>
	</div>
</body>
</html>