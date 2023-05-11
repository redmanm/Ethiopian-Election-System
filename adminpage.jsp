
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <style>
        
        <!-- HTML !-->
<button class="button-73" role="button">Button 73</button>

/* CSS */
.button-73 {
  appearance: none;
  background-color: #FFFFFF;
  border-radius: 40em;
  border-style: none;
  box-shadow: #ADCFFF 0 -12px 6px inset;
  box-sizing: border-box;
  color: #000000;
  cursor: pointer;
  display: inline-block;
  font-family: -apple-system,sans-serif;
  font-size: 1.2rem;
  font-weight: 700;
  letter-spacing: -.24px;
  margin: 0;
  outline: none;
  padding: 1rem 1.3rem;
  quotes: auto;
  text-align: center;
  text-decoration: none;
  transition: all .15s;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
}

.button-73:hover {
  background-color: #FFC229;
  box-shadow: #FF6314 0 -6px 8px inset;
  transform: scale(1.125);
}

.button-73:active {
  transform: scale(1.025);
}

@media (min-width: 768px) {
  .button-73 {
    font-size: 1.5rem;
    padding: .75rem 2rem;
  }
}
        
        
            body{
            	background-image: url("images/ethio_3.png");
            	background-repeat: no-repeat ;
                background-color: azure;
                  
            }
            input{
	background-color: blue;
	color:yellow;
	text-align: center;
	font-size: 50px;
	margin-left: 150px;

}

input:hover{
	background-color: skyblue;
	color: gold;
	text-align: center;
	font-size: 50px;
	margin-left: 150px;
}


            
            h1{
                text-align: center;
                color:greenyellow;
                font-size: 90px;
            } 

           
            }
            
            .log{
                color: red;
              
                margin:1000px 500px;
            }
            </style>
    </head>
    <body>
        <h1>Welcome To Admin Page</h1>
        <button class="button-73" role="button" onClick="location.href='electionresult.jsp'">Election Result</button><br>
        <button class="button-73" role="button" onClick="location.href='view.jsp'">View User</button><br>
        <button class="button-73" role="button" onClick="location.href='login.jsp'">Logout</button><br>

 <%
           response.setHeader("Cache-Control","no-cache");
           response.setHeader("Cache-Control","no-store");
           response.setHeader("Pragma","no-cache");
           response.setHeader("Expires","-1");
      %>
    </body>
    
    
</html>
