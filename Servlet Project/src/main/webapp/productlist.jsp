<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            background-color: #fff;
            border-collapse: collapse;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: #fff;
            text-align: center;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <h1>Product List</h1>
    <table>
        <tr>
            <th>No</th>
            <th>Product Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Image</th>
        </tr>
        
    <%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajesh", "root", "9092191191");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from products");
        while (rs.next()) {
    %>
        <tr>
            <td><%= rs.getString(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><%= rs.getString(4) %></td>
            <td><%= rs.getString(5) %></td>
            <td><img src="<%= rs.getString(6) %>" alt="<%= rs.getString(2) %>" width="50"></td>
        </tr>
    <%
        }
        rs.close();
        st.close();
        con.close();
    } catch (Exception e) {
        out.println(e);
    }
    %>
    </table>
</body>
</html>

