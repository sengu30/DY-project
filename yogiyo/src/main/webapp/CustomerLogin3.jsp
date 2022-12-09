<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="dao.*"
    import="vo.*"
    %>
    
<% CustomerDao cd=new CustomerDao();

String id=request.getParameter("userid");
String pw=request.getParameter("pw");

boolean ison=cd.selectlogin(id, pw);
request.setAttribute("ison", ison);
if(ison){
	session.setAttribute("logonCustomer", CustomerDao.Logon2);	//스태틱변수를 세션어트리븉 밸류로 저장
	//request.setAttribute("ison", true);
	RequestDispatcher rd = request.getRequestDispatcher("CustomerMain.jsp");
	rd.forward(request,response);
}else{
	//request.setAttribute("ison", false);
	RequestDispatcher rd = request.getRequestDispatcher("CustomerLogin.jsp");
	rd.forward(request,response);
}
	%>
	