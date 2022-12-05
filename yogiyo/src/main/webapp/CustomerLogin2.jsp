<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="dao.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="headtofeet.css" rel="stylesheet">
<style type="text/css">
.loginlogo{height: 50px;margin:20px;}
.loginform{position:relative;width:80%;}
.loginform input{border:0.5px lightgray solid; }
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
<%@ include file="a01_header_nav.jsp" %>
</header>
<main class="container">
<div class="loginform">
<img class="loginlogo" src="logo.png" alt="요기요로고" title="요기요">
<form action="CustomerLogin3.jsp">
<input type="text" name="userid" placeholder="이메일 주소 입력(필수)" >
<input type="password" name="pw" placeholder="비밀번호 입력(필수)" >

<label id="autologlabel"><input type="checkbox" name="autologin"><span style="vertical-align: 5px">자동 로그인</span></label>
<span id="idinquiry"><a>아이디 찾기</a> | <a>비밀번호 찾기</a></span>

<button type="button" id="loginbutton" onclick="loginsubmit()">로그인</button>
</form>
<button class="loginsocail">네이버로 로그인</button>
<button class="loginsocail">카카오로 로그인</button>
</div>


<img id="adimg" src="https://www.yogiyo.co.kr/mobile/image/signin_banner.png">

</main>
<footer class="footermenu">
<%@ include file="a01_footer.jsp" %>
</footer>
<script>
	var ison=<%=request.getAttribute("ison")%>
	 if(ison==false){
			alert('등록되지 않은 계정입니다. 회원가입 후 이용 부탁드립니다.');
		}

function loginsubmit(){
	let userid=document.querySelector('[name=userid]');
	let pw=document.querySelector('[name=pw]');
	if(userid!=null && userid.trim!=""){
	document.querySelector("form").submit();
	}else{alert('입력값이 잘못됨')}
}
</script>

</body>
</html>
