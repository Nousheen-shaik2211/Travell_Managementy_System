<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("user") == null){
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Dashboard</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{

    background:url("https://images.unsplash.com/photo-1488085061387-422e29b40080")
    no-repeat center center fixed;

    background-size:cover;
}

.overlay{

    min-height:100vh;

    background:rgba(0,0,0,0.55);

    padding:30px;
}

.header{

    text-align:center;
    color:white;
    margin-bottom:50px;
}

.header h1{

    font-size:50px;
    margin-bottom:10px;
}

.header p{

    font-size:20px;
}

.container{

    width:90%;
    margin:auto;

    display:flex;
    justify-content:center;
    flex-wrap:wrap;
    gap:30px;
}

.card{

    width:280px;

    background:white;

    border-radius:15px;

    padding:25px;

    text-align:center;

    box-shadow:0 5px 20px rgba(0,0,0,0.3);

    transition:0.3s;
}

.card:hover{

    transform:translateY(-10px);
}

.card h2{

    color:#2c3e50;
    margin-bottom:15px;
}

.card p{

    color:#555;
    margin-bottom:20px;
}

.btn{

    display:inline-block;

    text-decoration:none;

    background:#007bff;

    color:white;

    padding:12px 25px;

    border-radius:6px;

    transition:0.3s;
}

.btn:hover{

    background:#0056b3;
}

.logout{

    text-align:center;
    margin-top:50px;
}

.logout a{

    background:#dc3545;
}

.logout a:hover{

    background:#b02a37;
}

</style>

</head>

<body>

<div class="overlay">

    <div class="header">

        <h1>Travel Management System</h1>

        <p>
            Welcome,
            <%= ((Model.User)session.getAttribute("user")).getFullName() %>
        </p>

    </div>

    <div class="container">

        <div class="card">

            <h2>Travel Packages</h2>

            <p>
                Explore exciting domestic and international travel packages.
            </p>

            <a href="packages" class="btn">
                View Packages
            </a>

        </div>

        <div class="card">

            <h2>Hotels</h2>

            <p>
                Browse premium hotels and luxury accommodations.
            </p>

            <a href="hotels" class="btn">
                View Hotels
            </a>

        </div>

        <div class="card">

            <h2>Book Your Trip</h2>

            <p>
                Plan your dream vacation and confirm your booking.
            </p>

            <a href="booking.jsp" class="btn">
                Book Now
            </a>

        </div>

    </div>

    <div class="logout">

        <a href="logout" class="btn">
            Logout
        </a>

    </div>

</div>

</body>
</html>