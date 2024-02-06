<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Details</title>
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

        .order-container {
            max-width: 600px;
            width: 100%;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
            padding: 20px;
            margin-top: 20px;
        }

        .order-container h2 {
            color: #333;
        }

        .order-container p {
            color: #666;
            margin: 10px 0;
        }

        .order-container img {
            max-width: 100%;
            height: auto;
            margin-top: 10px;
        }

        .place-order-button {
            background-color: #e74c3c;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 20px;
            width: 100%;
            text-align: center;
        }

        .place-order-button:hover {
            background-color: #c0392b;
        }

        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        input[type="number"]:focus {
            outline: none;
            border-color: #3498db;
        }
    </style>
</head>
<body>
    <h1>Order Confirmation</h1>
    <div class="order-container">
        <h2>Order Details</h2>
        <p>Product Name: <%= request.getParameter("productName") %></p>
        <p>Product Description: <%= request.getParameter("productDescription") %></p>
        <p>Price: $<%= request.getParameter("productPrice") %></p>
        <img src="<%= request.getParameter("productImage") %>" alt="<%= request.getParameter("productName") %>" width="100%">
        
        <form action="orderjsp" method="post">
            <input type="hidden" name="username" value="John Doe">
            <input type="hidden" name="productName" value="<%= request.getParameter("productName") %>">
            <input type="hidden" name="productPrice" value="<%= request.getParameter("productPrice") %>">
            <input type="number" name="quantity" placeholder="Quantity" required>
            <input type="hidden" name="productImage" value="<%= request.getParameter("productImage") %>">
            <button type="submit" class="place-order-button">Place Order</button>
        </form>
    </div>
</body>
</html>
