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

<footer class="footermenu">
<%@ include file="a01_footer.jsp" %>
</footer>


</body>

</html>