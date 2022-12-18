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
<%@ include file="4004_1_passengerInfo.jsp" %>
<h2>결제정보</h2>
<div class="row">
<div class="col" ><button type="button" class="btn btn-primary" style="width: 100%">즉시 결제</button></div>
<div class="col" ><button type="button" class="btn btn-secondary" style="width: 100%">예약완료</button></div></div>

<h4>요금 할인조건 변경</h4>
<div class="input-group row">
<h5 class="col-md-3">마일리지 사용하기</h5>
<div class="col-md-2"> <input class="form-control"></div><div class="col-md-2"><span class="input-group-text">/ 1,780,000</span></div></div>
<span class="smallinfo">마일리지는 10,000 이상부터 사용 가능합니다</span>
<br><br>
<h5>카드사 할인 선택</h5>
<div class="row">
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="삼성카드" >삼성카드결제조건</label><div class="col-sm-3">100,500원</div>
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="신한카드" >신한카드결제조건</label><div class="col-sm-3">100,500원</div>
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="롯데카드" >롯데카드결제조건</label><div class="col-sm-3">100,500원</div>
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="현대카드" >현대카드결제조건</label><div class="col-sm-3">100,500원</div>
<label class="col-sm-3"><input class="form-check-input" type="radio" name="discountcard" value="" checked >선택없음</label>
</div>
<br><br>

<div class="rounded-2 bg-info row">
<div class="col text-center">총 요금 1,000,000원</div>
<div class="col"><div class="row"><div class="col">카드할인  -</div><div class="col">20,000</div></div>
				<div class="row"><div class="col">마일리지 -</div><div class="col ">548,110</div></div>
</div>
<div class="col text-center fs-5">최종결제금액<h2 class="text-primary">800,000</h2>원</div>
</div>


<label><input type="checkbox" >카드정보 불러오기</label>
<%@ include file="4005_cardinfo.jsp" %>

<label class="fs-5"><input type="checkbox">항공권 규정 확인 및 약관 전체 동의</label>
<ul type="none" class="border">
<li><label><input type="checkbox">[필수] 항공사 요금규정(변경, 환불, 수하물 등)</label>
<li><label><input type="checkbox">[필수] 에어플래닛 이용규정(예약, 결제, 여권/비자, 취급수수료 등)</label>
<li><label><input type="checkbox">[필수] 개인정보 수집 및 이용</label>
</ul>


<div class="row"><button class="btn btn-primary btn-lg">결제 완료하기</button></div>
<br>
<br>
<br>
</main>
<%@ include file="0000_footer.html" %>
</body>
</html>