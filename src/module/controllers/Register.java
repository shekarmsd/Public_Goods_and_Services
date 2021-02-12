package module.controllers;

import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  

import connection.utility.DB_Connection;
import connection.utility.Date_Utility;

public class Register extends HttpServlet 
{  
	private static final long serialVersionUID = 1L;
	Date_Utility du=new Date_Utility();
		
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{  
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		String n=request.getParameter("username");  
		String p=request.getParameter("email");  
		String e=request.getParameter("phone");  
		String c=request.getParameter("password");  
		          
		try
		{  
		
			Connection con=DB_Connection.getConnection();	
			  
			PreparedStatement ps=con.prepareStatement("INSERT INTO PGSREGISTER (ID, USER_NAME, MAILID, PHONE_NO, PASSCODE, CREATED_DATE) VALUES "
					 + "(PGSREGISTER_ID_SEQ.NEXTVAL, ?, ?, ?, ?,TO_DATE(?, 'YYYY-MM-DD'))");  
			  
			ps.setString(1,n);  
			ps.setString(2,p);  
			ps.setString(3,e);  
			ps.setString(4,c);  
			ps.setString(5, du.dateFormatSRId());
			          
			int i=ps.executeUpdate();  
			if(i>0) {
				
				response.sendRedirect("login.jsp");
			}else {
				response.sendRedirect("signup.jsp");
			}
			
			               
		}
		catch(Exception e2) 
		{
			System.out.println(e2);
		}            
		out.close();  
	}  
  
}  