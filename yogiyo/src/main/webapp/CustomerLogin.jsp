<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{margin:0px; padding:0px;}
nav{background-color:#f90050; height:90px;
	display:flex;
	flex-direction:row;
	flex-wrap:nowrap;
	justify-content:flex-end;
	align-items:center;}
nav button{border-radius:2px; border-style:solid;border-width:0.5px; 
	font-size:larger;color:white;
	padding:10px;
	margin:20px;
	flex-basis:10%;
	}
#minilogo{margin-right: auto; height: 50%;padding:20px;}
#logbutton{background-color:#f90050; border-color:white;}
#cartbutton{background-color:#ff8a00; border-color:#ff8a00;}
.container{
		text-align:center;
 		vertical-align:middle;
		display:flex; 
		flex-direction:row;
		justify-content:center;
		align-items: center;}
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
#ico-cancel{margin:0px;background-image: url('icon-X.png');background-size:50%;}
#btn-search{margin:0px;color:white; border-top-right-radius: 10px;border-bottom-right-radius: 10px;background-color:#ff8a00;}

#categorylist{margin:0px;padding:0px;width:1300px;min-width:600px;flex-wrap:wrap;background-color:skyblue}
#categorylist div{margin:5px; border:lightgray 0.5px solid; flex-basis:260px;height: 250px}
</style>
<script type="text/javascript"></script>
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
		<input type="text" name="address">
		<span>
		<button id="ico-cancel" type="button">&nbsp;</button>
		<button id="btn-search" type="button">검색</button></span>
		</div>
	</div>
</div>
</header>
<main class="container">
<div class="container" id="categorylist">
<div>오늘의 할인</div>
<div>전체보기</div>
<div>1인분 주문</div>
<div>프랜차이즈</div>
<div>치킨</div>
<div>피자/양식</div>
<div>중국집</div>
<div>일식/돈까스</div>
<div>족발/보쌈</div>
<div>야식</div>
<div>카페/디저트</div>
<div>편의점</div>
</div>
</main>


</body>
</html>
