<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>로그인 페이지</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>
<body>
	<jsp:include page="menu.jsp"/>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>

	<div class="container" align="center">
		<div class="col-md-offset-4">


			<form class="login" action="processLogin.jsp" method="post">
				<label>아이디</label><input type="text" class="form-control" name="id"
					placeholder="ID enter"> 
					<label>비밀번호</label> 
					<input type="password" class="form-control" placeholder="password"name="password"> <input type="submit" value="등록"
					class="btn btn-success">
			</form>
		</div>
	</div>

</body>
</html>