<%@include file="db.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<style>

body{
	background:#020617;
	color:white;
	font-family:Poppins;
	padding:40px;
}

h1{
	color:#38bdf8;
}

form{
	background:#0f172a;
	padding:30px;
	border-radius:20px;
	width:500px;
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
	background:#0ea5e9;
	color:white;
	cursor:pointer;
}

table{
	width:100%;
	margin-top:40px;
	border-collapse:collapse;
}

th{
	background:#0ea5e9;
	padding:15px;
}

td{
	background:#0f172a;
	padding:15px;
	text-align:center;
}

a{
	text-decoration:none;
	color:white;
}

.edit{
	background:#22c55e;
	padding:8px 15px;
	border-radius:8px;
}

.delete{
	background:#ef4444;
	padding:8px 15px;
	border-radius:8px;
}

</style>

</head>
<body>
    
    <a href="login.jsp">
    <button style="
        padding:12px 25px;
        border:none;
        border-radius:10px;
        background:#ef4444;
        color:white;
        cursor:pointer;
        float:right;
    ">
        Logout
    </button>
</a>

<h1>Admin Dashboard</h1>

<form action="addEmployee.jsp" method="post">

	<input type="text"
	name="name"
	placeholder="Employee Name">

	<input type="email"
	name="email"
	placeholder="Employee Email">

	<input type="text"
	name="department"
	placeholder="Department">

	<input type="text"
	name="salary"
	placeholder="Salary">

	<button type="submit">
	Add Employee
	</button>

</form>

<table border="1">

<tr>

<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Department</th>
<th>Salary</th>
<th>Edit</th>
<th>Delete</th>

</tr>

<%

Statement st = con.createStatement();

ResultSet rs =
st.executeQuery("SELECT * FROM employee");

while(rs.next()){

%>

<tr>

<td><%=rs.getInt("id")%></td>

<td><%=rs.getString("name")%></td>

<td><%=rs.getString("email")%></td>

<td><%=rs.getString("department")%></td>

<td><%=rs.getDouble("salary")%></td>

<td>

<a class="edit"
href="edit.jsp?id=<%=rs.getInt("id")%>">

Edit

</a>

</td>

<td>

<a class="delete"
href="delete.jsp?id=<%=rs.getInt("id")%>">

Delete

</a>

</td>

</tr>

<%
}
%>

</table>

</body>
</html>