<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voting Page</title>
        <style>
            h2 {
                color: gold;
                text-align: center;
                font-size: 65px;
            }

            body { 
            	background-image: url("images/trump.webp");
            	background-repeat: no-repeat;           
                background-color: azure ;
                background-size: 500px 1000px;
            }
            
             input[type=submit]{font-size: 20px;
                     background-color: gold;
                     border: 2px solid;
                     padding: 2px 1px;
                     margin-left: 200px;
                     height: 50px;
                     width: 1000px;
                 }
                 input:hover[type=submit]{font-size: 40px;
                     background-color: green;
                     border: 2px solid;
                     padding: 2px 1px;
                     margin-left: 200px;
                     height: 50px;
                     width: 1000px;
                 }
                 
                 
                 input[type=radio]{font-size: 15px;
                     background-color: gold;
                     color: blue;
                     border: 2px green;
                     padding: 2px 2px;
                     margin-left: 50px;
                     height: 40px;
                     width: 1000px;
                 }
                 

                 
                p {  color:green;
                     text-align: center;
                     font-size: 20px;
                     margin-left: 50px;
                 }
              p:hover{color:blue;
                     text-align: center;
                     font-size: 22px;
                     margin-left: 50px;
                 }
                 
                 
                 
                 
                 
             .vertical-center {
  
               text-align: center;
               border: 5px blue;
 
               margin-left: -500px;
 
                      }



    </style>

    </head>
<body>

	 <form id="form" method="Post" action="Result">
		        
		<h2>Give Your voice👨‍👩‍👦‍👦</h2>
		
		<p>Prosperity Part✴👩🏻‍🦱<br><input type="radio" name="candidate"  value="pp"> </p>
		<p>National Movement of Amhara✴👩🏻‍🦱 <input type="radio" name="candidate" value="nma"/></p>
		<p>Ethiopian Citizens For Social Justice ✴👩🏻‍🦱<input type="radio" name="candidate" value="ecfsj"/>  </p>
		<p>Gedeon People's Liberation Front✴👩🏻‍🦱 <input type="radio" name="candidate" value="gplf"/></p>
		<p>Tigray People's Liberation Party ✴👩🏻‍🦱<input type="radio" name="candidate" value="tplp"/> </p>

		<input type="submit" value="Submit" onclick="this.value='Submitting!';this.disabled='disabled'; this.form.submit();" >


	</form>
	
	
	
</body>


</html>