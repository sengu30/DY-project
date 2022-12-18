<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<table class="table table-bordered">
<tr><td>카드구분</td>
<td>
<label><input type="radio" name="ownertype" value="개인">개인</label>&nbsp;&nbsp;&nbsp;
<label><input type="radio" name="ownertype" value="법인">법인</label>
</td>
<td>국적</td>
<td>
<label><input type="radio" name="ownertype" value="내국인">내국인</label>&nbsp;&nbsp;&nbsp;
<label><input type="radio" name="ownertype" value="외국인">외국인</label>
</td>
</tr>
<tr><td>카드종류</td><td><select class="form-select"><option>삼성카드</option><option>신한카드</option><option>롯데카드</option><option>롯데카드</option></select></td>
<td>할부기간</td><td><select class="form-select"><option>일시불</option><option>2개월</option><option>3개월</option><option>6개월</option><option>12개월</option></select></td></tr>
<tr><td>카드번호</td><td><input class="form-control"></td><td>유효기간</td>
		<td><div class="input-group"><input class="form-control" type="number" min="22" placeholder="년"><input class="form-control" type="number" max="12" min="1" placeholder="월"></div></td></tr>
<tr><td>소유주이름</td><td><input class="form-control"></td><td>생년월일</td><td><input class="form-control" type="date"></td></tr>
<tr><td>카드비밀번호</td><td><input type="password" placeholder="앞 두자리만 입력하세요" class="form-control" maxlength="2"></td>
<td>성별</td><td>
	<label><input type="radio" name="mf" value="male">남성</label>&nbsp;&nbsp;&nbsp;
	<label><input type="radio" name="mf" value="female">여성</label></td></tr>
</table>
<br>
<ul class="smallinfo">
<li>결제는 탑승객 명의의 카드를 사용해야 하며, 이 외의 카드를 이용하신 경우 항공사에서 요청하는 증빙서류를 제출하셔야 합니다. 증빙서류를 제출하지 않은 경우 발권은 가능하나, 추후 발생되는 문제에 대하여 책임지지 않습니다.
<li>카드 소유주를 기타로 선택하신 경우 내국인-주민등록상 한글이름 기재, 외국인-외국인 등록증에 나온 영문 이름으로 기재 바랍니다. 명의도용방지 서비스 신청 후 실명인증을 차단하신 경우 카드 정보가 정확히 입력되어도 결제가 진행되지 않으니 확인하시기 바랍니다. 카드 결제 시, 결제금액 사용 한도는 사전에 확인 바랍니다.
</ul>