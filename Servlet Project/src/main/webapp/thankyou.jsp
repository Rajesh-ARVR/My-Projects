<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Thank You</title>
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
        

        .thankyou-container {
            max-width: 600px;
            width: 100%;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
            padding: 20px;
            margin-top: 20px;
        }

        .thankyou-container h2 {
            color: #333;
            text-align: center;
        }

        .thankyou-container p {
            color: #666;
            text-align: center;
        }

        .home-button {
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 20px;
        }

        .home-button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <h1>Thank You for Your Order</h1>
    <div class="thankyou-container">
        <h2>Order Confirmation</h2>
        <p>Your order has been successfully placed.</p>
        <p>Thank you for shopping with us!</p>
        <p>Order details and tracking information will be sent to your email shortly.</p>
    </div>
</body>
</html>
