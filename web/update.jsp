<%@include file="db.jsp"%>

<%

int id =
Integer.parseInt(
request.getParameter("id"));

String name =
request.getParameter("name");

String email =
request.getParameter("email");

String department =
request.getParameter("department");

double salary =
Double.parseDouble(
request.getParameter("salary"));

PreparedStatement ps =
con.prepareStatement(
"UPDATE employee SET name=?,email=?,department=?,salary=? WHERE id=?");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,department);
ps.setDouble(4,salary);
ps.setInt(5,id);

ps.executeUpdate();

response.sendRedirect("admin.jsp");

%>