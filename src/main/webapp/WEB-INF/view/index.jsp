<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
        <title>PopPlay Homepage</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     </head>
    <style>
        *{
    margin: 0;
    padding: 0;
    font-family : 'Poppins',sans-serif;
    box-sizing: border-box;
    }

    body{
        background : #000;
        color: #fff;
    }

    .header{
        width: 100%;
        height: 100vh;
        background-image: linear-gradient(rgba(0, 0, 0, 0.758),rgba(0, 0, 0, 0.903)),url(images/mcollage.png);
        
        background-size: cover;
        background-position: center;
        padding: 10px 8%;
        position: relative;
    }
    nav{
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 10px 0;
    }

    .logo{
        cursor: pointer;
        width: 150px;
    }

    nav button{
        border: 0;
        outline:0;
        background: #db0001;
        color: #fff;
        padding: 10px 20px;
        font-size: 14px;
        border-radius: 4px;
        margin-left: 10px;
        cursor: pointer;
    }

    .language-btn {
        display: inline-flex;
        align-items: center;
        background: transparent;
        border: 1px solid #fff;
        padding: 7px 10px;
    }
    .language-btn img{
        width: 10px;
        margin-left: 10px;
    }


.header-content{
    position: absolute;
    text-align:center;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    text-align:center;
    margin-top: 100px;
}
.header-content h1{
    font-size:60px;
    line-height: 70px;
    font-weight: 600px;
    text-align:center;
    max-width: 650px;
}
.header-content h3{
    font-weight: 400;
    margin-bottom: 20px;
    color: aqua;
}


.email-signup input{
    flex: 1;
    border: 0;
    outline:0;
    margin-left: 20px;
    margin-top: 10px;
}

.email-signup button{
    background: #db0001;
    border: 0;
    outline: 0;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    padding: 10px 20px;
    margin-top: 15px;
}



/*******************features****************/
.features {
    padding: 50px 12%;
    font-size: 22px;
}
.row{
    display: flex;
    width: 100%;
    align-items: center;
    flex-wrap: wrap;
    padding: 50px 0;
}
.text-col{
    flex-basis: 50%;
    margin-bottom: 20px;
}
.img-col{
    flex-basis: 50%;
    margin-bottom: 20px;
}
.img-col img{
    display: block;
    width: 90%;
    margin: auto;

}
.features h2{
    font-size: 50px;
    font-weight: 600;
    margin-bottom: 20px;
}


/******foooter***/
.footer{
    padding: 50px 15% 10px;
    border-top: 6px solid #333;
    color: #777;
}
.footer h2{
    font-size: 18px;
    font-weight: 400;
    margin-bottom: 30px;
}

.footer .col a{
     display: block;
    text-decoration: none;
    color: #777;
    font-size: 16px;
    margin-bottom: 10px;
}

.footer .row{
    align-items: flex-start;
    padding: 10px 0px;
}



.footer .col {
    flex: 1 0 20%; 
    margin-bottom: 20px;
    display: block;
    flex-direction: column; 
    align-items: flex-start;
    text-align: center; 
}

.footer .col h6 {
    font-size: 14px;
    margin-bottom: 5px; 
}


@media only screen and (max-width: 600px) {
    .logo{
        width: 100px;

    }
    nav button{
        padding: 5px 10px;
    }
    nav .language-btn{
        padding: 4px 8px;
    }
    .header-content{
        position: unset;
        transform: none;
        padding-top: 150px;
    }
    .header-content h1{
        font-size: 30px;
    }
    .email-signup button{
        font-size: 12px;
        padding: 10px 15px;
    }
    .text-col, img-col{
        flex-basis: 100%;
    }
    .features h2{
        font-size: 30px;
    }
    .features p{
        font-size: 15px;
    }
    .row:nth-child(2),.row:nth-child(4){
        flex-direction: column-reverse;
    }
    .features .row{
        padding: 10px 0;
    }
        
    label::after{
        font-size: 32px;
    }
}
        

    </style>
    <body>
        <div class="header">
            <nav>
                <img src="images/logo1.png" class="logo">
                <div>
                    <a href="login"><button>Log In</button></a>
                    <a href="signup"><button>Sign Up</button></a>
                </div>
            </nav>

                <div class="header-content">
                    <h1>Ultimate destination for endless entertainment</h1>
                    <h3>Why spend your hard earned cash on cable or Netflix when you can stream thousands of movies and series at no cost?</h3>
                    <p>Experience the magic of streaming with PopPlay, where every play is a pop of joy!</p>
                    <form class="email-signup">
                        <a href="signup"><button>Get Started</button></a>
                    </form>
                </div>
            </div>


            <div class="features" style="background-color: #03030c;">
                <div class="row">
                    <div class="text-col">
                        <h2>Enjoy on your TV</h2>
                        <p>Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV.</p>
                    </div>
                    <div class="img-col">
                        <img src="images/tv.jpg" alt="">
                    </div>
                </div>


                <div class="row">
                    <div class="img-col">
                        <img src="images/pic22.png" alt="">
                    </div>
                    <div class="text-col">
                        <h2>Wide range of Entertainment</h2>
                        <p>Discover a vast collection of content that caters to every taste and mood.</p>
                    </div>
                    
                </div>


                <div class="row">
                    
                    <div class="text-col">
                       <h2>Unlimited Fun for Kids.</h2>
                        <p>Enjoy a wide array of animated adventures and family-friendly entertainment, all in one vibrant platform!</p>
                    </div>
                    <div class="img-col">
                        <img src="images/feature-4.png">
                    </div>
                    
                </div>
            </div>


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
                        <h6 class="text-white fs-5">Follow Us On</h6>
                            <a href="#" class="fa-brands fa-facebook"></a>
                            <a href="#" class="fa-brands fa-square-twitter"></a>
                            <a href="#" class="fa-brands fa-square-instagram"></a>
                            <a href="#" class="fa-brands fa-pinterest"></a>
                    </div>
                </div>
                
                <div class="text-white text-center">
                    <p>All rights reserved &copy 2024,<a href="#">PopPlay</a></p>
                </div>
            </div>


    </body>
</html>