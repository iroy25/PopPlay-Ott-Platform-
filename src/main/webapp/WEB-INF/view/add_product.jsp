<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
    
<html lang="en" dir="ltr">
    <head>
      <meta charset="utf-8">
      <title>Add Product</title>
    <link rel="stylesheet" >
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />

  </head>
<style>
    * {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	
  }
  
  body {
	height:100%;
	background: white;
	width:100%;

  }
  
  .header {
	width: 100%;
	height: 100%;
	padding: 10px 8%;
	
    background-image: linear-gradient(rgba(0, 0, 0, 0.758), rgba(0, 0, 0, 0.903)), url(images/mcollage.png);
	background-size: cover;
	background-position: center;
  }
  
 
  
  nav {
	display: flex;
	align-items: center;
	justify-content: space-between;
	width: 100%;
	position: relative; 
	z-index: 1000; 
  }
  
  .logo {
	cursor: pointer;
	width: 150px;
  }
  

  nav button {
	border: 0;
	outline: 0;
	background: #db0001;
	color: #fff;
	padding: 10px 20px;
	font-size: 14px;
	border-radius: 4px;
	cursor: pointer;
  }
  
.main{
    padding: 30px 45px;
    margin: auto;

}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #0d120d;
  color: white;
}
input[type=reset] {
  width: 100%;
  background-color: #af4c4c;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset]:hover {
    background-color: #0d120d;
  color: white;
}


</style>
<body>




<div class="header">
    <nav>
        <img src="images/logo1.png" class="logo">
        <div>
            
            <a href="viewproduct"><button>View Product</button></a>
            <a href="admlogin"><button>Log Out</button></a>
        </div>
    </nav>
</div>


<div class="main">
  <form action="prod"  method="post" enctype="multipart/form-data" >
    <label for="fname">Movie Id</label>
    <input type="text"  name="movieid" placeholder="Movie Id..">

    <label for="lname">Movie Name</label>
    <input type="text"  name="moviename" placeholder="Movie name..">

    <label for="country" placeholder="Select film">Genre</label>
    <select id="country" name="genre" placeholder="Select film">
      <option value="holly">Hollywood</option>
      <option value="bolly">Bollywood</option>
      <option value="horor">Horror</option>   
     
    </select>
  
    <label for="lname"></label>
    Select File:<input type="file" name="video" />
    <input type="submit" value="Submit">
    <input type="reset" value="Clear">
  </form>
</div>

</body>
</html>





