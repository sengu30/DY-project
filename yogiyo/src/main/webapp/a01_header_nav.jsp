<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="vo.*"
    %>
<%request.setCharacterEncoding("utf-8");%>

<nav>
<a style="margin-right: auto" href="CustomerMain.jsp"><img id="minilogo" alt="요기요 메인" src="logo-white.png"></a>
<a><button id="cartbutton">주문표</button></a>
<a href="CustomerLogin2.jsp" onclick="logout()"><button id="logbutton">로그인</button></a></nav>

<script>
var logbutton= document.getElementById('logbutton');
<%
Customer logonUser=(Customer)session.getAttribute("logonUser");
if(logonUser==null){
	%> logbutton.innerText ='로그인'; <%
}else{
%>
	alert('<%=logonUser.getName()%> 님 안녕하세요');
	document.querySelector("[name=address]").value="<%=logonUser.getAddress() %>";
	logbutton.innerText ='로그아웃';
	 
function logout(){
	if(logbutton.innerText=='로그아웃'){
		<% session.removeAttribute("logonUser"); %>
		alert('로그아웃 했습니다')
		}
	 }	 
<%}%>	 
	 
</script>