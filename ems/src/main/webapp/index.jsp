<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Table</title>
<style type="text/css">
body{
	background-image: url("https://cdn.pixabay.com/photo/2017/10/25/16/54/african-lion-2888519_1280.jpg");
}
.container h1{
	text-align: center;
	border-radius: 20px;
	padding: 10px;
	text-shadow: 1px 1px 5px black;
	color: white;
}
.main a{
	text-decoration: none;
	margin: auto;
	padding: 10px;
	display: flex;
}
a button {
	text-align : center;
	display: block;
	border: none;
	border-radius: 10px;
	padding: 10px;
	cursor: pointer;
	color: black;
	box-shadow: 1px 1px 2px black;
	background-color: white;
}
a button:hover {
	color: white;
	box-shadow: 1px 1px 2px white;
	background-color: black;
}
.container .title{
	border-radius:10px;
	width: 50%;
	margin: auto;
	display: flex;
	background-color: orange;
} 
.container .title .main {
	align-items: center;
	margin: auto;
	padding: 10px;
}
#msg{
	color: red;
	text-align: center;
}
</style>

</head>
<body>
	<div class="container">
		<div class="main"><h1>Employee Details...</h1></div>
		<div class="title">
			<div class="main"><a href="reg.jsp"><button>Click Here to Register</button></a></div>
			<div class="main"><a href="allemp"><button>Click Here to View</button> </a></div>
		</div>
	</div>
	<script type="text/javascript">
		let rs = document.getElementById("msg");
		setTimeout(() => {
			rs.style.cssText ="display:none";
		}, 2000);
	</script>
</body>
</html>