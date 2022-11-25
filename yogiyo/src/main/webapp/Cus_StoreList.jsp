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
<title>전체보기</title>
<link href="headtofeet.css" rel="stylesheet">
<style type="text/css">
#search-show{
		height:100px;
		background:url('background-chicken.png') ;
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

#storelist{
		width:1300px;min-width:600px;
		text-align:center;
 		vertical-align:middle;
		display:flex; 
		flex-direction:row;
		flex-wrap:wrap;
		justify-content:center;
		align-items: center;}
		
#storelist div{
	margin:5px;padding:10px;border:lightgray 0.5px solid;
	flex-basis:500px;height: 100px; text-align: left; 
	}
#storelist h4{margin:0px;padding:0px;}
#storelist li{display:inline-block;padding-right: 10px;font-size: 0.8em}
#navcategory{background-color:white; height:40px;
	display:block;
	align-items:center;
	text-align: center;}
#navcategory li{display:inline-block;padding-right: 10px;font-size: 0.8em}
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
<a style="margin-right: auto" href="CustomerMain.jsp"><img id="minilogo" alt="요기요 메인" src="logo-white.png"></a>
<a><button id="cartbutton">주문표</button></a>
<a href="CustomerLogin.jsp" onclick="logout()"><button id="logbutton">로그인</button></a></nav>
<div id="search-show" class="container">
	<div>
	<form>
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
		<button id="btn-search">검색</button></span>
		</div></form>
	</div>
</div>
<nav id="navcategory"><ul><li>전체보기<li>1인분주문<li>프랜차이즈<li>치킨<li>피자/양식<li>중국집<li>한식<li>일식/돈까스<li>족발/보쌈<li>야식<li>분식<li>카페/디저트<li>편의점/마트</ul></nav>
<hr>
</header>
<main class="container">
<div id="storelist">
<% StoreDao sd= new StoreDao();
String loc=request.getParameter("address");
List<Store> slist=sd.selectonS(loc,""); 
for(Store ss:slist){
	String name=ss.getStorename();
	String avgstar=ss.getAvgstar();
	String minorder=ss.getMinOrder();
	int cntreview=ss.getCntreview();
	int cntcmmnt=ss.getCountcmmnt();
	%>
	<div><h4><%=name %></h4>
	<ul><li><span style="color:gold">★<%=avgstar %></span>
	<li>리뷰 <%=cntreview %>
	<li>사장님 댓글 <%=cntcmmnt %>
	</ul>
	  
	</div>
	<%}%>

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
<script>
var logbutton= document.getElementById('logbutton');
<% CustomerDao cd = new CustomerDao();%>
var logon2name='<%=CustomerDao.Logon2.getName()%>'

if(logon2name==null||logon2name=='null'||logon2name.trim()==""){
		logbutton.innerText ='로그인';
	 }else{
		alert(logon2name+'님 안녕하세요');
		document.querySelector("[name=address]").value="<%=CustomerDao.Logon2.getAddress()%>";
		logbutton.innerText ='로그아웃';
	 }
	 
function logout(){
	if(logbutton.innerText=='로그아웃'){
		<% CustomerDao.Logon2=new Customer(); %>
		alert('로그아웃 했습니다')
		}
	 }	 
</script>
</html>
