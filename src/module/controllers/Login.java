package module.controllers;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException; 
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.utility.DB_Connection;

/**
 * Servlet implementation class LoginController
 */
public class Login extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("email");
		String pw=request.getParameter("password");
		PrintWriter out = response.getWriter();  
		
		// Connect to mysql and verify username password
		
		try {
			
		Connection c = DB_Connection.getConnection();
 
		PreparedStatement ps = c.prepareStatement("SELECT MAILID,PASSCODE FROM PGSREGISTER WHERE MAILID=? and PASSCODE=?");
		ps.setString(1, un);
		ps.setString(2, pw);
 
		ResultSet rs = ps.executeQuery();
 
		while (rs.next()) {
			//System.out.println("Done");
			 HttpSession  session=request.getSession(true);
		     session.setAttribute("email", un);
		     response.sendRedirect("index.jsp");
			return;
			
		}
		//System.out.println("Error");
		response.sendRedirect("login.jsp");
		HttpSession  session=request.getSession(false);
        session.setAttribute("errorMessage", "Invalid Credentials! Enter Valid Email / Password ");
		return;
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println(e);
			
		}
	}

}