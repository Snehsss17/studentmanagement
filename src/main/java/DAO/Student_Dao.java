package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import DTO.Student_Dto;

public class Student_Dao {
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "root");
	}

	public static int saveStudent(Student_Dto s) throws SQLException, ClassNotFoundException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("insert into student values(?,?,?,?,?)");

		pst.setInt(1, s.getId());
		pst.setString(2, s.getName());
		pst.setInt(3, s.getPhysics());
		pst.setInt(4, s.getChemistry());
		pst.setInt(5, s.getMaths());

		return pst.executeUpdate();
	}

	public static int saveAdmin(int id, String name, String email, String contact, String password)
			throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("insert into admin values(?,?,?,?,?)");
		pst.setInt(1, id);
		pst.setString(2, name);
		pst.setString(3, email);
		pst.setString(4, contact);
		pst.setString(5, password);

		return pst.executeUpdate();
	}

	public static boolean findAdmin(String email, String password) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from admin where email = ? and password = ?");
		pst.setString(1, email);
		pst.setString(2, password);
		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
	}

	public static Student_Dto findStudent(int id) throws SQLException, ClassNotFoundException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("select * from student where id = ?");
		pst.setInt(1, id);
		ResultSet rs = pst.executeQuery();
		if(rs.next()) {
			return (new Student_Dto(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5)));
		}else {
			return null;
		}		
	}
	
	public static int deleteStudent(int id) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		PreparedStatement pst = con.prepareStatement("delete from student where id = ?");
		pst.setInt(1, id);
		return pst.executeUpdate();
	}
	
	public static List<Student_Dto> findAllStudent() throws ClassNotFoundException, SQLException{
		Connection con = getConnection();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from student");
		List<Student_Dto> list = new ArrayList();
		while(rs.next()) {
			Student_Dto s = new Student_Dto(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getInt(4),rs.getInt(5));
			list.add(s);
		}
		return list;
	}
}
