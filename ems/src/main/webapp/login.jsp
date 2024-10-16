<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Employee</title>
<style type="text/css">
	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #f4f4f9;
}

.login-container {
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
}

h2 {
    margin-bottom: 20px;
    color: #333;
}

.input-group {
    margin-bottom: 15px;
    text-align: left;
}

label {
    display: block;
    margin-bottom: 5px;
    color: #666;
}

input[type="email"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 14px;
    color: #333;
}

input[type="email"]:focus,
input[type="password"]:focus {
    outline: none;
    border-color: #007BFF;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #007BFA;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

button:hover {
    background-color: #0056b3;
}

.forgot-password {
    margin-top: 10px;
}

.forgot-password a {
    color: #007BFF;
    text-decoration: none;
}

.forgot-password a:hover {
    text-decoration: underline;
}
#msg{
	color: red;
	
}
</style>
</head>
<body>
	<div class="login-container">
        <h2>Login</h2>
        <form action="login" method="POST">
            <div class="input-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>
            <button type="submit">Login</button>
            <p class="forgot-password"><a href="#">Forgot password?</a></p>
        </form>
    </div>
    
</body>
</html>