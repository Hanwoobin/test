<%@page import="dao.productRep"%>
<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.product"%>
<jsp:useBean id="productDAO" class="dao.productRep" scope="session"></jsp:useBean>

<html>
<head>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="container">
		<p>상품목록</p>
		<%
			productRep dao = productRep.getInstance();
			ArrayList<product> lsitProducts = dao.getAllproduct();
			ArrayList<product> listOfProducts = dao.getAllproduct();
		%>
	</div>
	<div class="content">
		<%
			for (int i = 0; i < listOfProducts.size(); i++) {
				product Product = listOfProducts.get(i);
		%>

		<div class="">
			<h3>
				상품 코드:
				<%=Product.getCode()%></h3>
			<h3>
				재고 :
				<%=Product.getUnitInStocks()%></h3>
			<h3><%=Product.getUnitPrice()%>원
			</h3>
			<a href="./product.jsp?id=<%=Product.getCode()%>"> 상세정보 </a>
		</div>
		<%
			}
		%>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>