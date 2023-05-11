<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
<!-- HTML !-->
<button class="button" role="button">Submit</button>

/* CSS */
.button {
  align-items: center;
  appearance: none;
  background-clip: padding-box;
  background-color: initial;
  background-image: none;
  border-style: none;
  box-sizing: border-box;
  color: #fff;
  cursor: pointer;
  display: inline-block;
  flex-direction: row;
  flex-shrink: 0;
  font-family: Eina01,sans-serif;
  font-size: 16px;
  font-weight: 800;
  justify-content: center;
  line-height: 24px;
  margin: 0;
  min-height: 64px;
  outline: none;
  overflow: visible;
  padding: 19px 26px;
  pointer-events: auto;
  position: relative;
  text-align: center;
  text-decoration: none;
  text-transform: none;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  vertical-align: middle;
  width: auto;
  word-break: keep-all;
  z-index: 0;
}

@media (min-width: 768px) {
  .button {
    padding: 19px 32px;
  }
}

.button:before,
.button:after {
  border-radius: 80px;
}

.button:before {
  background-color: rgba(249, 58, 19, .32);
  content: "";
  display: block;
  height: 100%;
  left: 0;
  overflow: hidden;
  position: absolute;
  top: 0;
  width: 100%;
  z-index: -2;
}

.button:after {
  background-color: initial;
  background-image: linear-gradient(92.83deg, #ff7426 0, #f93a13 100%);
  bottom: 4px;
  content: "";
  display: block;
  left: 4px;
  overflow: hidden;
  position: absolute;
  right: 4px;
  top: 4px;
  transition: all 100ms ease-out;
  z-index: -1;
}

.button:hover:not(:disabled):after {
  bottom: 0;
  left: 0;
  right: 0;
  top: 0;
  transition-timing-function: ease-in;
}

.button:active:not(:disabled) {
  color: #ccc;
}

.button:active:not(:disabled):after {
  background-image: linear-gradient(0deg, rgba(0, 0, 0, .2), rgba(0, 0, 0, .2)), linear-gradient(92.83deg, #ff7426 0, #f93a13 100%);
  bottom: 4px;
  left: 4px;
  right: 4px;
  top: 4px;
}

.button:disabled {
  cursor: default;
  opacity: .24;
}

body{
font-family:"bookman ald style";
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

h1{

}
</style>
<script >
	function showHex(){
		
		var hex =document.querySelector("#color_hex_value"),
		body=document.querySelector("body");
		body.style.color=document.querySelector("#color_picker").value;
	}
	
	
	
</script>


<meta charset="UTF-8">
<title>Election Admin Login Page</title>
</head>
 <body >
 
 <div class="conatiner">
 choose color of text
 <input id= "color_picker" type="color" onchange="showHex();">
 <span id="color_hex_value" ></span>
 
 
 </div>
 
 
        <div align="center">
            
             
            <h1>Welcome To Ethiopian Election </h1>
            <h1>Admin Login Form</h1>
        
        
        <form action="AdminLogin" method="post">
            <table>
                <tr >
                    <td>Enter Your Name: </td>
                    <td><input type="text" name="fname"></td>
                </tr>
                
                <tr>
                <td>Enter Your Password: </td> 
                <td><input type="password" name="pass1">
                </td>
                </tr>
                <tr>
                    <td><button class="button" role="button">Submit</button>
</td> 
                <td><input type="reset">
                </td>
                </tr>
                <tr><td><a href="register.jsp">Registration</a></td> </tr>
                <tr><td><a href="login.jsp">Login As Customer</a></td> </tr>
                
                
            </table>    
        </form>
     </div>
<%
           response.setHeader("Cache-Control","no-cache");
           response.setHeader("Cache-Control","no-store");
           response.setHeader("Pragma","no-cache");
           response.setHeader("Expires","-1");
      %>
    </body>
</html>