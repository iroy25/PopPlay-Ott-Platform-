<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome Admin</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        *{
            margin: 0;
            padding: 0;

        }
        body{
            background-color: #989595;
        }
        .navbar {
            background-image: linear-gradient(rgba(0, 0, 0, 0.758), rgba(0, 0, 0, 0.903)), url('images/mcollage.png');
            background-size: cover;
            background-position: center;
            height: 97px;
            width: 100%;
            padding: 19px 65px;
        }
        .card{
            width: 163px;
            height: 234px;
        }
        .navbar-nav .nav-item .nav-link:hover,
        .btn:hover,
        .card:hover {
            transform: scale(1.05);
            transition: transform 0.3s;
        }
        .card-body {
        -ms-flex: 1 1 auto;
        flex: 1 34 auto;
        padding: 1.25rem 3px;
        }
        .card:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .row{
            padding: 17px 39px;
        }
        @media only screen and (max-width: 600px) {
    .logo{
        width: 100px;
    }
    .navbar {
        padding: 10px;
        height: auto;
    }
    .navbar-brand img {
        width: 80px;
        height: auto;
    }
    .navbar-brand {
        font-size: 16px;
    }
    .navbar-nav .nav-item h4 {
        font-size: 18px;
    }
    .navbar-nav .nav-item .btn {
        padding: 5px 10px;
        font-size: 14px;
    }
    .card {
        width: 100%;
        margin-bottom: 15px;
    }
    .card-body {
        padding: 10px;
    }
    .row {
        padding: 10px;
    }

}
    </style>
</head>
<body>
<form action="admloginproc"  method="post" enctype="multipart/form-data" >
    <nav class="navbar navbar-expand-md " >
        <a class="navbar-brand" href="#"><img src="images/logo1.png" width="100" height="50"></a> 
        <div class="navbar-brand text-warning font-weight-bold">PopPlay</div>       
        <ul class="navbar-nav mx-auto">
            <li class="nav-item">
                <h4 style="color: white;">Admin Dashboard</h4>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a href="login.html">
                    <button type="submit" name="logout" class="btn text-white btn-danger">Log-out</button>
                </a>
            </li>
        </ul>
    </nav>

    <section class="container text-dark font-weight-bold" id="services">
        <div class="row">
            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="addproduct" style="text-decoration: none;">
                    <div class="imgsetting">
                        <div class="card">
                            <img src="images/tvtime.png" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">Add Products</h5>
                            </div>
                        </div>
                    </div>
                </a>    
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="viewproduct" style="text-decoration: none;">
                    <div class="imgsetting d-block m-auto">
                        <div class="card">
                            <img src="images/tvtime.png" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">View Product</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="udetail" style="text-decoration: none;">
                    <div class="imgsetting d-block m-auto">
                        <div class="card">
                            <img src="images/tvtime.jpg" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">View User</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-2 col-md-4 col-sm-4 col-5 d-block m-auto">
                <a href="#" style="text-decoration: none;">
                    <div class="imgsetting d-block m-auto">
                        <div class="card">
                            <img src="images/tvtime.jpg" class="card-img img-fluid">
                            <div class="card-body text-center">
                                <h5 class="card-title">View FeedBack</h5>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </section>
</body>
</html>
