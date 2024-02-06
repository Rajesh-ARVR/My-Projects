<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Login Page</title>
 <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(45deg, #2980B9, #6DD5FA);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .login-container {
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
            width: 300px;
        }

        .login-container h2 {
            margin-bottom: 20px;
            color: #333;
            text-align: center;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group input {
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        .input-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .login-button {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .login-button:hover {
            background-color: #0056b3;
        }

        .signup-link {
            color: #007BFF;
            text-decoration: none;
        }
        .forget-password {
            color: #007BFF;
         margin-left: 80px;
        }
        
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="loginjsp" method="post">
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="n1" placeholder="Enter your registered Email" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="n2" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="login-button">Login</button>
        </form>
        <p>Don't have an account? <a href="register.jsp" class="signup-link">Sign up</a></p>
        <div>
            <a href="forgetpassword.jsp" class="forget-password">Forget password</a>
        </div>
    </div>
</body>
</html>
 