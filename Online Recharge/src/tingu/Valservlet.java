package tingu;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Connect;
import service.Login;


@WebServlet("/Val")
public class Valservlet extends HttpServlet{
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		
		Login l=new Login();
		l.setUsername(uname);
		l.setPassword(pwd);
		
		Connect c=new Connect();
		Connection con=c.connectMe();
		
		String query="select * from Login where uname=? and password=?";
		try {
			
			PreparedStatement pstmt=con.prepareStatement(query);
			
			pstmt.setString(1, l.getUsername());
			pstmt.setString(2, l.getPassword());
			
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next())
			{
				//go to welcome page
				RequestDispatcher rd=request.getRequestDispatcher("Recharge.jsp");
				rd.forward(request, response);
			}
			else
			{
				//go to login page
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
				out.println("<p style='color:red'>Invalid Credentials</p>");
				rd.include(request, response);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
