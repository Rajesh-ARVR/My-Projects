<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
    <style>
        body {
            background-color: #3498db; 
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.3);
            width: 300px;
            text-align: center;
        }

        .login-container h1 {
            margin-bottom: 20px;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .login-container button {
            width: 70%;
            padding: 10px;
            background-color: #3498db; 
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .login-container button:hover {
            background-color: #2980b9; 
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Admin Login</h1>
        <form action="adminjsp" method="post">
            <input type="text" name="n1" placeholder="Username" required>
            <input type="password" name="n2" placeholder="Password" required>
            <button type="submit">Login</button>
        </form>
    </div>
</body>
</html>
