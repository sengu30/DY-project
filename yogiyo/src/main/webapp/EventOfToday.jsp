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
<nav>
<a style="margin-right: auto" href="CustomerMain.jsp"><img id="minilogo" alt="요기요 메인" src="logo-white.png"></a>
<a><button id="cartbutton">주문표</button></a>
<a href="CustomerLogin.jsp"><button id="logbutton">로그인</button></a></nav>
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
<hr>
<ul>
<li>이용약관
<li>개인정보처리방침
<li>포인트정책
<li>회사소개
<li>요기요사장님
<li>입점문의
<li>공지사항
<li>SNS
</ul>
<hr>
<div class="footerinfo">
	<a href="CustomerMain.jsp">	<img src="/img/footerlogo.png"></a>
	<p>
	<b style="color:black;text-align:left">주식회사 위대한상상</b><br>
	서울시 서초구 서초대로38길 12 마제스타시티 타워2 17층 | 대표이사 : 서성원 | 사업자등록번호:211-88-68802 사업자정보확인통신판매업신고:제 2018-서울서초-2635호 | 개인정보담당자 : privacy@yogiyo.co.kr | 제휴문의 : partnership@yogiyo.co.kr | 고객만족센터 : support@yogiyo.co.kr | 호스팅 제공자: 카페24 주식회사
	</p>
	</div>
<div style="margin:30px">
<span style="color:gray;font-size: 2em;font-weight: bolder">고객만족센터 1661-5270(유료)</span><span style="color:gray;font-size:1.5em">24시간, 연중무휴</span>
<p>주식회사 위대한상상은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품/ 거래정보 및 거래와 관련하여 요기요에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해에 대해 주식회사 위대한상상은 책임을 지지 않습니다. 상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다. Copyright YOGIYO. All Rights Reserved.</p>
</div>
</footer>
</body>
</html>
