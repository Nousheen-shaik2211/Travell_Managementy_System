<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - Travel Management System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{

    height:100vh;

    background:url("https://images.unsplash.com/photo-1500530855697-b586d89ba3ee")
               no-repeat center center/cover;

    display:flex;
    justify-content:center;
    align-items:center;
}

.overlay{

    width:100%;
    height:100%;

    background:rgba(0,0,0,0.5);

    display:flex;
    justify-content:center;
    align-items:center;
}

.login-box{

    width:420px;

    background:rgba(255,255,255,0.95);

    padding:40px;

    border-radius:15px;

    box-shadow:0 0 25px rgba(0,0,0,0.4);
}

.login-box h2{

    text-align:center;

    color:#2c3e50;

    margin-bottom:25px;
}

input{

    width:100%;

    padding:12px;

    margin:12px 0;

    border:1px solid #ccc;

    border-radius:6px;

    font-size:16px;
}

.btn{

    width:100%;

    padding:14px;

    border:none;

    background:#007bff;

    color:white;

    font-size:18px;

    border-radius:6px;

    cursor:pointer;

    transition:0.3s;
}

.btn:hover{

    background:#0056b3;
}

.register-link{

    text-align:center;

    margin-top:15px;
}

.register-link a{

    text-decoration:none;

    color:#007bff;

    font-weight:bold;
}

.message{

    color:red;

    text-align:center;

    margin-bottom:10px;
}

</style>

</head>

<body>

<div class="overlay">

    <div class="login-box">

        <h2>User Login</h2>

        <% if(request.getAttribute("message") != null){ %>

            <div class="message">
                <%= request.getAttribute("message") %>
            </div>

        <% } %>

        <form action="login" method="post">

            <input type="text"
                   name="username"
                   placeholder="Enter Username"
                   required>

            <input type="password"
                   name="password"
                   placeholder="Enter Password"
                   required>

            <button type="submit" class="btn">
                Login
            </button>

        </form>

        <div class="register-link">

            New User?

            <a href="register.jsp">
                Create Account
            </a>

        </div>

    </div>

</div>

</body>
</html>