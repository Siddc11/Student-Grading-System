<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String Course=request.getParameter("Course");
String Branch=request.getParameter("Branch");
String RollNo=request.getParameter("RollNo");
String EnrollmentNo=request.getParameter("EnrollmentNo");
String Name=request.getParameter("Name");
String Gender=request.getParameter("Gender");

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("insert into student values('"+Course+"','"+Branch+"','"+RollNo+"','"+EnrollmentNo+"','"+Name+"','"+Gender+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}



%>