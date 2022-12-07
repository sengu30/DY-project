<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isErrorPage="true"
    %>
<!DOCTYPE html>
<html>
<head>
<link href="<%=request.getContextPath()%>/headtofeet.css" rel="stylesheet">
	<meta charset="UTF-8">
	<title>500에러발생</title>
</head>
<body>
<header>
<%@ include file="../a01_header_nav.jsp" %>
</header>
<h1>500에러</h1>
<%
if(exception!=null){%>

<h2><%=exception.getMessage() %></h2>
<h2><%=exception.getClass().getName() %></h2>
<%}
%>

<footer class="footermenu">
<%@ include file="../a01_footer.jsp" %>
</footer>
</body>
</html>