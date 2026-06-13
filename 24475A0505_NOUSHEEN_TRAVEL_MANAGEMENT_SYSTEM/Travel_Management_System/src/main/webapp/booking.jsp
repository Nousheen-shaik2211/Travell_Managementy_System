<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("user") == null){
        response.sendRedirect("login.jsp");
        return;
    }

    String packageId = request.getParameter("packageId");

    if(packageId == null){
        packageId = "";
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Your Trip</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{

    background:url("https://images.unsplash.com/photo-1500530855697-b586d89ba3ee")
    no-repeat center center fixed;

    background-size:cover;
}

.overlay{

    min-height:100vh;

    background:rgba(0,0,0,0.60);

    display:flex;

    justify-content:center;

    align-items:center;
}

.booking-box{

    width:500px;

    background:white;

    padding:35px;

    border-radius:15px;

    box-shadow:0 5px 20px rgba(0,0,0,0.4);
}

.booking-box h1{

    text-align:center;

    color:#2c3e50;

    margin-bottom:25px;
}

input{

    width:100%;

    padding:12px;

    margin-top:10px;

    margin-bottom:20px;

    border:1px solid #ccc;

    border-radius:6px;

    font-size:16px;
}

label{

    font-weight:bold;

    color:#333;
}

.btn{

    width:100%;

    padding:14px;

    border:none;

    background:#28a745;

    color:white;

    font-size:18px;

    border-radius:6px;

    cursor:pointer;
}

.btn:hover{

    background:#218838;
}

.back{

    text-align:center;

    margin-top:15px;
}

.back a{

    text-decoration:none;

    color:#007bff;

    font-weight:bold;
}

</style>

</head>

<body>

<div class="overlay">

    <div class="booking-box">

        <h1>Book Your Dream Trip</h1>

        <form action="booking" method="post">

            <label>Package ID</label>

            <input type="number"
                   name="packageId"
                   value="<%= packageId %>"
                   readonly>

            <label>Travel Date</label>

            <input type="date"
                   name="travelDate"
                   required>

            <label>Number Of People</label>

            <input type="number"
                   name="numPeople"
                   min="1"
                   required>

            <button type="submit" class="btn">

                Confirm Booking

            </button>

        </form>

        <div class="back">

            <a href="packages">
                ← Back To Packages
            </a>

        </div>

    </div>

</div>

</body>
</html>