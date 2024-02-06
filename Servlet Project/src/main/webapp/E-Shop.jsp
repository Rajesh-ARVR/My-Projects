<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh;
        }

        h1 {
            text-align: center;
            color: #333;
            padding: 20px 0;
            background-color: #3498db;
            color: white;
            width: 100%;
            margin: 0;
        }

        .product-container {
            max-width: 1200px;
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 20px;
        }

        .product {
            width: 48%;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
            padding: 10px;
        }
		 .product img {
            max-width: 100%;
            height: auto;
            margin-top: 10px;
        }
        .product h2 {
            color: #333;
        }
        .product p {
            color: #666;
        }
         .product .buy-button-container {
            display: flex;
            justify-content: center;
        }
         .product .buy-button-container input[type="submit"] {
            background-color: #e74c3c;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 10px;
        }
         .product .buy-button-container input[type="submit"]:hover {
            background-color: #c0392b;
        }
        
       
    </style>
</head>
<body>
    <h1>Welcome to the E-Shop</h1>
    <div class="product-container">
        <%
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajesh", "root", "9092191191");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM products");
            while (rs.next()) {
                String productName = rs.getString(2);
                String productDescription = rs.getString(3);
                double productPrice = rs.getDouble(4);
                String productImage = rs.getString(6);
        %>
        <div class="product">
            <form action="order.jsp" method="post">
                <input type="hidden" name="productName" value="<%=productName%>">
                <input type="hidden" name="productDescription" value="<%=productDescription%>">
                <input type="hidden" name="productPrice" value="<%=productPrice%>">
                <input type="hidden" name="productImage" value="<%=productImage%>">
                <h2><%=productName%></h2>
                <p><%=productDescription%></p>
                <p>Price: $<%=productPrice%></p>
                <img src="<%=productImage%>" alt="<%=productName%>" width="100%">
                <div class="buy-button-container">
                    <input type="submit" value="Buy Now">
                </div>
            </form>
        </div>
        <%
            }
            rs.close();
            st.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("An error occurred while fetching the product list.");
        }
        %>
    </div>
</body>
</html>
