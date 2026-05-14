<%@include file="db.jsp"%>

<%

String email = request.getParameter("email");
String password = request.getParameter("password");
// admin@mavi.com -> admin page for CRUD
//admin123  -> Password
PreparedStatement ps = con.prepareStatement(
"SELECT * FROM admin WHERE email=? AND password=?");

ps.setString(1,email);
ps.setString(2,password);

ResultSet rs = ps.executeQuery();

if(rs.next()){

	response.sendRedirect("admin.jsp");

}else{

	out.println("<h2 style='color:red;'>Invalid Login</h2>");

}

%>
