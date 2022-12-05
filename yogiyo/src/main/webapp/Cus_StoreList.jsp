<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="dao.*"
    import="vo.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체보기</title>
<link href="headtofeet.css" rel="stylesheet">
<style type="text/css">
#storelist{
		width:1300px;min-width:600px;
		text-align:center;
 		vertical-align:middle;
		display:flex; 
		flex-direction:row;
		flex-wrap:wrap;
		justify-content:center;
		align-items: center;}
		
#storelist div{
	margin:5px;padding:10px;border:lightgray 0.5px solid;
	flex-basis:500px;height: 100px; text-align: left; 
	}
#storelist h4{margin:0px;padding:0px;}
#storelist li{display:inline-block;padding-right: 10px;font-size: 0.8em}
</style>
<script type="text/javascript">
 function showX(){
	 document.querySelector("#ico-cancel").style.backgroundImage="url('icon-X.png')";
 }
 function hiddenX() {
	 document.querySelector("#ico-cancel").style.backgroundImage="none";
}
</script>
</head>

<body>
<header>
<%@ include file="a01_header_nav_loc_category.jsp" %>

</header>
<main class="container">
<div id="storelist">
<% StoreDao sd= new StoreDao();
String loc=request.getParameter("address");
List<Store> slist=sd.selectonS(loc,""); 
for(Store ss:slist){
	String name=ss.getStorename();
	String avgstar=ss.getAvgstar();
	String minorder=ss.getMinOrder();
	int cntreview=ss.getCntreview();
	int cntcmmnt=ss.getCountcmmnt();
	%>
	<div><h4><%=name %></h4>
	<ul><li><span style="color:gold">★<%=avgstar %></span>
	<li>리뷰 <%=cntreview %>
	<li>사장님 댓글 <%=cntcmmnt %>
	</ul>
	  
	</div>
	<%}%>

</div>
</main>
<footer class="footermenu">
<%@ include file="a01_footer.jsp" %>
</footer>
</body>
<script>
var logbutton= document.getElementById('logbutton');
<% CustomerDao cd = new CustomerDao();%>
var logon2name='<%=CustomerDao.Logon2.getName()%>'

if(logon2name==null||logon2name=='null'||logon2name.trim()==""){
		logbutton.innerText ='로그인';
	 }else{
		alert(logon2name+'님 안녕하세요');
		document.querySelector("[name=address]").value="<%=CustomerDao.Logon2.getAddress()%>";
		logbutton.innerText ='로그아웃';
	 }
	 
function logout(){
	if(logbutton.innerText=='로그아웃'){
		<% CustomerDao.Logon2=new Customer(); %>
		alert('로그아웃 했습니다')
		}
	 }	 
</script>
</html>
