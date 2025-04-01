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


@WebServlet("/editstudent")
public class EditStudent extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		int physics = Integer.parseInt(req.getParameter("physics"));
		int chemistry = Integer.parseInt(req.getParameter("chemistry"));
		int maths = Integer.parseInt(req.getParameter("maths"));
		
		Student_Dto s = new Student_Dto(id, name, physics, chemistry, maths);
		
		try {
			boolean update =  Student_Dao.updateStudent(s);
			if(update) {
				req.setAttribute("message", "Student details updated successfully!");
				 req.getRequestDispatcher("editstudent.jsp").forward(req, resp);
			}else {
				req.setAttribute("message", "Student not found!");
				req.getRequestDispatcher("editstudent.jsp").forward(req, resp);
			}
		} catch (ClassNotFoundException e) {
			req.setAttribute("message", "An error occurred: " + e.getMessage());
			req.getRequestDispatcher("editstudent.jsp").forward(req, resp);
		}

	}

	
}
