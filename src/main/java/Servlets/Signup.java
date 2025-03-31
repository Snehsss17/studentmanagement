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
		
		if (!password.equals(repassword)) {
            req.setAttribute("message", "Passwords do not match!");
            req.getRequestDispatcher("adminsignup.jsp").forward(req, resp);
            return;
        }
		
			try {
				int value = Student_Dao.saveAdmin(id, name, email, contact, password);
				if(value == 1) {
					  resp.sendRedirect("adminlogin.jsp");
				}
				else {
					req.setAttribute("message", "Sign up  Failed,Try again!");
					req.getRequestDispatcher("adminsignup.jsp").include(req, resp);
				}
			} catch (NumberFormatException e) {
	            req.setAttribute("message", "Invalid input format! Please enter valid details.");
	            req.getRequestDispatcher("adminsignup.jsp").forward(req, resp);
	        } catch (ClassNotFoundException | SQLException e) {
	            req.setAttribute("message", "Database error! Please try again later.");
	            req.getRequestDispatcher("adminsignup.jsp").forward(req, resp);
	        }
	
	}
}
