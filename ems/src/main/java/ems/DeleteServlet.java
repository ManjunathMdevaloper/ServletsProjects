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

@WebServlet(urlPatterns = "/delete")
public class DeleteServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "Manu@9965");
			PreparedStatement ps = con.prepareStatement("delete from emp where eid=?");
			ps.setInt(1, id);
			int row = ps.executeUpdate();
			System.out.println(row + " row deleted");
			ps.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		PrintWriter pw = resp.getWriter();
		pw.write("<html><h1 id='head'> Employee Deleted Successfully eith Id " + id + "</h1></html>");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ems", "root", "Manu@9965");
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery("select * from emp");
			req.setAttribute("rs", rs);
			RequestDispatcher rg = req.getRequestDispatcher("allemp.jsp");
			rg.include(req, resp);
			rs.close();
			s.close();
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
}
