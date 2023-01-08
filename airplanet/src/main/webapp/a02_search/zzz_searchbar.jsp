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
	.flexrow{
		display: flex;
		flex-direction: row;flex-wrap: wrap;
		justify-content: center;align-items: center;
	}
	.loc, .dates , .numbercnt {  --bs-gutter-x: 1.5rem;
					  --bs-gutter-y: 0;
					  display: flex;
					  flex-wrap: wrap;
					  }

	.numbercnt{padding-left:12px;padding-right:12px}
	.dates input, .loc input , button{ flex: 1 0 0%;}
	.ballon{flex: 1 0 0%; }
	.ballon .dropdown-menu{width:40%;padding:20px;}
</style>
</head>
<body>


<form class="bg-primary">
<div class="flexrow">
<div class="loc">
<input name="depart" >
<input name="arrive" >
</div>
<div class="dates">
<input type="date" name="departdate" >
<input type="date" name="arrivedate" >
<div class="ballon">
	<input type="button" value="승객" class="dropdown-toggle" id="passenger" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	 <div class="dropdown-menu" aria-labelledby="passenger">
	  <label>좌석 등급</label><select name="seatClass" class="form-select"><option value="ec">일반석</option><option value="bs">비즈니스석</option><option value="fs">일등석</option></select>
	 <label>인원</label> <div class=" input-group numbercnt row"><button type="button" class="btn btn-secondary col-1">-</button><input type="number" name="cnt" min=1 value="1"><button type="button" class="btn btn-secondary col-1">+</button></div>
	  </div>
</div>
</div>
<input type="submit" class="col-2">
</div>
</form>



<script>
let allinput=document.querySelectorAll('input')
allinput.forEach(
		function(each){
			each.classList.add('form-control')
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