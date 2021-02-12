<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.DriverManager"%>
		<%@page import="java.sql.ResultSet"%>
		<%@page import="java.sql.Statement"%>
		<%@page import="java.sql.Connection"%>
		<%	
		
		%>
<%
String id=request.getParameter("id");
try
{
	Connection connection = null;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    connection = DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-5DJ472J:1521/orcl", "SYSTEM", "swift3");
	Statement st = connection.createStatement();
	int i=st.executeUpdate("DELETE FROM PGSCONTACT_DETAILS WHERE ID ="+id);
	response.sendRedirect("ContactDeleteAck.jsp");
}
catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
%>