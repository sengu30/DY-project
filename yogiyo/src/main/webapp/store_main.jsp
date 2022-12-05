<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요기요 주문상세보기</title>
<link href="headtofeet.css" rel="stylesheet">
<style type="text/css">
	#loc{height:90px; background-image:url("/yogiyo/back.jpeg"); background-repeat: no-repeat;background-size: 100%;
	display:flex; justify-content: center;align-content:center; }
	#loc input{height:30px; margin-top:30px; }
	#loc img{margin-right: 10px; width:30px;height:30px; padding-top:30px;}
	#menu{height:40px;vertical-align: middle;}
	#menu ul{list-style:none;display:flex;justify-content: center;align-content: center;}
	#menu ul li{padding:0px; font-size: 0.8em;}
	#menu a{text-decoration: none; padding-left: 10px;padding-right:10px; padding-top:18px;padding-bottom: 23px;}
	#menu a:link, #menu a:visited{color:rgb(51,51,51);}
	#menu .line{color:rgb(225,225,225);}
	#menu a:hover{background:rgb(51,51,51);color:white;}
	#foodmenu > div span{font-size: 0.5em;}
	#foodmenu > div p{width:33%;text-align: center; border:rgb(225,225,225) solid 1px;padding-top: 16px;padding-bottom: 16px;margin:0;background: white;}
	#foodmenu > div p:hover{background: rgb(230,230,230)}
	#foodimg img{width:160px; height: 200px; padding:4px;}
	
	#main{display:flex; background: rgb(250,250,250);}
	#left{width: 55%; height: 800px; padding-left: 18%; padding-top: 5px; }
	
	#store{background: white; height:180px; display:flex;flex-flow: column;}
	#store>div{border:rgb(225,225,225) 1px solid;}
	
	#menudet{background: rgb(230,230,230)}
	#menudet>div{border:rgb(225,225,225) 1px solid;height:40px; padding-left: 10px;line-height: 40px;text-align: left;}
	#right{width:45%; display: flex; flex-direction: column; padding-top: 5px; padding-left: 5px;}
	#right>div{width:47%; padding-left: 5px;}
	
	#foot{width:100%; height:250px;background:rgb(250,250,250);display: flex; justify-content: center; align-content:center; flex-flow: column;margin-left: auto;margin-right: auto;}
	#foot div{width:60%; padding-left: 23%;}
	#bnav{width:100%; height:50px;background:rgb(250,250,250);vertical-align: middle;}
	#bnav ul{list-style: none; display: flex;justify-content: center; align-content:center; margin-top: 0; padding-top:10px;}
	#bnav ul li{padding-left:4px; padding-right: 4px; font-size: 0.8em;}
	#bnav a{text-decoration: none;}
	#bnav a:link,#bnav a:visited {color:gray;}
</style>
</head>

<body>
<header><%@ include file="a01_header_nav_loc_category.jsp" %></header>

<div id="main">
<div id="left">
	<div id="store">
		<div style="height:30px; line-height: 30px; text-align: left;"><span style="padding-left: 5px;">미스터보쌈족발-신도림점</span></div>
		<div>
			<table style="font-size: 0.7em;height:120px;">
			<col width="30%"><col width="70%">
			<tr><td rowspan="4"><img src="/yogiyo/store.jpeg" height="80px;"></td><td>★★★★☆ 4.8</td></tr>
			<tr><td>27,000원 이상 주문 시 3,000원 할인</td></tr>
			<tr><td>최소주문금액 20,000원</td></tr>
			<tr><td>결제 신용카드,현금,요기서결제</td></tr>
			<tr><td rowspan="2"> </td><td>배달시간 45~55분</td></tr>
			<tr><td>3000원 할인</td></tr>
			</table>
		</div>
		<div style="height:30px; font-size: 0.7em;">
			<table>
			<col width="15%"><col width="85%"><tr>
			<th style="text-align: right;padding-right:5px;">사장님 알림</th><td>☆MBC"불만제로"가 칭찬한 모범업소☆ 저희 매장은 정갈하고 맛 좋은 음식을 파는 매장입니다.</td>
			</tr></table>
		</div>
	</div>
	
	<div id="foodmenu">
		<div style="display: flex;margin-top: 5px;justify-content: center;">
			<p>메뉴 <span>23</span></p><p>클린리뷰 <span>6692</span></p><p>정보</p>
		</div>
		<div id="foodimg" style="display: flex;">
			<a href=""><img src="/yogiyo/food1.jpeg" onclick="window.open('/yogiyo/popup.html', 'width=500', 'height=600', 'location=no', 'status=no', 'scrollbars=yes')"></a>
			<a href=""><img src="/yogiyo/food2.jpeg"></a>
			<a href=""><img src="/yogiyo/food3.jpeg"></a>
			<a href=""><img src="/yogiyo/food4.jpeg"></a>
		</div>
	
	</div>
	<div id="menudet">
		<div>인기메뉴</div>
		<div>미스터2인 (막국수제외)</div>
		<div>미스터3인 (막국수포함)</div>
		<div>미스터4인 (막국수포함)</div>
		<div>족발세트</div>
		<div>추천메뉴</div>
		<div>추가메뉴</div>
		<div>음료</div>
	
	
	
	</div>




</div>



<div id="right">
	<div style="background:rgb(51,51,51);color:white; text-align: left; height:30px;"><span style="padding-left: 5px; vertical-align: middle;">주문표</span></div>
	<div style="color:rgb(51,51,51); background:white; text-align: center; height:130px; line-height: 130px; 
	border-left:rgb(220,220,220,) solid 1px; border-right:rgb(220,220,220,) solid 1px;">주문표에 담긴 메뉴가 없습니다.</div>
	<div style="background:white;color:rgb(51,51,51);text-align: right;height:30px;border:rgb(220,220,220,) solid 1px;"><span style="padding-right:5px;">배달요금 2,000원 별도</span></div>
	<div style="margin-top: 5px; text-align: center;height:50px;line-height: 50px;background: rgb(230,230,230);color:white; ">주문하기</div>
</div>
</div>



<nav id="bnav">
<ul >
<li><a href="">이용약관</a></li>
<li>|</li>
<li><a href="" style="font-weight: 800;">개인정보처리방침</a></li>
<li>|</li>
<li><a href="">포인트정책</a></li>
<li>|</li>
<li><a href="">회사소개</a></li>
<li>|</li>
<li><a href="">요기요사장님</a></li>
<li>|</li>
<li><a href="">입점문의</a></li>
<li>|</li>
<li><a href="">공지사항</a></li>
</ul>
</nav>
<div id="foot">
	<div>
	<p style="font-size: 0.8em; font-weight: bold">주식회사 위대한 상상</p>
	<p style="font-size: 0.7em; color:gray;">서울시 서초구 서초대로38길 12 마제스타시티 타워2 17층 | 대표이사 : 서성원 | 사업자등록번호:211-88-68802 | 통신판매업신고:제 2018-서울서초-2635호 | 개인정보담당자 : privacy@yogiyo.co.kr | 제휴문의 : partnership@yogiyo.co.kr | 고객만족센터 : support@yogiyo.co.kr | 호스팅 제공자: 카페24 주식회사</p>
	</div>
	<div style="font-size: 1.1em; text-align: center; color:gray; padding-top:1%; padding-bottom: 1%;">고객만족센터 1661-5270(유료)</div>
	<div style="font-size: 0.7em; color: lightgray;">주식회사 위대한상상은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 상품/ 거래정보 및 거래와 관련하여 요기요에 등록된 판매자의 고의 또는 과실로 소비자에게 발생하는 손해에 대해 주식회사 위대한상상은 책임을 지지 않습니다. 상품 및 거래에 관하여 보다 정확한 정보는 해당 판매자에게 직접 확인하여 주시기 바랍니다. Copyright YOGIYO. All Rights Reserved.</div>

</div>


</body>

</html>