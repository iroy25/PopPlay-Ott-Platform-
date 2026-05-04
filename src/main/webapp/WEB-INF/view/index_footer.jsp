<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
    .footer {
        width: 100%;
        position: relative;
        z-index: 5;
        padding: 50px 15% 10px;
        border-top: 6px solid #333;
        color: #777;
        background: #000;    
        margin-top: 60px;           
    }
    .footer .row {
        display: flex;
        width: 100%;
        align-items: flex-start;
        flex-wrap: wrap;
        padding: 10px 0;
    }
    .footer .col {
        flex: 1 0 20%;
        margin-bottom: 20px;
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
    }
    .footer .col a {
        display: block;
        text-decoration: none;
        color: #777;
        font-size: 16px;
        margin-bottom: 10px;
    }
    .footer .col h6 {
        font-size: 14px;
        margin-bottom: 5px;
        color: #fff;
    }
    .footer .copyright {
        color: #fff;
        text-align: center;
        margin-top: 10px;
        padding-bottom: 20px;
    }
    .footer .copyright a {
        color: #fff;
        text-decoration: none;
    }
    @media only screen and (max-width: 600px) {
        .footer .col {
            flex: 1 0 40%;
        }
    }
</style>

<div class="footer">
    <div class="row">
        <div class="col">
            <a href="#">Privacy</a>
            <a href="#">Speed Test</a>
        </div>
        <div class="col">
            <a href="#">Help Center</a>
            <a href="#">Jobs</a>
            <a href="#">Cookies Preferences</a>
            <a href="#">Legal Notices</a>
        </div>
        <div class="col">
            <a href="#">Account</a>
            <a href="#">Ways to Watch</a>
        </div>
        <div class="col">
            <a href="#">Media Centre</a>
            <a href="#">Terms of Use</a>
            <a href="#">Contact Us</a>
        </div>
        <div class="col">
            <h6>Follow Us On</h6>
            <a href="#" class="fa-brands fa-facebook"></a>
            <a href="#" class="fa-brands fa-square-twitter"></a>
            <a href="#" class="fa-brands fa-square-instagram"></a>
            <a href="#" class="fa-brands fa-pinterest"></a>
        </div>
    </div>
    <div class="copyright">
        <p>All rights reserved &copy; 2024, <a href="#">PopPlay</a></p>
    </div>
</div>