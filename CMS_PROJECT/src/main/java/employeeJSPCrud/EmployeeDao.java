package employeeJSPCrud;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDao {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}

	public static int save(Employee emp) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"insert into addemployee(emname,emaddress,emdesignation,emdepartment,gender,emphone,ememail,empassword) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, emp.getEmname());
			ps.setString(2, emp.getEmaddress());
			ps.setString(3, emp.getEmdesignation());
			ps.setString(4, emp.getEmdepartment());
			ps.setString(5, emp.getGender());
			ps.setString(6, emp.getEmphone());
			ps.setString(7, emp.getEmemail());
			ps.setString(8, emp.getEmpassword());

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Employee emp) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement(
					"update addemployee set emname=?,emaddress=?,emdesignation=?,emdepartment=?,gender=?,emphone=?,ememail=?,empassword=? where emid=?");
			ps.setString(1, emp.getEmname());
			ps.setString(2, emp.getEmaddress());
			ps.setString(3, emp.getEmdesignation());
			ps.setString(4, emp.getEmdepartment());
			ps.setString(5, emp.getGender());
			ps.setString(6, emp.getEmphone());
			ps.setString(7, emp.getEmemail());
			ps.setString(8, emp.getEmpassword());
			ps.setInt(9, emp.getEmid());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(String emp) {
		int status = 0;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("delete from addemployee where emid=?");
			ps.setInt(1, Integer.parseInt(emp));
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Employee> getAllRecords() {
		List<Employee> list = new ArrayList<Employee>();

		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from addemployee");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employee emp = new Employee();
				emp.setEmid(rs.getInt("emid"));
				emp.setEmname(rs.getString("emname"));
				emp.setEmaddress(rs.getString("emaddress"));
				emp.setEmdesignation(rs.getString("emdesignation"));
				emp.setEmdepartment(rs.getString("emdepartment"));
				emp.setGender(rs.getString("gender"));
				emp.setEmphone(rs.getString("emphone"));
				emp.setEmemail(rs.getString("ememail"));
				emp.setEmpassword(rs.getString("empassword"));
				list.add(emp);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}

	public static Employee getRecordById(int emid) {
		Employee emp = null;
		try {
			Connection con = getConnection();
			PreparedStatement ps = con.prepareStatement("select * from addemployee where emid=?");
			ps.setInt(1, emid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				emp = new Employee();
				emp.setEmid(rs.getInt("emid"));
				emp.setEmname(rs.getString("emname"));
				emp.setEmaddress(rs.getString("emaddress"));
				emp.setEmdesignation(rs.getString("emdesignation"));
				emp.setEmdepartment(rs.getString("emdepartment"));
				emp.setGender(rs.getString("gender"));
				emp.setEmphone(rs.getString("emphone"));
				emp.setEmemail(rs.getString("ememail"));
				emp.setEmpassword(rs.getString("empassword"));

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return emp;
	}
}
