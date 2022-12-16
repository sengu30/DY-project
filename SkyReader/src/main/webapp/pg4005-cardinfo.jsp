<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >


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
<tr><td>카드종류</td><td><select class="form-select"><option>삼성카드</option><option>신한카드</option><option>롯데카드</option></select></td>
<td>할부기간</td><td><select class="form-select"><option>일시불</option><option>2개월</option><option>3개월</option></select></td></tr>
<tr><td>카드번호</td><td><input class="form-control"></td><td>유효기간</td>
		<td><div class="input-group"><input class="form-control" type="number" min="22" placeholder="년"><input class="form-control" type="number" max="12" min="1" placeholder="월"></div></td></tr>
<tr><td>소유주이름</td><td><input class="form-control"></td><td>생년월일</td><td><input class="form-control" type="date"></td></tr>
<tr><td>카드비밀번호</td><td><input type="password" placeholder="앞 두자리만 입력하세요" class="form-control" maxlength="2"></td>
<td>성별</td><td>
	<label><input type="radio" name="mf" value="male">남성</label>&nbsp;&nbsp;&nbsp;
	<label><input type="radio" name="mf" value="female">여성</label></td></tr>
</table>

