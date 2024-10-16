<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Here..</title>
<style type="text/css">
h1{
	text-align: center;
	color: white;
	text-shadow: 1px 1px 5px black;
	background-color: pink;
	padding: 10px;
	border-radius: 20px;
	width: 30%;
	margin: auto;	
}
.container{
		border: 1px solid black;
		width:40%;
		text-align: center;
		margin: auto;
		border-radius: 10px;
		box-shadow: inset 1px 1px 3px black;
		padding: 10px;
		background: orange;
		margin-top: 10px;
	}
.container .input{
	width: 40%;
	margin :auto;
	text-align: center;
	
}
.container .input input,button{
	
	width: 20vw;
	margin:5px;
	padding: 7px;
	border-radius: 20px;
	border: none;
	outline: none;
}
.container button{
	cursor: pointer;
	background-color: palegreen;
	color: red;
	width: 10vw;
}
.container button:hover {
	background-color: red;
	color: palegreen;
	width: 10vw;
}
body{
	background-image: url("https://media.istockphoto.com/id/1355689102/photo/parrots.jpg?s=1024x1024&w=is&k=20&c=_qIvsQpN-14WyPa0wTv_I-wtXR_qlJqlh6Sqkx8ryJw=");
}
</style>
</head>
<body>
		<h1>Register Here..!</h1>
		<div class="container">
	<form action="reg" method="post">
		<div class="input">
		Id : <input type="text" placeholder="Enter Id" name="id" required="required">
		</div>
		<div class="input">
		Name : <input type="text" placeholder="Enter Full Name" name="name" required="required">
		</div>
		<div class="input">
		Email : <input type="text" placeholder="Enter your email" name="email" required="required">
		</div>
		<div class="input">
		Salary : <input type="text" placeholder="Enter Your Salary" name="salary" required="required">
		</div>
		<div class="input">
		DeptNo : <input type="text" placeholder="Enter your DeptNo" name="deptno" required="required">
		</div>
		<div class="input">
		Password : <input type="password" placeholder="Enter your Password" name="password" required="required">
		</div>
		<div class="input">
		<button type="submit">Submit</button>
		</div>
	</form>
	</div>
	
</body>
</html>