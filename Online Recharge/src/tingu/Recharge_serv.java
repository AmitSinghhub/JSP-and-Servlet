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
import service.Recharge;

/**
 * Servlet implementation class Recharge
 */
@WebServlet("/recharge")
public class Recharge_serv extends HttpServlet {protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	System.out.println("hello");
	Recharge r=new Recharge();
	PrintWriter out=response.getWriter();
	
	String num=request.getParameter("num");
	r.setnum(num);;
	
	String pro=request.getParameter("operator");
	r.setoperator(pro);
	
	String state=request.getParameter("state");
	r.setState(state);
	
	String amt=request.getParameter("amt");
	r.setamt(amt);
	
	Connect d=new Connect();
	Connection con=d.connectMe();
	
	String query="insert into Pla (num,Operator,State,Amt) values (?,?,?,?)";
	
	 
	try {
		PreparedStatement stmt = con.prepareStatement(query);
		
		stmt.setString(1, r.getnum());
		stmt.setString(2,r.getoperator());
		stmt.setString(3,r.getstate());
	     stmt.setString(4,r.getamt());
		//stmt.executeUpdate();
		int stat = stmt.executeUpdate();
		
	
	
		if(stat > 0)
		//if(rs.next())
		{
			System.out.println("IF");
			
			out.println("<p style='color:red;align:center'>Recharge Successful</p>");
		  
		}
		else 
		{
			
			out.println("<p style='color:red;align:center'>Invalid Recharge.please try again</p>");
			RequestDispatcher rd=request.getRequestDispatcher("Recharge.jsp");
			rd.include(request, response);
		}
	} 
		catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	


Connect f=new Connect();
Connection con1=f.connectMe();

String query1="select * from valid_tb where amt=?";

 
try {
	PreparedStatement gstmt = con.prepareStatement(query1);
	
     gstmt.setString(1,r.getamt());
	
     ResultSet rs=gstmt.executeQuery();
	
     if(rs.next())
		{
    	 out.println("<p style='color:red'>Recharge Successful!!!</p>");
		}
		else
		{
			out.println("<p style='color:red'>Recharge unSuccessful!!!</p>");
		}
}
	catch (SQLException e1) {
	// TODO Auto-generated catch block
	e1.printStackTrace();
}
}


protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	doGet(request, response);
}

}