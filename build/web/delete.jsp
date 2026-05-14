<%@include file="db.jsp"%>

<%

int id =
Integer.parseInt(
request.getParameter("id"));

PreparedStatement ps =
con.prepareStatement(
"DELETE FROM employee WHERE id=?");

ps.setInt(1,id);

ps.executeUpdate();

response.sendRedirect("admin.jsp");

%>