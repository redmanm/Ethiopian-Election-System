package electionpackage;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class ElectionRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ElectionRegister() {
        super();

    }

	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		try {
			
			PrintWriter out=res.getWriter();
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/electiondb";
			String sql="insert into registrations values(?,?,?,?,?,?,?,?,?,?,?)";
		    String user="root";
		    String mypass="redman11";
		    String fn=req.getParameter("fname"); 
	        String ln=req.getParameter("lname");
	        String em=req.getParameter("email");
	        String ph=req.getParameter("phone");
	        String gender=req.getParameter("sex");
	        String nat=req.getParameter("nationality");
	        String reg=req.getParameter("region");
	        String zon=req.getParameter("zone");
	        String dis=req.getParameter("distnict");
	        String keb=req.getParameter("kebele");
	        String ss=req.getParameter("id");
	        boolean c1=fn.isEmpty();
	        boolean c2=ln.isEmpty();
	        boolean c3=em.isEmpty();
	        boolean c4=ph.isEmpty();
	        boolean c5=gender.isEmpty();
	        boolean c6=nat.isEmpty();
	        boolean c7=reg.isEmpty();
	        boolean c8=zon.isEmpty();
	        boolean c9=dis.isEmpty();
	        boolean c10=keb.isEmpty();
	        boolean c11=ss.isEmpty();
	        if((c1)||(c2)||(c3)||(c4)||(c5)||(c6)||(c7)||(c8)||(c9)||(c10)||(c11)) {
		        out.print("<body style='background-color: azure'>");

	        	out.println("<font color='red' size='20'>Please Full Fill The Registration Form<br>");
	            out.println("<a href=\"register.jsp\">Back To Registration Form</a>");
	        }else{
	        
		    	Connection con = DriverManager.getConnection(url,user,mypass);
		    	PreparedStatement ps=con.prepareStatement(sql);
		        ps.setString(1,fn);
		        ps.setString(2,ln);
		        ps.setString(3,em);
		        ps.setString(4,ph);
		        ps.setString(5,gender);
		        ps.setString(6,nat);
		        ps.setString(7,reg);
		        ps.setString(8,zon);
		        ps.setString(9,dis);
		        ps.setString(10,keb);
		        ps.setString(11,ss);
		       
		        ps.executeUpdate();
		        out.print("<font color='yellow' size='30'>Registration Success Full... <br>");
		        
		        out.print("<body style='background-color: rgb(85, 166, 170)'>");
		        out.print("<font color='skyblue' size='10' > Make sure your form is correct ?...<br>");
		        
		        out.print("<font color='green' size='10' >Your Name:"+fn+"<br>");
		        out.print("<font color='blue' size='10' >Your Father Name:"+ln+"<br>");
		        out.print("<font color='black' size='10' >Your Email:"+em+"<br>");
		        out.print("<font color='red' size='10' >Your Phone Number:"+ph+"<br>");
		        out.print("<font color='green' size='10' >Your Gender:"+gender+"<br>");
		        out.print("<font color='blue' size='10' >Your Nationality:"+nat+"<br>");
		        out.print("<font color='black' size='10' >Your Region:"+reg+"<br>");
		        out.print("<font color='red' size='10' >Your Zone:"+zon+"<br>");
		        out.print("<font color='green' size='10' >Your Distnict:"+dis+"<br>");
		        out.print("<font color='blue' size='10' >Your Kebele:"+keb+"<br>");
		        out.print("<font color='black' size='10' >Your SSID:"+ss+"<br>");
		        
		        
		        out.println("<a href=\"login.jsp\">Back To Login</a>");}
	        
	        
	        			
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

/*create database electiondb
 * use electionbd
 * create table registrations(
 * fname varchar(20),
 * lname varchar(20),
 * email varchar(20),
 * phone varchar(20),
 * gender varchar(20),
 * nation varchar(20),
 * region varchar(20),
 * zone varchar(20),
 * distnict varchar(20),
 * kebele varchar(20),
 * ssid varchar(20),)
 * 
 * 
 * 
 * 
 * */
