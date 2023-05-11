<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>voted</title>
        <style>
        
        
        
        .load{

                border: 100px solid black;
                border-radius: 100%;
                border-top: 100px solid #0bfa17;
                border-left: 100px solid hsl(241, 96%, 51%);
                border-bottom: 100px solid hsl(0, 96%, 51%);
                position: absolute;
                left:800px;
                width: 500px;
                height: 500px;
                animation: rotate 5s linear infinite;
                display: inline-block;
            }
            
            .load1{

                border: 10px solid black;
                border-radius: 100%;
                border-top: 10px solid #0bfa17;
                border-left: 10px solid hsl(241, 96%, 51%);
                border-bottom: 10px solid hsl(0, 96%, 51%);
                position: absolute;
                width: 1000px;
                height: 1000px;
                animation: rotate 0.5s linear infinite;
                display: inline-block;
            }
            @keyframes rotate {
                0%{transform: rotate(0deg);}
                100%{transform: rotate(360deg);}
                }
                
            body {
            	
            	background-image: url("images/trump.webp");
            	background-color:skygreen;
                background-size:1080px 800px;
                background-repeat: no-repeat;

            }
            h1{
                color: blue;
                text-align: center;
                color:green;
				text-align: center;
				font-size: 100px;
				margin-left: 100px;
            }
            h2{
                text-align: center;
				font-size: 150px;
            }
            
            
            
        </style>
    </head>
    <body>
    
            
    	<h1>${label}</h1>
    	<div class="load">loading</div>
    	<div class="load1"></div>
    	
        <h1>Sorry🧡...</h1>
        <h1>You was Voted 🧡...</h1>
        <form id="form" method="Post" action="Result">
            
            <input type="button" value="Log Out❌" onClick="location.href='login.jsp'">
        </form>
    </body>
</html>