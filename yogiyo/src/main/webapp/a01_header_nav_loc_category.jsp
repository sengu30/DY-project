<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%request.setCharacterEncoding("utf-8");%>
<%@ include file="a01_header_nav.jsp" %>
<style type="text/css">
#search-show{
		height:100px;
		background:url('img/background-chicken.png') ;
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

#navcategory{background-color:white; height:40px;
	display:block;
	align-items:center;
	text-align: center;}
#navcategory li{display:inline-block;padding-right: 10px;font-size: 0.8em}
</style>

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