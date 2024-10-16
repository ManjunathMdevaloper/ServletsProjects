<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
<style type="text/css">
h1{
	text-align: center;
	background: linear-gradient(green,white);
	color: blue;
	text-shadow: 1px 1px 2px black;
	border-radius: 30px;
	padding: 10px
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
</style>
</head>
<body>
	<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
	%>
	<h1>Update Page</h1>
	<div class="container">
	<form action="update" method="post">
		<div class="input">
		Id  <input type="text" placeholder="Enter Id" name="id" value="<%= rs.getInt(1)%>">
		</div>
		<div class="input">
		Name  <input type="text" placeholder="Enter Full Name" name="name" value="<%= rs.getString(2)%>">
		</div>
		<div class="input">
		Email  <input type="text" placeholder="Enter your email" name="email" value="<%=rs.getString(3) %>">
		</div>
		<div class="input">
		Salary  <input type="text" placeholder="Enter Your Salary" name="salary" value="<%= rs.getDouble(4)%>">
		</div>
		<div class="input">
		DeptNo  <input type="text" placeholder="Enter your DeptNo" name="deptno" value="<%=  rs.getInt(5)%>" >
		</div>
		<div class="input">
		Password  <input type="password" placeholder="Enter your Password" name="password" value="<%= rs.getString(6) %>">
		</div>
		<div class="input">
		<button type="submit">Submit</button>
		</div>
	</form>
	</div>
	
</body>
</html>