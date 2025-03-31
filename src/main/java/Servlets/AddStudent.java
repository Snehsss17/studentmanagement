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

@WebServlet("/addstudent")
public class AddStudent extends HttpServlet{

	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			int physics = Integer.parseInt(req.getParameter("physics"));
			int chemistry = Integer.parseInt(req.getParameter("chemistry"));
			int maths = Integer.parseInt(req.getParameter("maths"));
			
			Student_Dto s = new Student_Dto(id,name,physics,chemistry,maths);
			int row = Student_Dao.saveStudent(s);
			
			if(row == 1) {
				req.setAttribute("msg", "1 row added successfully!");
				req.getRequestDispatcher("addstudent.jsp").include(req, resp);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			req.setAttribute("msg", "Error occurred!");
			req.getRequestDispatcher("adminhome.jsp").include(req, resp);
			
		}
		
	}

}
