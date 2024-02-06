<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #0ce7ea;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        textarea {
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h1>Add Product</h1>
    <form action="addproductjsp" method="post">
        <label for="productName">Product Name:</label>
        <input type="text" id="productName" name="n1" required>
        
        <label for="productDescription">Product Description:</label>
        <textarea id="productDescription" name="n2" required></textarea>
        
        <label for="productPrice">Product Price:</label>
        <input type="number" id="productPrice" name="n3" required>
        
        <label for="productQuantity">Product Quantity:</label>
        <input type="number" id="productQuantity" name="n4" required>
        
        <label for="productImage">Product Image URL:</label>
        <input type="text" id="productImage" name="n5" required>
        
        <input type="submit" value="Add Product">
    </form>
</body>
</html>
