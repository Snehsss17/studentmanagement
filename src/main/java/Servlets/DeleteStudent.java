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


@WebServlet("/deletestudent")
public class DeleteStudent extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		try {
			
			int value = Student_Dao.deleteStudent(id);
			if(value == 1) {
			req.setAttribute("message", "Student deleted successfully!");
			req.getRequestDispatcher("deletestudent.jsp").include(req, resp);
			} else {
                req.setAttribute("message", "Student not found!");
            }
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
			req.setAttribute("message", "Error occurred!");
			req.getRequestDispatcher("deletestudent.jsp").include(req, resp);
		}
		resp.sendRedirect("adminhome.jsp"); 
	}

}
