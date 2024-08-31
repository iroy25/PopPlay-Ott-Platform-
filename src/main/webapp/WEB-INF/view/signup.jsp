<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form For User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <style>
 
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: #000;
            color: #fff;
        }


        .header {
            background: linear-gradient(rgba(0, 0, 0, 0.758), rgba(0, 0, 0, 0.903)), url(images/mcollage.png);
            background-size: cover;
            background-position: center;
            padding: 20px 8%;
        }

        .header nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header .logo {
            width: 150px;
        }

        .header button {
            background-color: #db0001;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        form input[type="submit"] {
    background-color: #db0001;
    border-radius: 20px;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    width: 100%;
    transition: background-color 0.3s ease;
}

form input[type="submit"]:hover {
    background-color: #3a3131;
}
    </style>
</head>
<body>

   
    <header class="header">
        <nav>
            <img src="images/logo1.png" class="logo" alt="Logo">
            <button>Log In</button>
        </nav>
    </header>

    <section class="vh-100">
    
        <div class="card text-black" style="background-image: linear-gradient(to right,#362020, #ff7474, #110606)">
            <div class="card-body p-md-5">
                <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
                        <form action="regprocess" method="post" class="mx-1 mx-md-4">
                            <div class="d-flex flex-row align-items-center mb-4">

                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor"
                                    class="bi bi-person-fill" viewBox="0 0 20 60">
                                    <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z" />
                                </svg>
                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                <div class="form-outline flex-fill mb-0">
                                    <label for="validationDefault01" class="form-label">Your Name</label>
                                    <input type="text" id="validationDefault01" name="uname" class="form-control" value="" required />
                                </div>
                            </div>

                            <div class="d-flex flex-row align-items-center mb-4">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 20 60">
                                    <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z" />
                                </svg>
                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                <div class="form-outline flex-fill mb-0">
                                    <label class="form-label" for="form3Example3c">Your Email</label>
                                    <input type="email" id="form3Example3c" name="uemail" class="form-control" />
                                </div>
                            </div>

                            

                            <div class="d-flex flex-row align-items-center mb-4">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor"
                                    class="bi bi-telephone-fill" viewBox="0 0 20 60">
                                    <path fill-rule="evenodd"  d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                                </svg>
                                
                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                <div class="form-outline flex-fill mb-0">
                                    <label class="form-label" for="form3Example3c">Your Mobile Number</label>
                                    <input type="mobile" id="form3Example3c" name="uphno" class="form-control" />

                                </div>
                            </div>

                            <div class="d-flex flex-row align-items-center mb-4">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor"  class="bi bi-lock-fill" viewBox="0 0 20 60">
                                    <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z" />
                                </svg>
                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                <div class="form-outline flex-fill mb-0">
                                    <label class="form-label" for="form3Example4c">Password</label>
                                    <input type="password" id="form3Example4c" name="upass" class="form-control" />

                                </div>
                            </div>
                            <div class="d-flex flex-row align-items-center mb-4">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor"
                                    class="bi bi-telephone-fill" viewBox="0 0 20 60">
                                    <path fill-rule="evenodd"  d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                                </svg>

                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                <div class="form-outline flex-fill mb-0">
                                    <label class="form-label" for="form3Example3c">Security ques: Your favourite city?</label>
                                    <input type="text" id="form3Example3c" name="uans" class="form-control" />
                                </div>
                            </div>

                           <div>
                <input type="submit" value="Register">
            </div>
                            <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href='login' class="fw-bold text-body"><u>LogIn here</u></a></p>
                        </form>

                    </div>
                    
                </div>
            </div>
        </div>
</section>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>
