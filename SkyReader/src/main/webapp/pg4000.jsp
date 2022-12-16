<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link href="csss/bootstrap.min.css" rel="stylesheet" >
<link href="csss/style4000.css" rel="stylesheet" >
<title>결제</title>
</head>
<body>
<main class="container">
<h2><b>선택한 항공 스케줄</b></h2>
<%@ include file="pg4001-scheduleDetail.jsp" %>


<div class="row justify-content-between">
<div class="col-4"><h5>총 예상 요금</h5></div><div class="col-4"><h5>1,000,000원</h5></div>
</div>
<div class="row">
<div class="col btn btn-light">가는편</div>
<div class="col btn btn-light">오는편</div>
</div>
<table class="table table-bordered">
<thead>
<tr class="table-secondary"><th>구분</th><th>인원</th><th>선택사항1</th><th>선택사항2</th><th>합계</th></tr>
</thead>
<tr><td>성인</td><td>1명</td><td>비즈니스석</td><td>수하물추가</td><td>600,000</td></tr>
<tr><th class="table-secondary" colspan="2">총 요금(가는 편)</th><td colspan="3">600,000원</td></tr>
</table>

<div class="enter-booking-attend">
	<h6>예약 시 주의사항</h6>
	<ul >
	<li><strong style="color: black">[가는편/오는편 개별 예약]</strong>예약 완료 시 가는편/오는편 예약번호가 개별 생성되며, 각 예약번호의 마이페이지를 통해 결제/변경/취소를 진행해야 합니다. (개 별 예약 규정 적용)</li>
	<li><strong style="color: black">[운항안내]</strong> COVID-19 영향으로 국토교통부 방침에 의해 탑승율 제한, 사전 공지 없이 비운항 또는 스케줄이 변경 될 수 있습니다.</li>
	</ul>
</div>

<%@ include file="pg4004-1.jsp" %>
<h2><b>결제정보</b></h2>
<div class="row">
<div class="col btn btn-light">즉시 결제</div>
<div class="col btn btn-light">예약완료</div>
</div>
<h5><b>총 요금 1,000,000원</b></h5>
마일리지
카드사선택
최종결제금액
<%@ include file="pg4005-cardinfo.jsp" %>
<button>결제 완료하기</button>
</main>
<%@ include file="footer2.html" %>
</body>
</html>