<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<!DOCTYPE html>
<html>
<head>
<link href="<%=request.getContextPath()%>/headtofeet.css" rel="stylesheet">
	<meta charset="UTF-8">
	<title>404에러발생</title>
</head>
<body>
<header>
<%@ include file="../a01_header_nav.jsp" %>
</header>
<h1>404에러</h1>
<%=request.getContextPath()%>
<footer class="footermenu">
<%@ include file="../a01_footer.jsp" %>
</footer>
</body>
</html>