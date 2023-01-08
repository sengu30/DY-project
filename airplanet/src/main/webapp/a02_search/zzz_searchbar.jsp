<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"

    %>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="/bs-custom.css" rel="stylesheet" >
<style>
	
	.numbercnt{padding-left:12px;padding-right:12px}
	.loc, .dates {display: flex;flex-direction: row; flex-wrap: no-wrap;}
	.loc div {flex: 1 0 0%; min-width: 10em}
	.dates div {flex: 1 0 0%;}
	.dropdown-menu{padding:5%;}
	#submit{margin-left:66% ;width: 33%;margin-top: 12px;margin-bottom: 12px}
	form{color:white;border-radius: 0.375rem}
</style>
</head>
<body>


<form class="bg-primary container-lg">
<input type="radio" name="way" class="form-check-input">왕복<input type="radio" name="way" class="form-check-input">편도
<div class="row">
<div class="col"><div class="loc">
	<div><label for="depart">출발지</label><input name="depart" id="depart" ></div>
	<div><label for="arrive">도착지</label><input name="arrive" id="arrive" ></div>
	</div></div>
<div class="col"><div class="dates">
	<div><label>가는날</label><input type="date" name="departdate" ></div>
	<div><label>오는날</label><input type="date" name="arrivedate" ></div>
	<div class="dropdown"><label>좌석 등급 및 승객</label><input type="button" value="성인 1명, 일반석" class="dropdown-toggle" id="passenger">
			 <div class="dropdown-menu" >
			 <label>좌석 등급</label><select name="seatClass" class="form-select"><option value="ec">일반석</option><option value="bs">비즈니스석</option><option value="fs">일등석</option></select>
			 <label>인원</label> <div class=" input-group numbercnt row"><button type="button" class="btn btn-secondary col-1">-</button><input type="number" name="cnt" min=1 value="1"><button type="button" class="btn btn-secondary col-1">+</button></div>
			 </div></div>
</div></div>
</div>
<input type="submit" class="form-control" id="submit" value="항공권 검색">
</form>



<script>
let allinput=document.querySelectorAll('.row input')
allinput.forEach(
		function(each){
			each.classList.add('form-control')
		})
		
let alllabel=document.querySelectorAll('label')
alllabel.forEach(
		function(each){
			each.classList.add('form-label')
		})		
		
		
let departdate = document.querySelector('[name=departdate]')
let arrivedate = document.querySelector('[name=arrivedate]')
var dateraw = new Date()
var dategap = new Date().getTimezoneOffset()*60000
var datenow = new Date(dateraw - dategap).toISOString().substring(0, 10);
departdate.min=datenow;
departdate.value=datenow;
departdate.addEventListener('change',function(){
	arrivedate.min=departdate.value;
	let inputDepartdate=new Date(departdate.value);
	let inputArrivedate=new Date(arrivedate.value);
	if(inputDepartdate>inputArrivedate){
		arrivedate.value=departdate.value;
	}
	
})

var dropdowntoggle = document.querySelector('.dropdown-toggle')
dropdowntoggle.addEventListener('click',function(){
	let dropdowntoggle = document.querySelector('.dropdown-menu')
	if(dropdowntoggle.style.display=="block"){
		dropdowntoggle.style.display="none"
	}else{
		dropdowntoggle.style.display="block"
	}
	
})

var numbercntBtn = document.querySelectorAll('.numbercnt button')
numbercntBtn[0].addEventListener('click',function(){
	let cnt = document.querySelector('[name=cnt]')
	if(cnt.value>1){
	cnt.value = cnt.value-1}
})
numbercntBtn[1].addEventListener('click',function(){
	let cnt = document.querySelector('[name=cnt]')
	cnt.value = Number(cnt.value)+1
})
</script>
</body>
</html>