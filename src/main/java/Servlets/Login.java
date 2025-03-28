package Servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Student_Dao;


@WebServlet("/adminlogin")
public class Login extends HttpServlet{
	public void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		Student_Dao s = new Student_Dao();
		
		
		try {
			boolean res = s.findAdmin(email, password);
			if(res) {
				req.setAttribute("message","Login Success!");
				req.getRequestDispatcher("adminhome.jsp").forward(req, resp);
			}else {
				req.setAttribute("message","Invalid Username or Password!");
				req.getRequestDispatcher("adminlogin.jsp").forward(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

