<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 할인</title>
<link href="headtofeet.css" rel="stylesheet">
<style type="text/css">
.colcontainer{
		text-align:center;
 		vertical-align:middle;
		display:flex; 
		flex-direction:column;
		flex-wrap:wrap;
		justify-content:center;
		align-items: center;
		}
.caution{
	text-align: left;
	width:80%;
	font-size:0.8em;
	}
</style>
</head>

<body>
<header>
<%@ include file="a01_header_nav.jsp" %>
</header>



<main class="colcontainer">
<img src="/img/event_nov.png">
<a href="CustomerMain.jsp"><img src="/img/주문하러가기.png"></a>
<img src="/img/로그인시에만할인이적용됩니다.png">
<img src="/img/할인방법.png">
<a href="CustomerMain.jsp"><img src="/img/주문하러가기.png"></a>
<img src="/img/로그인시에만할인이적용됩니다.png">
<div class="caution">
<b style="color:red">유의사항</b><br>
– 로그인 시에만 할인이 적용됩니다.<br>
– 할인적용은 “요기서1초결제” 또는 “요기서결제” 시에만 적용되며, 일부 가맹점에서는 할인이 적용되지 않습니다.<br>
– 한달 내내 할인음식점과 요일별 할인이 겹치는 요일은 요일별 할인 금액이 적용됩니다.<br>
– 할인금액 정상 적용되었는지 반드시 확인 후 주문해주세요.<br>
– 본 이벤트는 당사 사정에 따라 사전 고지 없이 변경 또는 종료될 수 있습니다.<br><hr>
</div>
</main>

<footer class="footermenu">
<%@ include file="a01_footer.jsp" %>
</footer>
</body>
</html>
