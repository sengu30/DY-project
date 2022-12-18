<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<style>
	.smallinfo{font-size: 80%;color:gray;}
</style>
<link href="bs-custom.css" rel="stylesheet" >
<meta charset="UTF-8">
<title>결제</title>
</head>
<body>
<%@ include file="header.html" %>
<hr>
<main class="container">
<h2>선택한 항공 스케줄</h2>
<%@ include file="4001_scheduleDetail.jsp" %>
<div class="row">
<div class="col" ><button type="button" class="btn btn-primary" style="width: 100%">가는편</button></div>
<div class="col" ><button type="button" class="btn btn-secondary" style="width: 100%">오는편</button></div></div>
<table class="table table-bordered">
<thead>
<tr class="table-secondary"><th>구분</th><th>인원</th><th>선택사항1</th><th>선택사항2</th><th>합계</th></tr>
</thead>
<tr><td>성인</td><td>1명</td><td>비즈니스석</td><td>수하물추가</td><td>600,000</td></tr>
<tr><th class="table-secondary" colspan="2">총 요금(가는 편)</th><td colspan="3">600,000원</td></tr>
</table>
<div class="row justify-content-between">
<div class="col-4"><h5>총 예상 요금</h5></div><div class="col-4"><h5>1,000,000원</h5></div>
</div>
<br>
<ul class="smallinfo"><strong>예약 시 주의사항</strong>
<li><strong>[가는편/오는편 개별 예약]</strong>예약 완료 시 가는편/오는편 예약번호가 개별 생성되며, 각 예약번호의 마이페이지를 통해 결제/변경/취소를 진행해야 합니다. (개 별 예약 규정 적용)</li>
<li><strong>[운항안내]</strong> COVID-19 영향으로 국토교통부 방침에 의해 탑승율 제한, 사전 공지 없이 비운항 또는 스케줄이 변경 될 수 있습니다.</li>
</ul>
<br><br>
<form class="needs-validation" novalidate>
<%@ include file="4004_1_passengerInfo.jsp" %>
<h2>결제정보</h2>
<div class="row">
<div class="col" ><button type="button" class="btn btn-primary" style="width: 100%">즉시 결제</button></div>
<div class="col" ><button type="button" class="btn btn-secondary" style="width: 100%">예약완료</button></div></div>
<br>
<div class="input-group row">
<h5 class="col-sm-3">마일리지 사용하기</h5>
<div class="col-sm-3"> <input type="number" class="form-control"></div><div class="col-md-3"><span class="input-group-text">/ 1,780,000</span></div></div>
<span class="smallinfo">마일리지는 10,000 이상부터 사용 가능합니다</span>
<br><br>
<h5>카드사 할인 선택</h5>
<div class="row">
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="" checked >선택없음</label><div class="col-sm-3">&nbsp;</div>
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="삼성카드" >삼성카드결제조건</label><div class="col-sm-3">100원</div>
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="신한카드" >신한카드결제조건</label><div class="col-sm-3">2,200원</div>
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="롯데카드" >롯데카드결제조건</label><div class="col-sm-3">3,400원</div>
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="현대카드" >현대카드결제조건</label><div class="col-sm-3">40,500원</div>
</div>
<br><br>

<div class="rounded-2 bg-info row">
<div class="col text-center">총 요금 1,000,000원</div>
<div class="col"><div class="row"><div class="col">카드할인  -</div><div class="col">20,000</div></div>
				<div class="row"><div class="col">마일리지 -</div><div class="col ">548,110</div></div>
</div>
<div class="col text-center fs-5">최종결제금액<h2 class="text-primary">800,000</h2>원</div>
</div>


<label><input type="checkbox" onchange="bringcardinfo(this)">카드정보 불러오기</label>
<%@ include file="4005_cardinfo.jsp" %>

<label class="fs-5"><input type="checkbox">항공권 규정 확인 및 약관 전체 동의</label>
<ul type="none" class="border">
<li><label><input class ="form-check-input" type="checkbox" required>[필수] 항공사 요금규정(변경, 환불, 수하물 등)</label>
<li><label><input class ="form-check-input" type="checkbox" required>[필수] 에어플래닛 이용규정(예약, 결제, 여권/비자, 취급수수료 등)</label>
<li><label><input class ="form-check-input" type="checkbox" required>[필수] 개인정보 수집 및 이용</label>
</ul>

<div class="row"><button type="submit" id="finalsubmit" class="btn btn-primary btn-lg">결제 완료하기</button></div>
</form>
<br>
<br>
<br>
</main>
<%@ include file="0000_footer.html" %>
</body>
<script type="text/javascript">
/* 1. 모두입력*/
(() => {
	  'use strict'
	  const forms = document.querySelectorAll('.needs-validation')
	  Array.from(forms).forEach(form => {
	    form.addEventListener('submit', event => {
	      if (!form.checkValidity()) {
	        event.preventDefault()
	        event.stopPropagation()
	      }
	      form.classList.add('was-validated')
	    }, false)
	  })
	})()
	
/*2. 카드할인 고르면  같은값으로 카드 select 바꾸고 disabled 속성*/
 var discountcard = document.querySelectorAll('[name=discountcard]')
 var cardcorporate= document.querySelector('[name=cardcorporate]')
 var cardcorporateopts = document.querySelectorAll('[name=cardcorporate] option')
 
 discountcard.forEach(function(thiscard){
	 thiscard.addEventListener('change',function(){
			if(thiscard.value!=""){
				cardcorporateopts.forEach(function(pc){
					if(pc.value==thiscard.value){
						pc.selected=true;
						cardcorporate.disabled=true;
					}
				})
			}else{
				cardcorporate.disabled=false;
			}		
		})
 })


/* 카드정보입력칸에서 카드회사 골랐을때 할인선택도 바뀌게 */
cardcorporate.addEventListener('change',function(){
	discountcard.forEach(function(thiscard){
		if(thiscard.value==cardcorporate.value){
			thiscard.checked=true;
			cardcorporate.disabled=true;
		}else{
			discountcard[0].checked=true;
		}
	})
})


/*6. 카드정보불러오기:JSP할때 여기로 정보 불러오면 될듯 */
var cardjson={
		"cardownertype": "법인",
		"cardownernation":"내국인",
		"cardcorporate":"삼성카드",
		"cardinstallment":"12",
		"cardnumber":"4444222211115666",
		"cardYY":"26",
		"cardMM":"11",
		"cardownername":"김박박",
		"cardbirthday":"2000-02-10",
		"cardpassword":"23",
		"cardmf":"f"}
			
function bringcardinfo(self){
	var inputs=document.querySelectorAll('#cardinfo input')
	if(self.checked==true){
	//불러오기 눌렀을때
		if(cardjson['cardownertype']=="개인"){
			inputs[0].checked=true;
		}else{
			inputs[1].checked=true;
		}
		if(cardjson['cardownernation']=="내국인"){
			inputs[2].checked=true;
		}else{
			inputs[3].checked=true;
		}
		inputs[4].value=cardjson['cardnumber']
		inputs[5].value=cardjson['cardYY']
		inputs[6].value=cardjson['cardMM']
		inputs[7].value=cardjson['cardownername']
		inputs[8].value=cardjson['cardbirthday']
		inputs[9].value=cardjson['cardpassword']

		if(cardjson['cardmf']=="m"){
			inputs[10].checked=true;
		}else{
			inputs[11].checked=true;
		}

		//select옵션인 요소 카드회사
	cardcorporateopts.forEach(function(coropt){
		if(coropt.value==cardjson['cardcorporate']){
			coropt.selected = true;
		//카드사할인
			discountcard.forEach(function(dscard){
				if(dscard.value==coropt.value){
					dscard.checked=true;
					cardcorporate.disabled=true;
				}})	
		}})

		//select옵션인 요소 할부	
 var cardinstallmentopts = document.querySelectorAll('[name=cardinstallment] option')
 	cardinstallmentopts.forEach(function(insopt){
		if(insopt.value==cardjson['cardinstallment']){
			insopt.selected = true;
			document.querySelector('[name=cardinstallment]').disabled=true;
			}
		})
//못바꾸게
		inputs.forEach(function(thisinput){
		thisinput.disabled=true;
		})
		discountcard.forEach(function(thisinput){
		thisinput.disabled=true;
		})
		
	}else{
//체크해제하면 disabled 해제
		inputs.forEach(function(thisinput){
		thisinput.disabled=false;
		})
		discountcard.forEach(function(thisinput){
		thisinput.disabled=false;
		})
		cardcorporate.disabled=false;
		document.querySelector('[name=cardinstallment]').disabled=false;

	}
}
/*3. 마일리지랑 카드 할인 금액 변경*/
/*4. 가는편, 오는편 버튼*/
/*5. 즉시결제일때, 예약완료일때 */
</script>

</html>