<%@include file="db.jsp"%>

<%

int id =
Integer.parseInt(
request.getParameter("id"));

PreparedStatement ps =
con.prepareStatement(
"SELECT * FROM employee WHERE id=?");

ps.setInt(1,id);

ResultSet rs = ps.executeQuery();

rs.next();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>

<style>

body{
	background:#020617;
	color:white;
	font-family:Poppins;
	padding:40px;
}

form{
	width:500px;
	background:#0f172a;
	padding:30px;
	border-radius:20px;
}

input{
	width:100%;
	padding:15px;
	margin-top:15px;
	border:none;
	border-radius:10px;
}

button{
	margin-top:20px;
	padding:15px 30px;
	border:none;
	border-radius:10px;
	background:#22c55e;
	color:white;
	cursor:pointer;
}

</style>

</head>
<body>

<h1>Edit Employee</h1>

<form action="update.jsp" method="post">

<input type="hidden"
name="id"
value="<%=rs.getInt("id")%>">

<input type="text"
name="name"
value="<%=rs.getString("name")%>">

<input type="email"
name="email"
value="<%=rs.getString("email")%>">

<input type="text"
name="department"
value="<%=rs.getString("department")%>">

<input type="text"
name="salary"
value="<%=rs.getDouble("salary")%>">

<button type="submit">
Update Employee
</button>

</form>

</body>
</html>