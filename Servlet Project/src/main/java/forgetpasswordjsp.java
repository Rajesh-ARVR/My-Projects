

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


@WebServlet("/forgetpasswordjsp")
public class forgetpasswordjsp extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Email=request.getParameter("n1");
		String NewPassword=request.getParameter("n2");
		String ConfirmPassword=request.getParameter("n3");
		PrintWriter pw=response.getWriter();
		
		  if (!NewPassword.equals(ConfirmPassword))
		  {
	            pw.println("The Password's doesn't match. Password change failed.");
	            return;
	        }
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rajesh","root","91191");
			Statement st=con.createStatement();
			String updateQuery = "UPDATE users SET password = ? WHERE email = ?";
            PreparedStatement preparedStatement = con.prepareStatement(updateQuery);
            preparedStatement.setString(1, NewPassword);
            preparedStatement.setString(2, Email);

            int rowsUpdated = preparedStatement.executeUpdate();
            preparedStatement.close();
            con.close();

            if (rowsUpdated > 0) 
            {
                response.sendRedirect("password changed.jsp");
            }
            	else 
            	{
                pw.println("Password change failed. Email not found.");
            	}
		}
		catch(Exception e)
		{
			pw.println(e);
		}
		
		
	}

}
