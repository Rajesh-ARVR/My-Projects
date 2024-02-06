

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/loginjsp")
public class loginjsp extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email=request.getParameter("n1");
		String Password=request.getParameter("n2");
		PrintWriter pw=response.getWriter();
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rajesh","root","91191");
		       String query = "SELECT * FROM users WHERE email = ? AND password = ?";
	            PreparedStatement preparedStatement = con.prepareStatement(query);
	            preparedStatement.setString(1, Email);
	            preparedStatement.setString(2, Password);

	            ResultSet resultSet = preparedStatement.executeQuery();

	            if (resultSet.next()) 
	            {
	            	response.sendRedirect("E-Shop.jsp");
	            } 
	            	else {
	            		  pw.println("Login failed. Please check your email and password.");
	            		 }
	            resultSet.close();
	            preparedStatement.close();
	            con.close();
	        }
		
		catch(Exception e)
		{
			pw.println(e);
		}
		
	}

}

