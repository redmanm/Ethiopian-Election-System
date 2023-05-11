<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

input[type="submit"]{
	background-color: green;
	color:yellow;
	text-align: center;
	font-size: 50px;

}

input:hover[type="submit"]{
	background-color: blue;
	color:black;
	text-align: center;
	font-size: 50px;
}
a{	background-color: green;
	color:black;
	text-align: center;
	font-size: 30px;
}

a:hover{background-color: blue;
	color:red;
	text-align: center;
	font-size: 30px;
}

body{
  font-family: Calibri, Helvetica, sans-serif;
  background-color: pink;
}
.container {
    padding: 50px;
  background-color: lightblue;
}

input[type=text], input[type=password], textarea {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: orange;
  outline: none;
}
 div {
            padding: 10px 0;
         }
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.registerbtn:hover {
  opacity: 1;
}

.title{

	margin-left: 400px;
	color:blue;
}

h2{color:green;
}
.me{
	background-color: skyblue;
	color:green;
	text-align: center;
	font-size: 30px;
}

.me:hover{
	background-color: skyblue;
	color:red;
	text-align: center;
	font-size: 30px;
}
footer{
	background-color: black;
}
.foot{
	margin-left: 500px;

}
</style>
</head>
<body>
<form action="ElectionRegister" method="get">
  <div class="container">
 <div class="title">  <h1>Ethiopian Election Registeration Form</h1> </div>
 <hr>
 <label> Firstname: </label> 
<input type="text" name="fname" placeholder= "Firstname" size="15" required /> 

<label> Lastname: </label> <br> 
<input type="text" name="lname" placeholder="Lastname" size="15"required /><br><br>

<label> Email: </label><br>  
<input type="email" name="email" placeholder="Email" size="15"required /><br><br>

<label> Phone :</label><br>
<input type="number" name="phone" placeholder="phone no." size="10" required>
 <br><br>

Nationality:<br><select name="nationality">
	<optgroup label="nationality">
	<option value="Ethiopia">Ethiopia</option>
	</optgroup>
</select><br>

<div>
<label> 
Gender :
</label><br>
<input type="radio" value="Male" name="sex" checked > Male 
<input type="radio" value="Female" name="sex"> Female 
<input type="radio" value="Other" name="sex"> Other

</div>
<div>
<label> 
Region :
</label> 

<select name="region">
	
	
	<optgroup label="region">
	
	
	<option value=" Addis Abeba"> Addis Abeba</option>
	<option value="Oromia"> Oromia</option>
	<option value="Amhara"> Amhara </option>
	<option value="Tigray">Tigray</option>
	<option value="Somali">Somali</option>
	<option value="Afar">Afar</option>
	<option value="Benishangul-Gumuz">Benishangul-Gumuz</option>
	<option value="Harari">Harari</option>
	<option value="SNNPR">SNNPR</option>
	<option value="Gambella">Gambella </option>
	<option value="Harari">Harari </option>

	</optgroup>
</select>
</div>

<label> Zone: </label>  
<input type="text" name="zone" placeholder="Zone" size="15"required />

<label> Distinict: </label>  
<input type="text" name="distnict" placeholder="Werada" size="15"required />

<label> Kebele: </label>  
<input type="text" name="kebele" placeholder="Kebele" size="15"required />

<label> SSID: </label>  
<input type="password" name="id" placeholder="Social security number " size="15"required />

<input type="submit" name="Register" placeholder="Register" size="15"required />
</div>
<br>
</form>
<a href="login.jsp">Back To Login</a>
<a href="adminlogin.jsp">Administration</a>
<hr>

</body>
<footer>
<div class="foot">
<h2>contact us</h2>
<br>
<a class="me" href="tel:+251940930471">Phone</a>
<a class="me" href="mailto:redwanmudasir1@gmail.com">Email</a>
<a class="me" href="https:telegram.me/redman03">Telegram</a>
</div>
</footer>

</html>