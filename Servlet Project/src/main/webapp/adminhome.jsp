<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Admin Home</title>
    <style>
        body {
            background-color: #e49b36bb; 
        }
      
        .div1 {
            border: 2px solid black;
            width: 1520px;
            height: 100px;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
            background-color: rgba(24, 170, 214, 0.782);
        }
        
        a {
            text-decoration: none;
        }
        
        .user {
            background-color: rgb(255, 255, 255);
            width: 90px;
            height: 20px;
            border-radius: 10%;
        }
        
        .add {
            background-color: rgb(255, 255, 255);
            width: 95px;
            height: 20px;
            border-radius: 10%;
        }
        
        .productlist {
            background-color: rgb(255, 255, 255);
            width: 100px;
            height: 20px;
            border-radius: 10%;
        }
        .update {
            background-color: rgb(255, 255, 255);
            width: 115px;
            height: 20px;
            border-radius: 10%;
        }
        
        .delete {
            background-color: rgb(255, 255, 255);
            width: 110px;
            height: 20px;
            border-radius: 10%;
        }

        .orderlist {
            background-color: rgb(255, 255, 255);
            width: 85px;
            height: 20px;
            border-radius: 10%;
        }
        
        .hover {
            cursor: pointer;
            color: rgb(239, 77, 23);
            background-color: brown;
            border-radius: 5%;
        }
        
        p {
            text-align: center; 
        }
        
        .centered {
            text-align: center; 
        }
    </style>
</head>
<body>
<div class="div1">
    <a href="user details.jsp" class="user"><b>User Details</b></a>
    <a href="add product.jsp" class="add"><b>Add Product</b></a>
    <a href="productlist.jsp" class="productlist"><b>Product List</b></a>
    <a href="update product.jsp" class="update"><b>Update Product</b></a>
    <a href="delete product.jsp" class="delete"><b>Delete Product</b></a>
    <a href="order list.jsp" class="orderlist"><b>Order List</b></a>
</div>

<div class="centered">
    <h1>Welcome, Admin!</h1>
    <p>Which task are you going to perform today?</p>
</div>

</body>
</html>
