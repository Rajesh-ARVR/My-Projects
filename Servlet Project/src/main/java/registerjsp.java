

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/registerjsp")
public class registerjsp extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Username=request.getParameter("n1");
		String Email=request.getParameter("n2");
		String Password=request.getParameter("n3");
		String ConfirmPassword=request.getParameter("n4");
		PrintWriter pw=response.getWriter();
		 if (!Password.equals(ConfirmPassword)) {
	            pw.println("Password and Confirm Password do not match. Registration failed.");
	            return;
	        }
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rajesh","root","91191");
			String insertQuery = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(insertQuery);
            preparedStatement.setString(1, Username);
            preparedStatement.setString(2, Password);
            preparedStatement.setString(3, Email);
			 int rowsInserted = preparedStatement.executeUpdate();
	            preparedStatement.close();
	            con.close();
			if (rowsInserted > 0)
			{
				response.sendRedirect("login redirect.jsp");
		        return;
            } 
			else {
                pw.println("Registration failed");
            }
		}
		catch(Exception e)
		{
			pw.println(e);
		}
		
	}

}
