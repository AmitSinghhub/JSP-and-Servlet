<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<title>Insert title here</title>
<style>
body {
  font-family: Arial;
background: rgb(197,221,204);
background: radial-gradient(circle, rgba(197,221,204,1) 0%, rgba(199,71,7,1) 100%);

    background-size: auto;
}
h3 {
  color: white;
  text-shadow: 1px 1px 2px black, 0 0 25px red, 0 0 5px darkred;
}
h2 {
  color: black;
  text-shadow: 1px 1px 2px white, 0 0 25px red, 0 0 5px darkred;
}
input[type=text],input[type=eamount] {
  width: 25%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

select {
  width: 25%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;  
}


button {

background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(11,11,11,1) 100%);

color: #fff;

border: 1px solid #eee;
padding: 14px 20px;
  margin: 8px 0;
border-radius: 20px;

box-shadow: 5px 5px 5px #eee;
cursor: pointer;
  width: 8%;
text-shadow:none;

}

button:hover {

background: rgb(238,174,202);
background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(236,114,14,1) 100%);

color: #fff;

border: 1px solid #eee;

border-radius: 20px;

box-shadow: 5px 5px 5px #eee;

text-shadow:none;

}





div.container {
    text-align:center; 
  border-radius: 2px;
   background-image: url("trial1.jpg"); 
  background-color: #f2f2f2;
  padding: 20px;
  width:900px;
  margin: 0 auto;
    

}
</style>
</head>

<body>
    
<div class ="container">
<div align="center">

<h3>Mobile Recharge</h3>

  <form action="recharge" method="post">
    <label for="fname"><h2>Enter Mobile No</h2></label>
    <input type="text" id="fname" name="num" placeholder="Enter a 10 digit Mobile no">

    <label for="lname"><h2>Operator</h2></label>
    <select id="operator" name="operator">
    <option value="nothing" selected="selected">Select operator</option>
      <option value="Airtelplan.jsp" >Airtel</option>
      <option value="mtnl.jsp">MTNL</option>
      <option value="jioplan.jsp">Jio</option>
      <option value="bsnl.jsp">BSNL</option>
      <option value="Vodafoneplan.jsp">Vodafone</option>
      <option value="Idea.jsp">Idea</option>
    </select>

    <label for="State"><h2>Enter State</h2></label>
    <select id="State" name="state">
      <option value="Maharashtra">Maharashtra</option>
      <option value="Assam">Assam</option>
      <option value="Delhi NCR">Delhi NCR</option>
      <option value="Haryana">Haryana</option>
      <option value="Bihar">Bihar</option>
      <option value="Koltata">Koltata</option>
    </select>
    

     <label for="eamount"><h2>Enter Amount</h2></label>
    <input type="eamount" id="eamount" name="amt" placeholder="Enter Plan Amount">
 
    <button type="submit"> submit </button>
  </form>
</div>

<script tpe="text/javascript">

var urlMenu = document.getElementById('operator');
urlMenu.onchange = function() {
   var userOption = this.options[this.selectedIndex];
   if(userOption.value !="nothing")
   {
    window.open(userOption.value,"");
   }
}

</script>
</body>
</html>