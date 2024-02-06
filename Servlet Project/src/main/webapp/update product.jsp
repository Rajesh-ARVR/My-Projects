<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eac34c;
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

        input[type="text"],
        input[type="number"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            display: block;
            width: 60%;
            padding: 10px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: 90px;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h1>Update Product</h1>
    <form action="updateproductjsp" method="post">
    
        <label for="productName">Product Name:</label>
        <input type="text" id="productName" name="productName" required><br><br>
        
        <label for="productPrice">Product Price:</label>
        <input type="number" id="productPrice" name="productPrice" required><br><br>
        
        <label for="productQuantity">Product Quantity:</label>
        <input type="number" id="productQuantity" name="productQuantity" required><br><br>
        
        <input type="submit" value="Update Product">
    </form>
</body>
</html>