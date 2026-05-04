<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
        <title>PopPlay Homepage</title>
        <link rel="icon" type="images/logo1.png" href="/favicon.ico">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
     </head>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&display=swap');
    
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
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    
    width: 100%;
    max-width: 800px;

    text-align: center;
    padding: 0 20px;
}
.header-content h1{
    font-size: 60px;
    line-height: 70px;
    font-weight: 600;
    margin-bottom: 20px;
}
.header-content h3{
    font-weight: 400;
    margin-bottom: 20px;
    color: aqua;
    line-height: 1.5;
}

.header-content p{
    margin-bottom: 20px;
    line-height: 1.6;
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
.text-col,
.img-col{
    flex-basis: 100%;
    text-align: center
	margin-bottom:20px;
}

.img-col img{
    display: block;
    width: 90%;
    margin: auto;

}
.text-col p{
    text-align: center;
}
.features h2{
    font-size: 50px;
    font-weight: 600;
    margin-bottom: 20px;
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
                    <div class="email-signup">
					    <a href="signup">
					        <button type="button">Get Started</button>
					    </a>
					</div>
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
                <div class="text-col">
                        <h2>Wide range of Entertainment</h2>
                        <p>Discover a vast collection of content that caters to every taste and mood.</p>
                    </div>
                    <div class="img-col">
                        <img src="images/pic22.png" alt="">
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


            

    </body>
</html>

<jsp:include page="index_footer.jsp" />