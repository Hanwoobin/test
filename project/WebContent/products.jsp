<%@page import="dao.productRep"%>
<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.product"%>
<jsp:useBean id="productDAO" class="dao.productRep" scope="session"></jsp:useBean>

<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품목록</title>

</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>

		<%
			productRep dao = productRep.getInstance();
			ArrayList<product> lsitProducts = dao.getAllproduct();
			ArrayList<product> listOfProducts = dao.getAllproduct();
		%>
	</div>
	<%
		for (int i = 0; i < listOfProducts.size(); i++) {
			product Product = listOfProducts.get(i);
	%>

	<div class="container">
		<div class="row" align="center">
			<div class = "col-md-4">
				<h3><%=Product.getName() %></h3>
				<p><%=Product.getDescirption() %>
				<p><%=Product.getUnitPrice()%>원</p>
				<a class = "btn btn-info"href="./product.jsp?id=<%=Product.getCode()%>" > 상세정보 </a>
			</div>
			
		</div>
		<%
			}
		%>
		<hr>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>