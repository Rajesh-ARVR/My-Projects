<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Details</title>
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
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <h1>User Details</h1>
    <table>
        <tr>
            <th>No</th>
            <th>User Name</th>
            <th>Password</th>
            <th>E-mail</th>
        </tr>
        
    <%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rajesh", "root", "9092191191");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from users");
        while (rs.next()) {
    %>
        <tr>
            <td><%= rs.getString(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><%= rs.getString(4) %></td>
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
