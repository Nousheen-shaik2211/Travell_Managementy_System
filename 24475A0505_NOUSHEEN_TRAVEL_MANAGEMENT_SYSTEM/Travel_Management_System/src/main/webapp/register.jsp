<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{

    background-image:url('https://images.unsplash.com/photo-1488646953014-85cb44e25828');

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;

    height:100vh;

    display:flex;
    justify-content:center;
    align-items:center;
}

.container{

    width:450px;

    background:rgba(255,255,255,0.95);

    padding:35px;

    border-radius:15px;

    box-shadow:0 0 20px rgba(0,0,0,0.4);
}

h2{

    text-align:center;
    color:#2c3e50;
    margin-bottom:25px;
}

input, textarea{

    width:100%;
    padding:12px;

    margin-top:10px;
    margin-bottom:15px;

    border:1px solid #ccc;
    border-radius:6px;

    font-size:15px;
}

textarea{
    resize:none;
}

.btn{

    width:100%;

    background:#007bff;

    color:white;

    border:none;

    padding:14px;

    font-size:17px;

    border-radius:6px;

    cursor:pointer;
}

.btn:hover{

    background:#0056b3;
}

.login-link{

    text-align:center;
    margin-top:15px;
}

.login-link a{

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

<div class="container">

    <h2>Create Account</h2>

    <% if(request.getAttribute("message") != null){ %>
        <div class="message">
            <%= request.getAttribute("message") %>
        </div>
    <% } %>

    <form action="register" method="post">

        <input type="text"
               name="username"
               placeholder="Username"
               required>

        <input type="password"
               name="password"
               placeholder="Password"
               required>

        <input type="email"
               name="email"
               placeholder="Email Address"
               required>

        <input type="text"
               name="fullName"
               placeholder="Full Name"
               required>

        <input type="text"
               name="phone"
               placeholder="Phone Number"
               required>

        <textarea name="address"
                  rows="3"
                  placeholder="Address"
                  required></textarea>

        <button type="submit" class="btn">
            Register
        </button>

    </form>

    <div class="login-link">

        Already have an account?

        <a href="login.jsp">
            Login
        </a>

    </div>

</div>

</body>
</html>