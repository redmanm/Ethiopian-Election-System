package electionpackage;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminLogin() {
        super();

    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		try {
			
			PrintWriter out=res.getWriter();
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/electiondb";
		    String user="root";
		    String mypass="redman11";
		    Connection con = DriverManager.getConnection(url,user,mypass);
		    String i=req.getParameter("fname"); 
	        String p=req.getParameter("pass1");
	        PreparedStatement ps=con.prepareStatement("select aname from admins where aname=? and pass=?");
	        ps.setString(1,i);
	        ps.setString(2,p);
	        ResultSet rset=ps.executeQuery();
	        
	        if(rset.next()){
	        	RequestDispatcher rd;
	            rd = req.getRequestDispatcher("adminpage.jsp");
	            rd.forward(req, res);
	        }
	        else{
	            out.println("<font color='red' size='20'>Login fail please try Again... <br>");
	            out.println("<a href=\"adminlogin.jsp\">Back To Admin Login</a><br>");
	            out.println("<a href=\"login.jsp\">Back To Voter Login</a>");
	            
	        }
	        			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}

}
/* use electiondb
 * 
 * create table admins(aname varchar(30),pass varchar(30))
 * 
 * 
 * */
