<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{margin:0px;padding:0px;}
nav{background-color:#f90050; height:90px; align: center;}
nav button{width:170px;float:right;margin-top:20px;border-radius:2px; border-style:solid;border-width:0.5px; 
			font-size:larger;padding:10px;color:white;}
#logbutton{background-color:#f90050; border-color:white;}
#cartbutton{background-color:#ff8a00; border-color:#ff8a00; margin-right:100px;margin-left:20px;};
#headcover{
	background:url("https://t1.daumcdn.net/cfile/tistory/99C3AD425F29539A37");
	background-size:cover;
	background-position:center;
	height: 250px;}
</style>
<script type="text/javascript"></script>
</head>

<body>
<header>
<nav>
<img class ="minilogo" alt="요기요 메인" src="logo.png">
<button id="cartbutton">주문표</button>
<button id="logbutton">로그인</button></nav>
<div id="headcover">
	<input type="text" name="address">
</div>
</header>
<h1>안녕세상</h1>
</body>
</html>