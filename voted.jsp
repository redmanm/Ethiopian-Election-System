<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>voted</title>
        <style>
            body {
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
            
    
        <h1>Thank You🧡...</h1>
        <h1>You Have Voted Successfully🧡...</h1>
        <form id="form" method="Post" action="Result">
            
            <input type="button" value="Log Out❌" onClick="location.href='login.jsp'">
        </form>
<%
           response.setHeader("Cache-Control","no-cache");
           response.setHeader("Cache-Control","no-store");
           response.setHeader("Pragma","no-cache");
           response.setHeader("Expires","-1");
      %>

    </body>
</html>