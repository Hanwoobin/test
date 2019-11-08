<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />

	<div class="container">
		<div class="content">상품 등록</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp"
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label>상품 코드</label>

				<div class="col">
					<input type="text" name="code" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label>재고</label>

				<div class="col">
					<input type="text" name="unitInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label>가격</label>

				<div class="col">
					<input type="text" name="unitPrice" class="form-control">
				</div>
			</div>
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>