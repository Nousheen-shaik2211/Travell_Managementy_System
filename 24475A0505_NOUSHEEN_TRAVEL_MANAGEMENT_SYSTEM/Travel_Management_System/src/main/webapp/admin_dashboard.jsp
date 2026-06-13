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
<title>Admin Dashboard</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{

    background:url("https://images.unsplash.com/photo-1469474968028-56623f02e42e")
    no-repeat center center fixed;

    background-size:cover;
}

.overlay{

    min-height:100vh;

    background:rgba(0,0,0,0.65);

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

    font-size:22px;
}

.container{

    display:flex;

    justify-content:center;

    flex-wrap:wrap;

    gap:30px;
}

.card{

    width:300px;

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

    color:#666;

    margin-bottom:20px;
}

.btn{

    text-decoration:none;

    background:#007bff;

    color:white;

    padding:12px 25px;

    border-radius:6px;

    display:inline-block;
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

        <h1>Admin Dashboard</h1>

        <p>
            Welcome Admin,
            <%= ((Model.User)session.getAttribute("user")).getFullName() %>
        </p>

    </div>

    <div class="container">

        <div class="card">

            <h2>Manage Packages</h2>

            <p>
                View and manage travel packages.
            </p>

            <a href="packages" class="btn">
                Packages
            </a>

        </div>

        <div class="card">

            <h2>Manage Hotels</h2>

            <p>
                View and manage hotel information.
            </p>

            <a href="hotels" class="btn">
                Hotels
            </a>

        </div>

        <div class="card">

            <h2>Manage Bookings</h2>

            <p>
                Monitor all customer bookings.
            </p>

            <a href="booking.jsp" class="btn">
                Bookings
            </a>

        </div>

        <div class="card">

            <h2>User Management</h2>

            <p>
                View registered customers.
            </p>

            <a href="#" class="btn">
                Users
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