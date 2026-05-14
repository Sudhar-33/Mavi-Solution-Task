<%@include file="db.jsp"%>

<%

String name = request.getParameter("name");

String email = request.getParameter("email");

String department =
request.getParameter("department");

double salary =
Double.parseDouble(
request.getParameter("salary"));

PreparedStatement ps =
con.prepareStatement(
"INSERT INTO employee(name,email,department,salary) VALUES(?,?,?,?)");

ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,department);
ps.setDouble(4,salary);

ps.executeUpdate();

response.sendRedirect("admin.jsp");

%>