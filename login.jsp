<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>

<!-- HTML !-->
<button class="button-78" role="button">Button 78</button>

/* CSS */
.button-78 {
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
  .button-78 {
    padding: 19px 32px;
  }
}

.button-78:before,
.button-78:after {
  border-radius: 80px;
}

.button-78:before {
  background-image: linear-gradient(92.83deg, #ff7426 0, #f93a13 100%);
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

.button-78:after {
  background-color: initial;
  background-image: linear-gradient(#541a0f 0, #0c0d0d 100%);
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

.button-78:hover:not(:disabled):before {
  background: linear-gradient(92.83deg, rgb(255, 116, 38) 0%, rgb(249, 58, 19) 100%);
}

.button-78:hover:not(:disabled):after {
  bottom: 0;
  left: 0;
  right: 0;
  top: 0;
  transition-timing-function: ease-in;
  opacity: 0;
}

.button-78:active:not(:disabled) {
  color: #ccc;
}

.button-78:active:not(:disabled):before {
  background-image: linear-gradient(0deg, rgba(0, 0, 0, .2), rgba(0, 0, 0, .2)), linear-gradient(92.83deg, #ff7426 0, #f93a13 100%);
}

.button-78:active:not(:disabled):after {
  background-image: linear-gradient(#541a0f 0, #0c0d0d 100%);
  bottom: 4px;
  left: 4px;
  right: 4px;
  top: 4px;
}

.button-78:disabled {
  cursor: default;
  opacity: .24;
}




body{



font-family:"bookman ald style";
background-image:url("images/ethio_3.png");
}

h1{
	color:blue;
	text-align: center;
	font-size: 50px;
	margin-left: 50px;
}
p{
	color:yellow;
	text-align: center;
	font-size: 30px;
	margin-left: 50px;

.reg{
		 background-color: red;
         border: 2px solid;
         padding: 2px 1px;
         margin-left: 200px;
         height: 50px;
         width: 1000px;
}
}
input{
	color:blue;
	text-align: center;
	font-size: 30px;
	margin-left: 50px;

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
<script >
	function showHex(){
		
		var hex =document.querySelector("#color_hex_value"),
		body=document.querySelector("body");
		body.style.color=document.querySelector("#color_picker").value;
	}
	
	
	
</script>


<meta charset="UTF-8">
<title>Election Login Page</title>
</head>
 <body >
 
 

 
 <div class="conatiner">
 choose color of text
 <input id= "color_picker" type="color" onchange="showHex();">
 <span id="color_hex_value" ></span>
 
 
 </div>
 
 
        <div align="center">
            
             
            <h1>Welcome To Ethiopian Election </h1>
            <h1>Login Form</h1>
        
        
        <form action="ElectionLogin" method="post">
            <table>
                <tr >
                    <td><p>Enter Your Name:</p> </td>
                    <td><input type="text" name="fname"></td>
                </tr>
                
                <tr>
                <td><p>Enter Your SSID:</p> </td> 
                <td><input type="password" name="id">
                </td>
                </tr>
                <tr><td><button class="button-78" role="button">Submit</button></td>
                <td><input type="reset">
                </td>
                </tr>
                <tr><td><a href="register.jsp" class="reg" >Registration</a></td> </tr>
                <tr><td><a href="adminlogin.jsp" class="adm">Administration</a></td> </tr>
                
                
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