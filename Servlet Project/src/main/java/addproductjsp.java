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

@WebServlet("/addproductjsp")
public class addproductjsp extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String productName = request.getParameter("n1");
        String productDescription = request.getParameter("n2");
        double productPrice = Double.parseDouble(request.getParameter("n3"));
        int productQuantity = Integer.parseInt(request.getParameter("n4"));
        String productImage=request.getParameter("n5");
		PrintWriter pw=response.getWriter();

        try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rajesh","root","91191");

            String sql = "INSERT INTO products (name, description, price, quantity,image) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, productName);
            preparedStatement.setString(2, productDescription);
            preparedStatement.setDouble(3, productPrice);
            preparedStatement.setInt(4, productQuantity);
            preparedStatement.setString(5, productImage);

            int rowsInserted = preparedStatement.executeUpdate();
            preparedStatement.close();
            con.close();

            if (rowsInserted > 0) {
            	response.sendRedirect("product add success.jsp");
				 return;

            } 
            
            else {
                PrintWriter out = response.getWriter();
                out.println("Failed to add the product.");
            }
        } 
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
}
