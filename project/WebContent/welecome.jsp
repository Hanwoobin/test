<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>welcome</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>
<body>

	<div class = "navbar navbar-expand  navbar-dark bg-dark">
		<div class = "container">
			<div class = "navbar-header">
					<%@include file= "menu.jsp" %>
			</div>
		</div>
	</div>
	<div class = "jumbotron">
		<div class = "container">
			<h1 class = "display-3">
				환영
			</h1>
		</div>
	</div>
	<main role = "main">
	<div class = "container">
		<div class = "text-center">
			<h3>
				어서오세요
			</h3>
		</div>
	</div>
	</main>
<footer>
	<p>&copy; <%@include file = "footer.jsp" %></p>
</footer>	
	
	
	
</body>
</html>