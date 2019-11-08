<%@page contentType="text/html; charset=utf-8"%>
<%@page import="dto.product"%>
<%@page import ="dao.productRep" %>
<jsp:useBean id="productDAO" class="dao.productRep" scope="session" />
<html>
<head>
<title>상품 상세 정보</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<%
		String id = request.getParameter("id");
		productRep dao = productRep.getInstance();
		product Product = dao.getProductById(id);
	%>
	<div class = "container">
		<div class = "row">
			<div class= "col-md-6">
				<h3>상품명:<%=Product.getName() %></h3>
				<p>상품코드<%=Product.getCode() %>
				<p>가격 : <%=Product.getUnitPrice() %>
				<p>상세정보 : <%=Product.getDescirption() %>
				<p>분류:<%=Product.getCategory() %>
				<p>제조사 : <%=Product.getManufacturer()%>
				<p>재고수  : <%=Product.getUnitInStocks() %>
				<p>상태 : <%=Product.getCondition() %>
				<p> <a href = "./products.jsp" class = "btn btn-info">상품 목록</a>
			</div>
		</div>
	</div>
</body>
</html>