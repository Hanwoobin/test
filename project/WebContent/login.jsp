<%@page contentType="text/html; charset=utf-8"%>
<html>
	<head><title>로그인 페이지</title></head>
	<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<form class = "login" action ="processLogin.jsp" method="post">
		<label>아이디</label><input type ="text" class = "form-control" name = "id" placeholder="ID enter">
		
		
		<label>비밀번호</label>
		<input type ="password" class = "form-control" placeholder="password" name = "password">
		
		<input type ="submit" value="등록">
	</form>
		
	</body>
</html>