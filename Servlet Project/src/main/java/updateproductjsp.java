import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
		import java.sql.DriverManager;
		import java.sql.PreparedStatement;
		import java.sql.SQLException;
		import javax.servlet.ServletException;
		import javax.servlet.annotation.WebServlet;
		import javax.servlet.http.HttpServlet;
		import javax.servlet.http.HttpServletRequest;
		import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateproductjsp")
public class updateproductjsp extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		        String productName = request.getParameter("productName");
		        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
		        int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
				PrintWriter pw=response.getWriter();
				
		        String jdbcURL = "jdbc:mysql://localhost:3306/rajesh";
		        String dbUser = "root";
		        String dbPassword = "9092191191";

		        try {
		        	Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rajesh","root","91191");

		            String sql = "UPDATE products SET price=?, quantity=? WHERE name=?";
		            PreparedStatement preparedStatement = con.prepareStatement(sql);
		            preparedStatement.setDouble(1, productPrice);
		            preparedStatement.setInt(2, productQuantity);
		            preparedStatement.setString(3, productName);


		            int rowsUpdated = preparedStatement.executeUpdate();
		            preparedStatement.close();
		            con.close();

		            if (rowsUpdated > 0) {
		            	pw.println("Updated successfully. <a href='productlist.jsp'>Click here to see product page</a>");
						 response.setContentType("text/html");
		            } 
		            else {
		                response.getWriter().println("Failed to update the product.");
		            }
		        } 
		        catch (ClassNotFoundException | SQLException e) {
		            e.printStackTrace();
		            response.getWriter().println("Error: " + e.getMessage());
		        }
		    }

	}
