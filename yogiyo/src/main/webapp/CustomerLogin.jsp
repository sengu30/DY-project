<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="headtofeet.css" rel="stylesheet">
<style type="text/css">
.loginlogo{height: 50px;margin:20px;}
.loginform{position:relative;width:80%}
.loginform input{border:0.5px lightgray solid;}
.loginform [type=text],[type=password]{height:38px; width:100%}
.loginform [type=checkbox]{	
	height: 24px; width:24px;accent-color:#f90050;}
#autologlabel{display:inline-block;float:left;margin-top: 10px;margin-bottom: 10px;}
#idinquiry{display:inline-block;float:right; margin-top: 10px;margin-bottom: 10px;vertical-align: 5px}
#loginbutton{color:white;font-size:1.1em;background-color:lightgray;border:0.5px lightgray solid;
	height:38px; width:100%;vertical-align: middle;}
.loginsocail{color:gray;background-color:white;border:0.5px lightgray solid;height:38px; width:47%;}

#adimg{width:80%}


</style>
</head>

<body>
<header>
<nav>
<a style="margin-right: auto" href="CustomerMain.jsp"><img id="minilogo" alt="요기요 메인" src="logo-white.png"></a>
<a><button id="cartbutton">주문표</button></a>
<a href="CustomerLogin.jsp"><button id="logbutton">로그인</button></nav></a>
</header>



<main class="container" style="border:4px solid blue">
<div class="loginform" style="border:4px solid green">
<img class="loginlogo" src="logo.png">
<form>
<input type="text" name="userid" placeholder="이메일 주소 입력(필수)">
<input type="password" name="pw" placeholder="비밀번호 입력(필수)">

<label id="autologlabel"><input type="checkbox" name="autologin"><span style="vertical-align: 5px">자동 로그인</span></label>
<span id="idinquiry"><a>아이디 찾기</a> | <a>비밀번호 찾기</a></span>

<button id="loginbutton">로그인</button>
</form>
<button class="loginsocail">네이버로 로그인</button>
<button class="loginsocail">카카오로 로그인</button>
</div>

<img id="adimg" src="https://www.yogiyo.co.kr/mobile/image/signin_banner.png">


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
