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



public class ElectionLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ElectionLogin() {
        super();

    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		try {
			
			PrintWriter out=res.getWriter();
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/electiondb";
			String sql="insert into voted values(?,?)";
		    String user="root";
		    String mypass="redman11";
		    Connection con = DriverManager.getConnection(url,user,mypass);
		    String i=req.getParameter("fname"); 
	        String p=req.getParameter("id");
	        PreparedStatement ps=con.prepareStatement("select fname from registrations where fname=? and ssid=?");
	        ps.setString(1,i);
	        ps.setString(2,p);
	        ResultSet rset=ps.executeQuery();
	        
	        if(rset.next()){
	        	
	        	
	        	
	        	PreparedStatement ps1=con.prepareStatement("select fname from voted where fname=? and pass=?");
		        ps1.setString(1,i);
		        ps1.setString(2,p);
		        ResultSet rset1=ps1.executeQuery();
		        
		        PreparedStatement ps0=con.prepareStatement(sql);
		        ps0.setString(1,i);
		        ps0.setString(2,p);
		        ps0.executeUpdate();
		        

		        if(rset1.next()){
		        	
		        	
		        	req.setAttribute("label", i);
		        	RequestDispatcher rd1;
		            rd1 = req.getRequestDispatcher("sorry.jsp");
		            rd1.forward(req, res);
		        	
		        	
		        }

		        else{
		        	RequestDispatcher rd;
		        	rd = req.getRequestDispatcher("voting.jsp");
		        	rd.forward(req, res);}
	        }
	        
	        else{
	            out.println("<font color='red' size='20'>Login fail please try Again... <br>");
	            out.println("<a href=\"login.jsp\">Back To Login</a>");
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

/*use electiondb;
 * create table voted(fname varchar(20),pass varchar(20));
 * 
 * */
