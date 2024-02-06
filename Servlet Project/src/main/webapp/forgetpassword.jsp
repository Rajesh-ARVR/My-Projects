<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Forgot Password</title>
    <style>
        body {
            background-color: #ff6666;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .forgot-password-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

        .forgot-password-header {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .forgot-password-form {
            display: flex;
            flex-direction: column;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input {
            padding: 10px;
            width: 90%;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="forgot-password-container">
        <div class="forgot-password-header">Forgot Password</div>
        <form class="forgot-password-form" action="forgetpasswordjsp" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="n1" placeholder="Enter Registered Email">
            </div>
            <div class="form-group">
                <label for="password">New Password:</label>
                <input type="password" id="password" name="n2" placeholder="Enter your New Password">
            </div>
            <div class="form-group">
                <label for="password">Confirm Password:</label>
                <input type="password" id="password" name="n3" placeholder="Confirm your New Password">
            </div>
            <div class="form-group">
                <button type="submit">Reset Password</button>
            </div>
        </form>
    </div>
</body>
</html>
 