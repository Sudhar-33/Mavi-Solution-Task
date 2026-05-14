
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mavi Solution Login</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
}

body{
    width:100%;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(to right,#020617,#082f49);
}

.login-container{
    width:420px;
    background:#0f172a;
    padding:50px;
    border-radius:24px;
    box-shadow:0px 0px 40px rgba(0,0,0,0.5);
}

.logo{
    text-align:center;
    margin-bottom:35px;
}

.logo h1{
    font-size:52px;
    background:linear-gradient(to right,#38bdf8,#4ade80);
    -webkit-background-clip:text;
    -webkit-text-fill-color:transparent;
}

.logo p{
    color:#94a3b8;
    margin-top:10px;
}

.input-box{
    margin-bottom:25px;
}

.input-box label{
    display:block;
    margin-bottom:10px;
    color:#e2e8f0;
}

.input-box input{
    width:100%;
    padding:16px;
    border:none;
    outline:none;
    border-radius:12px;
    background:#1e293b;
    color:white;
    font-size:15px;
}

.login-btn{
    width:100%;
    padding:16px;
    border:none;
    border-radius:14px;
    background:linear-gradient(to right,#0ea5e9,#22c55e);
    color:white;
    font-size:16px;
    font-weight:600;
    cursor:pointer;
    margin-top:10px;
}

.login-btn:hover{
    opacity:0.9;
}

.bottom-text{
    text-align:center;
    margin-top:25px;
    color:#94a3b8;
}

.bottom-text a{
    color:#38bdf8;
    text-decoration:none;
}

</style>

</head>
<body>

<div class="login-container">

    <div class="logo">
        <h1>MaVi</h1>
        <p>Employee Management System</p>
    </div>

    <form action="checkLogin.jsp" method="post">

        <div class="input-box">
            <label>Email</label>
            <input type="email" name="email" placeholder="Enter your email">
        </div>

        <div class="input-box">
            <label>Password</label>
            <input type="password" name="password" placeholder="Enter your password">
        </div>

        <button type="submit" class="login-btn">
            LOGIN
        </button>

    </form>

    <div class="bottom-text">
        Back to <a href="index.jsp">Home</a>
    </div>

</div>

</body>
</html>
