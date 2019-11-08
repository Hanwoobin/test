<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
<div class = "jumbotron">
	<div class = "container">
		<h1 class = "display-3">상품 등록</h1>
	</div>
</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp"
			class="form-horizontal" method="post">
			<div class="form-group row">
				<label>상품 코드</label>
				<div class="col-sm-3">
					<input type="text" name="code" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label>상품명</label>

				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label>가격</label>

				<div class="col">
					<input type="text" name="unitPrice" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label>상세정보</label>

				<div class="col-sm-3">
					<textarea rows="2" cols="10" name = "description"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label>제조사</label>

				<div class="col-sm-4">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label>분류</label>

				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label>재고</label>

				<div class="col-sm-3">
					<input type="text" name="unitInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label>상태</label>

				<div class="col-sm-3">
					<input type="text" name="condition" class="form-control">
				</div>
			</div>
			
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>