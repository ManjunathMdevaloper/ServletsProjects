package ems;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/reg")
public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String salary = req.getParameter("salary");
		String deptno = req.getParameter("deptno");
		String password = req.getParameter("password");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems","root","Manu@9965");
			PreparedStatement ps = con.prepareStatement("insert into emp values(?,?,?,?,?,?)");
			ps.setInt(1, Integer.parseInt(id));
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setDouble(4, Double.parseDouble(salary));
			ps.setInt(5, Integer.parseInt(deptno));
			ps.setString(6, password);
			int row = ps.executeUpdate();
			System.out.println(row+" Updated...");
			
			ps.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		PrintWriter wr = resp.getWriter();
		wr.write("<html><body><h1 id='msg'>Employee Created Succesfully</h1></body></html>");
		RequestDispatcher rg = req.getRequestDispatcher("index.jsp");
		rg.include(req, resp);
	}
}