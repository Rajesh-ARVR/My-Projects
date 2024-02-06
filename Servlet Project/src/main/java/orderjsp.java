import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/orderjsp")
public class orderjsp extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String productName = request.getParameter("productName");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        double totalPrice = productPrice * quantity;

        String jdbcURL = "jdbc:mysql://localhost:3306/rajesh";
        String dbUser = "root";
        String dbPassword = "91191";

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
            String sql = "INSERT INTO orders (user_name, product_name, product_price, product_quantity, total_price) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, productName);
            preparedStatement.setDouble(3, productPrice);
            preparedStatement.setInt(4, quantity);
            preparedStatement.setDouble(5, totalPrice);

            int rowsInserted = preparedStatement.executeUpdate();

            if (rowsInserted > 0) {
                response.sendRedirect("thankyou.jsp");
            } else {
                response.sendRedirect("error.jsp");
            }

            preparedStatement.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
