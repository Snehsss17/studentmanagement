package Servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.Student_Dao;
import DTO.Student_Dto;

@WebServlet("/studentlogin")
public class StudentLogin extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		try {
			Student_Dto s = Student_Dao.findStudent(id);
			
			if(s != null) {
				req.setAttribute("student", s);
				req.setAttribute("message", "student details found");
				req.getRequestDispatcher("studenthome.jsp").include(req, resp);
			}else {
				req.setAttribute("message", "student not found!");
				req.getRequestDispatcher("studentlogin.jsp").include(req, resp);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			req.setAttribute("message", "Error occurred");
			req.getRequestDispatcher("studentlogin.jsp").include(req, resp);
		}
	}

}
