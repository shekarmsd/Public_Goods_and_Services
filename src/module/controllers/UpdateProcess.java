package module.controllers;

import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;


import connection.utility.DB_Connection;
import connection.utility.Date_Utility;

public class UpdateProcess extends HttpServlet 
{  
	private static final long serialVersionUID = 1L;
	Date_Utility du=new Date_Utility();
		
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{  
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		        
		String id=request.getParameter("id");  
		String n=request.getParameter("username");  
		String p=request.getParameter("email");  
		String e=request.getParameter("phone");  
		String c=request.getParameter("password");  
		          
		try
		{  
		
			Connection con=DB_Connection.getConnection();	
			  
			PreparedStatement ps=con.prepareStatement("UPDATE PGSREGISTER SET ID = ?, USER_NAME = ?, MAILID = ?, PHONE_NO = ?, PASSCODE = ?, CREATED_DATE = TO_DATE(?, 'YYYY-MM-DD') WHERE ID ="+id);  
			
			  
			ps.setString(1,id);  
			ps.setString(2,n);  
			ps.setString(3,p);  
			ps.setString(4,e);  
			ps.setString(5,c);
			ps.setString(6, du.dateFormatSRId());
			          
			int i=ps.executeUpdate();  
			if(i>0) {
				
				//out.println("Done!");
				//HttpSession  session=request.getSession();
		        //session.setAttribute("errorMsg", "Your Profile is Updated Successfully!");
		        response.sendRedirect("UpdateUserAck.jsp");
				
			}else {
				//out.println("Not Done!");
				//response.sendRedirect("signup.jsp");
			}
			
			               
		}
		catch(Exception e2) 
		{
			System.out.println(e2);
		}            
		out.close();  
	}  
  
}  