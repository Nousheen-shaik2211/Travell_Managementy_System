<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="Model.Package" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Travel Packages</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{

    background:url("https://images.unsplash.com/photo-1501785888041-af3ef285b470")
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

    margin-bottom:40px;
}

.header h1{

    font-size:50px;

    margin-bottom:10px;
}

.header p{

    font-size:20px;
}

.container{

    display:flex;

    flex-wrap:wrap;

    justify-content:center;

    gap:25px;
}

.card{

    width:340px;

    background:white;

    border-radius:15px;

    overflow:hidden;

    box-shadow:0 5px 20px rgba(0,0,0,0.4);

    transition:0.3s;
}

.card:hover{

    transform:translateY(-10px);
}

.card img{

    width:100%;

    height:220px;

    object-fit:cover;
}

.content{

    padding:20px;
}

.content h2{

    color:#2c3e50;

    margin-bottom:10px;
}

.content p{

    color:#555;

    margin-bottom:10px;
}

.price{

    color:#28a745;

    font-size:24px;

    font-weight:bold;

    margin:15px 0;
}

.btn{

    display:inline-block;

    text-decoration:none;

    background:#007bff;

    color:white;

    padding:10px 20px;

    border-radius:6px;

    margin-top:10px;
}

.btn:hover{

    background:#0056b3;
}

.back{

    text-align:center;

    margin-top:40px;
}

.back a{

    text-decoration:none;

    background:#dc3545;

    color:white;

    padding:12px 25px;

    border-radius:6px;
}

.back a:hover{

    background:#b02a37;
}

</style>

</head>

<body>

<div class="overlay">

    <div class="header">

        <h1>Travel Packages</h1>

        <p>Choose Your Dream Destination</p>

    </div>

    <div class="container">

        <%
            List<Package> packages =
                (List<Package>)request.getAttribute("packages");

            if(packages != null){

                for(Package pkg : packages){
        %>

        <div class="card">

            <img src="<%= (pkg.getImageUrl() != null && !pkg.getImageUrl().isEmpty())
                    ? pkg.getImageUrl()
                    : "https://images.unsplash.com/photo-1488646953014-85cb44e25828" %>">

            <div class="content">

                <h2>
                    <%= pkg.getPackageName() %>
                </h2>

                <p>
                    <strong>Destination:</strong>
                    <%= pkg.getDestination() %>
                </p>

                <p>
                    <strong>Duration:</strong>
                    <%= pkg.getDurationDays() %> Days
                </p>

                <p>
                    <%= pkg.getDescription() %>
                </p>

                <div class="price">

                    ₹ <%= pkg.getPrice() %>

                </div>

                <a href="booking.jsp?packageId=<%= pkg.getPackageId() %>"
                   class="btn">

                    Book Now

                </a>

            </div>

        </div>

        <%
                }
            }
        %>

    </div>

    <div class="back">

        <a href="dashboard.jsp">
            Back To Dashboard
        </a>

    </div>

</div>

</body>
</html>