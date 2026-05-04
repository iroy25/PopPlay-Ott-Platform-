<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello Admin</title>
    <link rel="icon" type="images/logo1.png" href="/favicon.ico">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&display=swap');

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    body {
        min-height: 100vh;
        background: linear-gradient(rgba(0,0,0,0.758), rgba(0, 0, 0, 0.903)),
                    url(images/mcollage.png);
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
        display: flex;
        flex-direction: column;
    }

    
    nav {
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 14px 8%;
        background: transparent;
    }

    .logo {
        cursor: pointer;
        width: 150px;
    }

    nav .nav-btns a button {
        border: 0;
        outline: 0;
        background: #db0001;
        color: #fff;
        padding: 10px 20px;
        font-size: 14px;
        border-radius: 4px;
        margin-left: 10px;
        cursor: pointer;
    }

    nav .nav-btns a button:hover {
        background: #b30000;
    }

    
    .form-area {
    flex: 1;
    display: flex;
    justify-content: center;
    align-items: flex-start;
    padding: 30px 20px 40px;
    min-height: calc(100vh - 80px);
}

    .wrapper {
    width: 420px;
    color: #fff;
    background-color: rgba(0, 0, 0, 0.5);
    border-radius: 10px;
    padding: 30px 40px;
    margin-top: 20px;
}

    .wrapper h1 {
        font-size: 36px;
        text-align: center;
        font-weight: 100;
    }

    .wrapper h3 {
        font-size: 28px;
        text-align: center;
    }

    .wrapper .input-box {
        width: 100%;
        height: 50px;
        background: rgb(233, 230, 235);
        position: relative;
        margin: 25px 0;
        border-radius: 25px;
    }

    .wrapper .input-box input {
        width: 100%;
        height: 100%;
        background: transparent;
        border: none;
        outline: none;
        border-radius: 25px;
        font-size: 18px;
        font-weight: 500;
        color: #9b1818;
       	padding: 0 45px 0 20px;
    }

    .wrapper .input-box input::placeholder {
        color: #360606;
        
    }

    .wrapper .input-box i {
	    position: absolute;
	    right: 20px;
	    top: 50%;
	    transform: translateY(-50%);
	    font-size: 20px;
	    color: #9b1818;        
	    cursor: pointer;       
	    z-index: 10;          
	}

    .wrapper .remember-forgot {
        display: flex;
        justify-content: space-between;
        font-size: 14.5px;
        margin: -15px 0 15px;
    }

    .wrapper .remember-forgot label input {
        accent-color: #fff;
        margin-right: 3px;
    }

    .wrapper .remember-forgot a {
        color: #a8af80;
        text-decoration: none;
    }

    .wrapper .remember-forgot a:hover {
        text-decoration: underline;
    }

    .wrapper .register-link {
        font-size: 14.5px;
        text-align: center;
        margin: 20px 0 15px;
    }

    .wrapper .register-link p a {
        color: #fff;
        text-decoration: none;
        font-weight: 600;
    }

    .wrapper .register-link p a:hover {
        text-decoration: underline;
    }

    .center-button {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top: 20px;
    }

    .center-button input[type="submit"] {
        width: 50%;
        padding: 10px 0;
        border-radius: 25px;
        background-color: #ff1900;
        color: #fff;
        border: none;
        cursor: pointer;
        font-size: 16px;
        transition: background 0.3s ease;
    }

    .center-button input[type="submit"]:hover {
        background-color: #cc1400;
    }

    .error {
        color: red;
        text-align: center;
    }
    </style>

</head>

<body>

    
    <nav>
        <a href="index"><img src="images/logo1.png" class="logo"></a>
        <div class="nav-btns">
            <a href="login"><button>Log In</button></a>
            <a href="signup"><button>Sign Up</button></a>
        </div>
    </nav>

    
    <div class="form-area">
        <div class="wrapper">
            <form action="admloginproc" method="POST">
                
<p style="text-align:center; font-size:14px; color:#ccc; margin-bottom:5px;">Welcome Back, Admin</p>
                <p class="error">${msg}</p>
                <div class="input-box">
                    <input type="text" placeholder="Email" name="uemail" required>
                </div>
                <div class="input-box">
				    <input type="password" placeholder="Password" name="upass" required id="passField">
				    <i class='bx bxs-lock-alt' id="passToggle" onclick="togglePass()" style="cursor:pointer;"></i>
				</div>
                <div class="remember-forgot">
                    <label><input type="checkbox"> Remember me</label>
                    <a href="#">Forgot password?</a>
                </div>
                
                <div class="center-button">
                    <input type="submit" value="Login">
                </div>
            </form>
        </div>
    </div>
<script>
function togglePass() {
    const field = document.getElementById('passField');
    const icon = document.getElementById('passToggle');
    if (field.type === 'password') {
        field.type = 'text';
        icon.className = 'bx bx-lock-open-alt';
        icon.style.color = '#db0001';   
    } else {
        field.type = 'password';
        icon.className = 'bx bxs-lock-alt';
        icon.style.color = '#9b1818';
    }
}
</script>
</body>
</html>
<jsp:include page="index_footer.jsp" />