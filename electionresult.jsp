<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Election Result:</title>
        <style>
        
        
        input{
	background-color: blue;
	color:yellow;
	text-align: center;
	font-size: 30px;
	margin-left: 0px;

}

input:hover{
	background-color: skyblue;
	color: gold;
	text-align: center;
	font-size: 30px;
	margin-left: 0px;
}
        
        
            p{	
            
            	width:70px;
            	border: 0px solid black;
        		color: blue;
                text-align: center;
                color:green;
				text-align: center;
				font-size: 20px;
				margin-left: 400px;
            }   
            h4{
            
            	width:70px;
            	border: 0px solid black;
        		color: blue;
                text-align: center;
                color:green;
				text-align: center;
				font-size: 20px;
				margin-left: 500px;
            }       
        
        	h1{
        		color: blue;
                text-align: center;
                color:green;
				text-align: center;
				font-size: 20px;
				margin-left: 300px;
        	}
        	
        	h3{
        		color: blue;
				font-size: 20px;
				margin-left: 100px;
        	}
        	
        	
        	h2{
        		color: blue;
                text-align: center;
                color:green;
				text-align: center;
				font-size: 50px;
				margin-left: 600px;}
        	
            th {
				width:150px;
                Color:#00FFF9;
                font-size: 200;
                margin-left: 100px;
                padding:0px;
                }

            td {

                width:150px;
                text-align:center;
                border:0px solid black;
                padding:5px;
                font-size: 40px;

            }
            .pro{

                background-image: url("images/pp_logo.png");
                background-repeat: no-repeat ;
                
                border: 2px solid black;
                background-size: 180px 180px;
                width:100%;
                height:100%;
            }
             .nat{
                 background-image: url("images/amhara_logo.png");
                 background-repeat: no-repeat ;
                border: 2px solid black;
                  background-size: 180px 150px;
                width:100%;
            }
             .eth{
                 background-image: url("images/ezema_logo.png");
                 background-repeat: no-repeat ;
                border: 2px solid black;
                  background-size: 180px 150px;
                width:100%;
            }
             .ged{
                 background-image: url("images/ethio_flag.png");
                 background-repeat: no-repeat ;
                border: 2px solid black;
                  background-size: 180px 150px;
                width:100%;
            }
             .tig{
                 background-image: url("images/ethio_flag.png");
                 background-repeat: no-repeat ;
                  border: 2px solid black;
                  background-size: 180px 150px;
                	width:100%;
            }
            

            body{
                background-color: azure;
            }
            
            
 
            
        </style>
    </head>
    <body>
    
    <table>
    <tr>
    <th><p>Party Name</p></th><th><h4>Voice Number</h4></th>
    </tr>
    
    
    </table>
        
        
        
         <table class="pro">
            <tr>
                <th><h3>Prosperity Part</h3></th>
                   
            <td>
             
                  <%
                try {
                	
                	
                	
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  String url="jdbc:mysql://localhost:3306/electiondb";
                  String name="root";
                  String pass="redman11";
                  Connection con=DriverManager.getConnection(url,name,pass);
                  
                  Statement st= con.createStatement();
                  ResultSet rs= st.executeQuery("select count(*) from votes where partyname='pp'");
                  while(rs.next())
                  {
                      %>
                     
              	<%=rs.getString(1)%>
  
               
                       <%
                  }
                } catch(Exception ex)  {
                 ex.printStackTrace();
                 }
                 %>
                 </td>
                 </tr>
           
                 </table>
                 <table class='nat'>
            <tr>
                <th><h3>National Movement of Amhara</h3> </th>
                   
            	<td>
                  <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String url="jdbc:mysql://localhost:3306/electiondb";
                    String name="root";
                    String pass="redman11";
                    Connection con=DriverManager.getConnection(url,name,pass);
                    
                    Statement st= con.createStatement();
                    ResultSet rs= st.executeQuery("select count(*) from votes where partyname='nma'");
                  while(rs.next())
                  {
                      %>
                   
                <%=rs.getString(1)%>
  
                
                       <%
                  }
                } catch(Exception ex)  {
                 ex.printStackTrace();
                 }
                 %></td>
   					</tr>
              </table>
              
              
                 <table class='eth'>
            <tr>
                <th><h3>	Ethiopian Citizens For Social Justice</h3></th>

             <td>

                  <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String url="jdbc:mysql://localhost:3306/electiondb";
                    String name="root";
                    String pass="redman11";
                    Connection con=DriverManager.getConnection(url,name,pass);
                    
                    Statement st= con.createStatement();
                    ResultSet rs= st.executeQuery("select count(*) from votes where partyname='ecfsj'");
                  while(rs.next())
                  {
                      %>
                     
               <%=rs.getString(1)%>

                
                       <%
                  }
                } catch(Exception ex)  {
                 ex.printStackTrace();
                 }
                 %></td>
					</tr>
                  </table>
                  
                 <table class='ged'>
            <tr>
                <th><h3>Gedeon People's Liberation Front</h3></th>

             <td>

                  <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String url="jdbc:mysql://localhost:3306/electiondb";
                    String name="root";
                    String pass="redman11";
                    Connection con=DriverManager.getConnection(url,name,pass);
                    
                    Statement st= con.createStatement();
                    ResultSet rs= st.executeQuery("select count(*) from votes where partyname='gplf'");
                  while(rs.next())
                  {
                      %>
                     
               <%=rs.getString(1)%>
  
              
                       <%
                  }
                } catch(Exception ex)  {
                 ex.printStackTrace();
                 }
                 %>
                  </td>
					</tr>
                  </table>
                 <table class='tig'>
            <tr>
                <th><h3>Tigray People's Liberation Party</h3></th>

            <td>
             
                  <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    String url="jdbc:mysql://localhost:3306/electiondb";
                    String name="root";
                    String pass="redman11";
                    Connection con=DriverManager.getConnection(url,name,pass);
                    
                    Statement st= con.createStatement();
                    ResultSet rs= st.executeQuery("select count(*) from votes where partyname ='tplp'");
                  while(rs.next())
                  {
                      %>
                      
                <%=rs.getString(1)%>
  
                
                       <%
                  }
                } catch(Exception ex)  {
                 ex.printStackTrace();
                 }
                  
                 %>
                 </td>
                  </tr>
                  
            </table>
            
<input type="button" value="votes" onClick="location.href='votes.jsp'"><br>
        <input type="button" value="AdminPages" onClick="location.href='adminpage.jsp'"><br>
        <input type="button" value="Log Out❌" onClick="location.href='adminlogin.jsp'">

            
    </body>
</html>   