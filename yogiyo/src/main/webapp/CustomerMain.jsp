<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
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
		background:url('background-chicken.jpg') ;
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
#categorylist div{margin:5px; border:lightgray 0.5px solid; flex-basis:277px;height: 250px;text-align: left;position: relative;}
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
<nav>
<img id="minilogo" alt="요기요 메인" src="logo-white.png">
<button id="cartbutton">주문표</button>
<button id="logbutton">로그인</button></nav>
<div id="search-show" class="container">
	<div><span style="font-size:2.5em">"어디로 <span style="color:gold">배달</span>해 드릴까요?"</span><br>배달받으실 동 이름으로 검색해주세요<br>
		<div class="inputgroup">
		<button id="ico-loc" type="button">&nbsp;</button>
		<input type="text" name="address" onfocus="showX()" onblur="hiddenX()">
		<span>
		<button id="ico-cancel" type="button">&nbsp;</button>
		<button id="btn-search" type="button">검색</button></span>
		</div>
	</div>
</div>
</header>
<main class="container">
<div class="container" id="categorylist">
<div><img src="/img/오늘의할인.png" alt="오늘의 할인"></div>
<div><span>전체보기</span><img src="/img/category-01.png"></div>
<div><span>1인분 주문</span><img src="/img/category-onedish.png"></div>
<div><span>프랜차이즈</span><img src="/img/category-10.png"></div>
<div><span>치킨</span><img src="/img/category-02.png"></div>
<div><span>피자/양식</span><img src="/img/category-03.png"></div>
<div><span>중국집</span><img src="/img/category-04.png"></div>
<div><span>일식/돈까스</span><img src="/img/category-06.png"></div>
<div><span>족발/보쌈</span><img src="/img/category-07.png"></div>
<div><span>야식</span><img src="/img/category-08.png"></div>
<div><span>분식</span><img src="/img/category-09.png"></div>
<div><span>카페/디저트</span><img src="/img/category-11.png"></div>
<div><span>편의점</span><img src="/img/category-convenience-store.png"></div>
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
	<img src="/img/footerlogo.png">
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
