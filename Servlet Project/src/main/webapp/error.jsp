<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error</title>
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
            background-color: #e74c3c;
            color: white;
            width: 100%;
            margin: 0;
        }

        .error-container {
            max-width: 600px;
            width: 100%;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
            padding: 20px;
            margin-top: 20px;
            display: flex;
            flex-direction: column; /* Center vertically */
            align-items: center; /* Center horizontally */
        }

        .error-container h2 {
            color: #333;
            text-align: center;
        }

        .error-container p {
            color: #666;
            text-align: center;
        }

        .home-button {
            background-color: #e74c3c;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 20px;
        }

        .home-button:hover {
            background-color: #c0392b;
            
        }
    </style>
</head>
<body>
    <h1>Error</h1>
    <div class="error-container">
        <h2>An error occurred</h2>
        <p>Sorry, something went wrong while processing your request.</p>
        <p>Please try again later or contact our support team for assistance.</p>
        <a href="E-Shop.jsp" class="home-button">Return to Home</a>
    </div>
</body>
</html>
