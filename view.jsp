  <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parties</title>
        <style>
            .table1{
                border: 1px solid black;
                width:50px;
                background-color: skyblue;
                
            }
            body{
                background-color: skygreen;
            }
              th {
                
                width:150px;
                text-align:center;
                border:1px solid black;
                color: red;
                padding:30px
              
            }
               td {
                
                width:150px;
                text-align:center;
                border:1px solid black;
                color: black;
                padding:30px
              
            }
            h1 {
                color:#F2BB12;
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
    <a href="http://www.telegram.m.@redman03">telegram</a>
    
    
         <table class="table1">
            <tr>
                
                       
                     <td>
                     <% 
                     out.println("<font color='green' size='5' >		Name");
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println("<font color='green' size='5' >		Father Name");
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println("<font color='green' size='5' >		Email");
                     %>
                     </td>                     
                     
                     <td>
                     <% 
                     out.println("<font color='green' size='5' >		Phone Number");
                     %>
                     
                     
                     </td>
 
                      <td>
                     <% 
                     out.println("<font color='green' size='5' >		Gender");
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println("<font color='green' size='5' >		Nationality");
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println("<font color='green' size='5' >		Region");
                     %>
                     </td>                     
                     
                     <td>
                     <% 
                     out.println("<font color='green' size='5' >		Zone");
                     %>
                     
                     
                     </td>      
                     
                 		 <td>
                     <% 
                     out.println("<font color='green' size='5' >		Werada");
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println("<font color='green' size='5' >		Kebele");
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println("<font color='red' size='5' >		SSID");
                     %>
                     </td>                     
             
                      </tr>          
             
             
             
             
             
             
             
                  <%
                try {
        			Class.forName("com.mysql.cj.jdbc.Driver");
        			String url="jdbc:mysql://localhost:3306/electiondb";
        		    String user="root";
        		    String mypass="redman11";
        		    Connection con = DriverManager.getConnection(url,user,mypass);

        	        Statement ps=con.createStatement();
        	        ResultSet rset=ps.executeQuery("SELECT * FROM registrations");
        	        out.println("<div align='center'><font color='skygreen' size='10' >Customer Information    </div>"+"<br>");
        	        out.print("<body style='background-color: azure'>");

        	        while(rset.next()){
        	        	
        	        	
        	        	
                      %>
                     

                      
                      
                      <tr>
                     <td>
                     <% 
                     out.println(rset.getString(1));
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println(rset.getString(2));
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println(rset.getString(3));
                     %>
                     </td>                     
                     
                     <td>
                     <% 
                     out.println(rset.getString(4));
                     %>
                     
                     </td>                      
                    <td>
                     <% 
                     out.println(rset.getString(5));
                     %>
                     </td>                      
                      
                    <td>
                     <% 
                     out.println(rset.getString(6));
                     %>
                     </td>                      
                    <td>
                     <% 
                     out.println(rset.getString(7));
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println(rset.getString(8));
                     %>
                     </td>
                     
                     
                     <td>
                     <% 
                     out.println(rset.getString(9));
                     %>
                     </td>
                     
                    <td>
                     <% 
                     out.println(rset.getString(10));
                     %>
                     </td>
                     <td>
                     <% 
                     out.println(rset.getString(11));
                     %>
                     </td>                                         
                                         
                     
                      </tr>
                      
                       
                 <%
                  }
                } catch(Exception ex)  {
                 ex.printStackTrace();
                 }
                 %>
           
           
            </table>
      

       </body>
       <footer>
<div class="foot">
<h2>contact us</h2>

<a class="me" href="tel:+251940930471">Phone</a>
<a class="me" href="mailto:redwanmudasir1@gmail.com">Email</a>
<a class="me" href="https:telegram.me/redman03">Telegram</a>
</div>
</footer>
</html>