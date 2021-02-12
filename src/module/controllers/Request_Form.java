	package module.controllers;

import java.io.*;  
import java.sql.*;  
import javax.servlet.ServletException;  
import javax.servlet.http.*;  

import connection.utility.DB_Connection;
import connection.utility.Date_Utility;

public class Request_Form extends HttpServlet 
{  
	private static final long serialVersionUID = 1L;
	Date_Utility du=new Date_Utility();
		
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{  
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		          
		 
		String un=request.getParameter("username"); 
		String e=request.getParameter("email"); 
		String p=request.getParameter("phone"); 
		String ad=request.getParameter("address"); 
		String pn=request.getParameter("pincode"); 
		String st=request.getParameter("state");  
		String c1=request.getParameter("check1");  
		String c2=request.getParameter("check2");  
		String c3=request.getParameter("check3");  
		String ca=request.getParameter("cause");
		String msg=request.getParameter("message");
		          
		try
		{  
		
			Connection con=DB_Connection.getConnection();
			  
			PreparedStatement ps=con.prepareStatement("INSERT INTO REQUEST_FORM (ID, FULL_NAME, MAILID, PHONE_NO, ADDRESS_LINE, PINCODE, STATE, GOODS_SLOT1, GOODS_SLOT2, GOODS_SLOT3, CAUSE, MESSAGE, CREATED_DATE) VALUES "
					 + "(REQUEST_FORM_ID_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,TO_DATE(?, 'YYYY-MM-DD'))");  
			  
			ps.setString(1,un);  
			ps.setString(2,e);
			ps.setString(3,p);
			ps.setString(4,ad);  
			ps.setString(5,pn);  
			ps.setString(6,st);    
			ps.setString(7,c1);
			ps.setString(8,c2);
			ps.setString(9,c3);  
			ps.setString(10,ca);
			ps.setString(11,msg);
			ps.setString(12, du.dateFormatSRId());
			          
			int i=ps.executeUpdate();  
			if(i>0) {
				//out.println("Done");
				MailService ms=new MailService();
				ms.sendMail(e,un);
				response.sendRedirect("RequestAck.jsp");
				
			}else {
				//out.println("Error");
				response.sendRedirect("request.jsp");
			}
			
			               
		}
		catch(Exception e2) 
		{
			System.out.println(e2);
		}            
		out.close();  
	}  
  
}  