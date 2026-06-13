<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Travel Management System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:Arial, sans-serif;
}

body{

    background-image:url("https://images.unsplash.com/photo-1507525428034-b723cf961d3e");

    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;

    height:100vh;
}

.overlay{

    width:100%;
    height:100vh;

    background:rgba(0,0,0,0.5);

    display:flex;
    flex-direction:column;
    justify-content:center;
    align-items:center;

    color:white;
}

h1{

    font-size:60px;
    margin-bottom:20px;
}

p{

    font-size:22px;
    margin-bottom:30px;
}

.btn{

    text-decoration:none;

    background:#ff9800;
    color:white;

    padding:15px 30px;

    margin:10px;

    border-radius:10px;

    font-size:18px;

    transition:0.3s;
}

.btn:hover{

    background:#e68900;
}

</style>

</head>

<body>

<div class="overlay">

    <h1>Travel Management System</h1>

    <p>Explore The World With Us</p>

    <div>

        <a href="register.jsp" class="btn">
            Register
        </a>

        <a href="login.jsp" class="btn">
            Login
        </a>

        <a href="packages" class="btn">
            View Packages
        </a>

    </div>

</div>

</body>
</html>