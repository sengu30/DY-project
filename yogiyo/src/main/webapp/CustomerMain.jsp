<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="dao.*"
    import="vo.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기요 메인</title>
<link href="headtofeet.css" rel="stylesheet">
<style type="text/css">
#search-show{
		height:280px;
		background:url('img/background-chicken.png') ;
		background-size:cover;
		background-position:center;
		color:white;
		}
.inputgroup{text-align: center;font-size: 28px; font-size: 0; line-height: 0;}
.inputgroup button{height: 40px; padding:6px 12px 6px 12px; border:0;
				background-color:white;vertical-align: middle;background-repeat: no-repeat;background-position: center;}
.inputgroup input{height: 38px;width: 280px;border-top-left-radius: 10px;border-bottom-left-radius: 10px; border:0;margin:0px;vertical-align: middle;}
#ico-loc{width: 40px;border-radius: 5px; margin-right:10px;background-image: url('icon-loc.png');background-size:60%;}
#ico-cancel{margin:0px;background-size:50%;}
#btn-search{margin:0px;color:white; border-top-right-radius: 10px;border-bottom-right-radius: 10px;background-color:#ff8a00;}

#categorylist{margin:0px;padding:0px;width:1300px;min-width:600px;flex-wrap:wrap;}
#categorylist a{margin:5px;border:lightgray 0.5px solid; flex-basis:277px;height: 250px;text-align: left;position: relative;}
/* #categorylist a div{margin:5px; border:lightgray 0.5px solid; flex-basis:277px;height: 250px;text-align: left;position: relative;}
#categorylist div{margin:5px; border:lightgray 0.5px solid; flex-basis:277px;height: 250px;text-align: left;position: relative;} */
#categorylist div img{position: absolute; right: 0px; bottom:0px; height:100%;}
#categorylist div span{position: absolute; left: 10px; top:10px; height:100%;z-index: 1; font-weight: bold}
</style>
<script type="text/javascript">
 function showX(){
	 document.querySelector("#ico-cancel").style.backgroundImage="url('icon-X.png')";
 }
 function hiddenX() {
	 document.querySelector("#ico-cancel").style.backgroundImage="none";
}
</script>
</head>

<body>
<header>
<%@ include file="a01_header_nav.jsp" %>
<div id="search-show" class="container">
	<div><span style="font-size:2.5em">"어디로 <span style="color:gold">배달</span>해 드릴까요?"</span><br>배달받으실 동 이름으로 검색해주세요<br>
		<div class="inputgroup">
		<button id="ico-loc" type="button">&nbsp;</button>
		<input type="text" name="address" onfocus="showX()" onblur="hiddenX()">
<script>
function resetform() {
	var target=document.querySelector("[name=address]")
	target.value="";
}		
</script>
		<span>
		<button id="ico-cancel" type="button" onclick="resetform()">&nbsp;</button>
		<button id="btn-search" type="button">검색</button></span>
		</div>
	</div>
</div>
</header>
<main class="container">
<div class="container" id="categorylist">
<a href="EventOfToday.jsp"><div><img src="/img/오늘의할인.png" alt="오늘의 할인"></div></a>
<a href="Cus_StoreList.jsp"><div><span>전체보기</span><img src="/img/category-01.png"></div></a>
<a href=""><div><span>1인분 주문</span><img src="/img/category-onedish.png"></div></a>
<a><div><span>프랜차이즈</span><img src="/img/category-10.png"></div></a>
<a><div><span>치킨</span><img src="/img/category-02.png"></div></a>
<a><div><span>피자/양식</span><img src="/img/category-03.png"></div></a>
<a><div><span>중국집</span><img src="/img/category-04.png"></div></a>
<a><div><span>일식/돈까스</span><img src="/img/category-06.png"></div></a>
<a><div><span>족발/보쌈</span><img src="/img/category-07.png"></div></a>
<a><div><span>야식</span><img src="/img/category-08.png"></div></a>
<a><div><span>분식</span><img src="/img/category-09.png"></div></a>
<a><div><span>카페/디저트</span><img src="/img/category-11.png"></div></a>
<a><div><span>편의점</span><img src="/img/category-convenience-store.png"></div></a>
</div>
</main>
<footer class="footermenu">
<%@ include file="a01_footer.jsp" %>
</footer>
</body>
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
</html>
