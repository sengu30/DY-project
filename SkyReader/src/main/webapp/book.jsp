<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
table td{border:1px lightgray solid}
</style>
<meta charset="UTF-8">
<title>예약하기</title>
</head>
<body class="container-lg">
<h2>예약자 정보</h2>
<table class="table">
<tr>
<td>이름</td><td><input name="bookername"></td><td>이메일</td><td><input name="emailuser"> @ <input name="emailserver"></td>
</tr>
<tr><td>휴대전화</td><td colspan="3"><input name="mobile11"> - <input name="mobile12"> - <input name="mobile13"></td></tr>
</table>

<h2>탑승객 정보</h2>
<div class="row g-3 align-items-center">
  <div class="col-auto"> <label for="korname" class="col-form-label">한글명</label><input id="korname" name="korname" class="form-control" ></div>
  <div class="col-auto"> <label for="engsur" class="col-form-label">영문 성</label><input id="engsur" name="engsur" class="form-control" ></div>
  <div class="col-auto"> <label for="engname" class="col-form-label">영문 이름</label><input id="engname" name="engname" class="form-control" ></div>
  <div class="col-auto"> <label for="yyyymmdd" class="col-form-label">생년월일</label><input id="yyyymmdd" name="yyyymmdd" class="form-control" placeholder="2001/01/01" ></div>
 
</div>
</body>
</html>