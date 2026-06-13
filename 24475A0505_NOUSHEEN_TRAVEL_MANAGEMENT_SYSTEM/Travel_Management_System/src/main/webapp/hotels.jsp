<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="Model.Hotel" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hotels</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Segoe UI',sans-serif;
}

body{

    background:url("https://images.unsplash.com/photo-1566073771259-6a8506099945")
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

    width:350px;

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

.rating{

    color:#ff9800;
    font-weight:bold;
    font-size:18px;
}

.price{

    color:#28a745;
    font-size:24px;
    font-weight:bold;
    margin-top:15px;
}

.btn{

    display:inline-block;

    text-decoration:none;

    background:#007bff;

    color:white;

    padding:10px 20px;

    border-radius:6px;

    margin-top:15px;
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

        <h1>Luxury Hotels</h1>

        <p>Find Comfortable & Premium Stays</p>

    </div>

    <div class="container">

        <%
            List<Hotel> hotels =
                (List<Hotel>) request.getAttribute("hotels");

            if(hotels != null){

                for(Hotel hotel : hotels){
        %>

        <div class="card">

            <img src="<%= (hotel.getImageUrl() != null && !hotel.getImageUrl().isEmpty())
                ? hotel.getImageUrl()
                : "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa" %>">

            <div class="content">

                <h2>
                    <%= hotel.getHotelName() %>
                </h2>

                <p>
                    <strong>Location:</strong>
                    <%= hotel.getLocation() %>
                </p>

                <p class="rating">
                    ⭐ Rating:
                    <%= hotel.getRating() %>
                </p>

                <p>
                    <%= hotel.getDescription() %>
                </p>

                <div class="price">

                    ₹ <%= hotel.getPricePerNight() %> / Night

                </div>

                <a href="booking.jsp?hotelId=<%= hotel.getHotelId() %>"
                   class="btn">

                   Book Hotel

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