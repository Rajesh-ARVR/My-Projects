<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f88e59;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            width: 30%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            display: block;
            width: 70%;
            padding: 10px;
            background-color: #e74c3c;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 70px;
        }

        input[type="submit"]:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>
    <h1>Delete Product</h1>
    <form action="deleteproductjsp" method="post">
    
        <label for="productToDelete">Enter Name to Delete:</label>
        <input type="text" id="productName" name="productName" placeholder="Enter product name" required><br><br>

        <input type="submit" value="Delete Product">
    </form>
</body>
</html>
