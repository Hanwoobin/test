<%@page contentType="text/html; charset=utf-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	if(id.equals("1234") && password.equals("1234")) 
	{
		response.sendRedirect("sucessLogin.jsp");
	}
	else
	{
		response.sendRedirect("login.jsp?error=1");
	}
	
%>