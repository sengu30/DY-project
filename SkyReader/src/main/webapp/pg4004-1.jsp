<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >

<h2><b>예약자 정보</b></h2>
<table class="table table-bordered">
<tr><td>이름</td><td>이메일</td><td>휴대전화</td></tr>
<tr>
<td><input class="form-control"></td>
<td><div class="input-group"><input type="text" class="form-control"><span class="input-group-text">@</span><input type="text" class="form-control"></div></td>
<td><div class="input-group"><input maxlength="3" class="form-control"><span class="input-group-text">-</span><input maxlength="4" class="form-control"><span class="input-group-text">-</span><input maxlength="4" class="form-control"></div></td>
</tr>	
</table>
<ul style="font-size:80%">
<li>예약자 정보는 긴급상황 발생 시 즉시 연락이 가능해야 하며, 연락이 불가능한 경우 발생되는 불이익에 대해 당사는 책임지지 않사오니 이점 유의하시기 바랍니다.
</ul>

<h2><b>탑승객 정보</b></h2>
<div class="row g-3 align-items-center">
  <div class="col-auto"> <label for="korname" class="col-form-label">한글명</label><input id="korname" name="korname" class="form-control" placeholder="예)홍길동" ></div>
  <div class="col-auto"> <label for="engsur" class="col-form-label">영문 성</label><input id="engsur" name="engsur" class="form-control"  placeholder="예)HONG" ></div>
  <div class="col-auto"> <label for="engname" class="col-form-label">영문 이름</label><input id="engname" name="engname" class="form-control" placeholder="예)GILDONG" ></div>
  <div class="col-auto"> <label class="col-form-label">생년월일</label><input class="form-control" type="date"></div>
  <div class="col-auto"> <label for="mf" class="col-form-label">성별</label><div class="form-control" ><label><input type="radio" name="mf" value="male" >남성</label>&nbsp; &nbsp;<label><input type="radio" name="mf" value="female" >여성</label></div></div>
</div> 
<div class="row g-3 align-items-center">
  <div class="col-auto"> <label class="col-form-label">여권번호</label><input id="" name="" class="form-control" ></div>
  <div class="col-auto"> <label class="col-form-label">여권만료일</label><input id="" name="" class="form-control" placeholder="예)20250101" ></div>
  <div class="col-auto"> <label class="col-form-label">국적</label><input id="" name="" class="form-control" value= "한국"></div>
  <div class="col-auto"> <label class="col-form-label">여권발행국</label><input id="" name="" class="form-control" value= "한국" ></div>
</div>  
<ul style="font-size:80%">
<b>탑승객 영문이름, 생년월일, 성별 기재 시 주의사항</b>
<li>탑승자의 영문성명, 생년월일, 성별, 국적은 여권과 동일해야 하며, 예약 후 변경이 불가합니다.
<li>(임의로 등록(FAKE NAME)하는 경우 모든 예약이 취소되거나 수수료가 부과될 수 있습니다.)
<li>입력한 여권 정보가 다르거나 또는 누락, 분실 신고된 여권, 사용된 단수 여권 정보로 입력한 경우 항공편 탑승 및 현지 입국이 거절 될 수 있습니다.
<li>정확한 본인 영문 이름은 정부24(나의 생활정보)에서 확인할 수 있습니다. (간편인증 또는 공동,금융인증서 필요) 조회하기
<li>영문 성이 한 글자인 경우, 예약 전 유선 및 톡집사로 문의 바랍니다. (예시 : 오길동 – O/GILDONG)
</ul>
<ul style="font-size:80%">
<b>소아/유아 탑승 안내</b>
<li>귀국일 기준으로 만 12세 이상인 소아와 만 2세가 넘는 유아는 추가 차액이 발생하며 항공사 규정에따라 발권이 불가할 수 있으니 결제전 문의바랍니다.
<li>혼자 여행하는 만 18세 미만의 미성년자는 추가 요금이 발생할 수 있으므로 결제전 톡집사 로 문의바랍니다 .
<li>혼자 여행하는 16세 미만의 비동반 소아는 추가 요금이 발생할 수 있으므로 톡집사로 문의바랍니다.
<li>만 20세 미만의 탑승객이 유아/소아와 동반할 경우, 예약 후 톡집사로 문의 바랍니다.
</ul>