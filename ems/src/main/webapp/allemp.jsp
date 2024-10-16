<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Employees...</title>
<style type="text/css">
.table{
	margin: auto;
}
 .table thead{
            width: 60%;
            background-color: aqua;
        }
 .table tbody{
 	background-color: palegreen; 
 }
 a .cre {
 	margin-left:50%;
 	padding: 10px 30px;
 	margin-bottom: 10px;
 	cursor: pointer;
 	border-radius: 10px;
 	background-color: orange;
 	border:none;
 }
 a .cre:hover{
 	color: white;
 	background-color: black;
 }
 table tbody td a button{
 	cursor: pointer;
 	padding: 10px 20px;
 	border-radius: 10px;
 	background-color: yellow;
 	border:none;
 }
 table tbody td a button:hover {
	color: black;
 	background-color: white;
}
body{
	background-image: url("https://cdn.pixabay.com/photo/2023/11/28/21/35/ural-owl-8418249_1280.jpg");
}
h1{
	color: white;
	text-shadow: 1px 1px 2px black;
}
#head{
	text-align: center;
}
#msg{
	color: white;
	margin-left: 90%;
}
</style>
</head>
<body>
	<h1 style="text-align:center">All Employees</h1>
	<a href="reg.jsp" id="create"><button class="cre">Create</button></a>
	<table border="1" class="table" rules="all" margin="auto" cellpadding="10">
		<thead>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Salary</th>
			<th>Dept No</th>
			<th>Password</th>
			<th colspan="2">Action</th>
		</thead>
		
		<%
			ResultSet rs = (ResultSet)request.getAttribute("rs");
		while (rs.next()) {
		%>
	<tbody>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getString(6)%></td>
			<td>
				<a href="updatepage?id=<%=rs.getString(1)%>"><button>Update</button></a>
			</td>
			<td>
				<a href="delete?id=<%=rs.getString(1)%>"><button>Delete</button></a>
			</td>
		</tr>
		

	<%
	}
	%>
</tbody>
	</table>
	<script type="text/javascript">
		let rs = document.getElementById("head");
		setTimeout(() => {
			rs.style.cssText ="display:none";
		}, 2000);
	</script>
</body>
</html>