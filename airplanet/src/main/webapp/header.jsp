<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"    
    import="jspexp.vo.*" 
  	import="jspexp.a13_database.*"
   %>
<link href="/bs-custom.css" rel="stylesheet">
<style>
header{
	margin-bottom: 50px;
}
</style>
<header id="header" class="d-flex justify-content-between">
	
		<div style="margin:5px 0 0 0px;"><img src="/b01_img/airplanet_logo.png" width="100%" height="70px"/></div>
		<div style="margin:20px 0 0 45%;">
			<input style="width:120px;height:50px;background:lightblue;border-radius:10px;border:none;font-size:medium;font-weight:700;color:white;margin-right:20px;" type="button" name="signup" value="회원가입" onclick="location.href='1001_signup.html'"/>
			<input style="width:120px;height:50px;background:lightblue;border-radius:10px;border:none;font-size:medium;font-weight:700;color:white;" type="button" name="signin" value="로그인" onclick="location.href='1002_signin.html'"/>
		</div>
</header>