<%@ page import="java.sql.*"%>
<%-- <%
if (session.getAttribute("session") != null) {
response.sendRedirect("AdminHome.jsp");
}
%> --%>
<%
String dbemail, dbpassword;
String Inemail, Inpassword;
Inemail = request.getParameter("ememail");
Inpassword = request.getParameter("empassword");

if (Inemail.equals("admin@gmail.com") && Inpassword.equals("admin123")) {
	session.setAttribute("session", Inemail);
	response.sendRedirect("AdminHome.jsp");
} else {

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
		if (request.getParameter("login1") != null) {
	PreparedStatement prepare = null;
	prepare = con.prepareStatement("select * from addemployee where ememail=? AND empassword=?");
	prepare.setString(1, Inemail);
	prepare.setString(2, Inpassword);
	ResultSet rs = prepare.executeQuery();
	if (rs.next()) {
		dbemail = rs.getString("ememail");
		dbpassword = rs.getString("empassword");

		if (Inemail.equals(dbemail) && Inpassword.equals(dbpassword)) {
			session.setAttribute("session", dbemail);
			response.sendRedirect("FacultyHome.jsp");
		}

	} else {
		prepare = con.prepareStatement("select * from addstudent where stemail=? AND stpassword=?");
		prepare.setString(1, Inemail);
		prepare.setString(2, Inpassword);
		ResultSet rst = prepare.executeQuery();
		if (rst.next()) {
			dbemail = rst.getString("stemail");
			dbpassword = rst.getString("stpassword");

			if (Inemail.equals(dbemail) && Inpassword.equals(dbpassword)) {
				session.setAttribute("session", dbemail);
				response.sendRedirect("Student_sView.jsp");
			}
		} else {
			request.setAttribute("errorMsg", "Invalid email or password");
			RequestDispatcher rd = request.getRequestDispatcher("/Login.jsp");
			rd.forward(request, response);
		}

	}
	con.close();
		}

	} catch (Exception e) {
		out.println(e);
	}
}
%>