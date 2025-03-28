package Servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Student_Dao;

@WebServlet("/adminsignup")
public class Signup extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		long contact = Long.parseLong(req.getParameter("contact"));
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String repassword = req.getParameter("repassword");
		
			try {
				int value = Student_Dao.saveAdmin(id, name, email, contact, password);
				if(value == 1 && password.equals(repassword)) {
					req.setAttribute("message", "Signin Success!");
					req.getRequestDispatcher("adminsignup.jsp").include(req, resp);
				}
				else {
					req.setAttribute("message", "Invalid Credentials!");
					req.getRequestDispatcher("adminsignup.jsp").include(req, resp);
				}
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	
	}
}
