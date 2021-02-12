package module.controllers;

import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  

import connection.utility.DB_Connection;
import connection.utility.Date_Utility;

public class Contact extends HttpServlet 
{  
	private static final long serialVersionUID = 1L;
	Date_Utility du=new Date_Utility();
		
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{  
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		 
		String n=request.getParameter("name"); 
		String e=request.getParameter("email"); 
		String p=request.getParameter("phone"); 
		String msg=request.getParameter("message");
		          
		try
		{  
		
			Connection con=DB_Connection.getConnection();
			  
			PreparedStatement ps=con.prepareStatement("INSERT INTO PGSCONTACT_DETAILS (ID, FULL_NAME, MAILID, PHONE_NO, MESSAGE, CREATED_DATE) VALUES "
					 + "(PGSCONTACT_ID_SEQ.NEXTVAL, ?, ?, ?, ?, TO_DATE(?, 'YYYY-MM-DD'))");  
			  
			ps.setString(1,n);  
			ps.setString(2,e);
			ps.setString(3,p);
			ps.setString(4,msg);
			ps.setString(5, du.dateFormatSRId());
			          
			int i=ps.executeUpdate();  
			if(i>0) {
				//out.println("Done");
				response.sendRedirect("ContactAck.jsp");
			}else {
				//out.println("Error");
				response.sendRedirect("contact.jsp");
			}
			
			               
		}
		catch(Exception e2) 
		{
			System.out.println(e2);
		}            
		out.close();  
	}  
  
}  