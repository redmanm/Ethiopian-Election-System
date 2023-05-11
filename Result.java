package electionpackage;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Result() {
        super();
    }

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/html");
		  
        
        try{
       String name=req.getParameter("candidate");
       Class.forName("com.mysql.cj.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/electiondb","root","redman11");
       PreparedStatement p=con.prepareStatement("insert into votes values(?)");
       p.setString(1,name);
       p.executeUpdate();
       res.sendRedirect("voted.jsp");
        }

        catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	}
/*
 * use electiondb;
 * create table votes(partyname varchar(30));
 * 
 */