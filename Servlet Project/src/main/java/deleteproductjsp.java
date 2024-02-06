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

@WebServlet("/deleteproductjsp")
public class deleteproductjsp extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productName = request.getParameter("productName");
        PrintWriter pw=response.getWriter();

        String jdbcURL = "jdbc:mysql://localhost:3306/rajesh";
        String dbUser = "root";
        String dbPassword = "9092191191";

        try {
        	Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rajesh","root","91191");

            String sql = "DELETE FROM products WHERE name=?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, productName);

            int rowsDeleted = preparedStatement.executeUpdate();
            preparedStatement.close();
            con.close();

            if (rowsDeleted > 0) {
            	response.sendRedirect("delete.jsp");
				 return;
            } else {
                response.getWriter().println("Product not found or deletion failed.");
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
