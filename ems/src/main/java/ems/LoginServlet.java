package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Manu@9965");
				PreparedStatement ps = con.prepareStatement("select * from emp where email=? and password=?");
				ps.setString(1, email);
				ps.setString(2, password);
				ResultSet rs = ps.executeQuery();
				PrintWriter pw = resp.getWriter();
				if(rs.next())
				{
					HttpSession session = req.getSession();
					session.setAttribute("name", rs.getString(2));
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Manu@9965");
						Statement s=con1.createStatement();
						ResultSet rs1=s.executeQuery("select * from emp");
						pw.write("<html><h1 id = 'head'> Login Successfully</h1></html>");
						req.setAttribute("rs", rs1);
						RequestDispatcher rg=req.getRequestDispatcher("allemp.jsp");
						rg.include(req, resp);
						rs.close();
						s.close();
						con.close();
						
					} catch (ClassNotFoundException | SQLException e) {
						e.printStackTrace();
					}
					
				}else {
					pw.write("<html><h1 id = 'msg'> Invalid Credientials...</h1></html>");
					RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
					rd.include(req, resp);
				}
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
	}
}
