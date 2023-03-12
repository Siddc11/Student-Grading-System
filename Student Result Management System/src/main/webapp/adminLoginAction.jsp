<%
String username1=request.getParameter("username");
String password1=request.getParameter("password");

if(username1.equalsIgnoreCase("NIT@Co") && password1.equalsIgnoreCase("admin"))
{
	response.sendRedirect("adminHome.jsp");
}
else
	response.sendRedirect("errorAdminLogin.html");
%>