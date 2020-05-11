<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> </title>
<style>
body {font-family: Arial;
  background-size: auto;
}
form {border: 2px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 25%;
  border-radius: 4px;
  padding: 15px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 20%;
  
}

button:hover {
  opacity: 0.8;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  background-image: url("img.PNG");
}

img.contact{
  width: 20%;
  border-radius: 25%;
}

.container {
  padding: 15px 400px 10px;
 background-size: auto;
}
	 
span.psw {
  float: left-side;
  padding-top: 1px;
   display: block;
   
     
}
.logo{
background-color:white;
}

span {
  float: left-side;
  padding-top: 1px;
   display: block;
   with:30px;
   
     
}
</style>
</head>
<body>
<div class="logo">
<img src="Recharge.png">
</div>
  <div class ="container">
<div align="center">

<form action="Val" method="post">
  <div class="imgcontainer">
    <img src="contact.png" alt="contact" class="contact">
  </div>

    <label><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" ><br><br>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pwd" ><br><br>
        
    <button type="submit">Login </button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label><br><br>
    <span class="psw">Forgot <a href="#">password?</a></span>
	<br><br>
	</div>
</form>
</body>
</html>