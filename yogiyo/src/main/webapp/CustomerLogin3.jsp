<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="dao.*"
    import="vo.*"
    %>
    
<% CustomerDao cd=new CustomerDao();

String id=request.getParameter("userid");
String pw=request.getParameter("pw");

Customer logonUser =cd.selectlogin(id, pw);

if(logonUser!=null){
	session.setAttribute("logonUser", logonUser);
	RequestDispatcher rd = request.getRequestDispatcher("CustomerMain.jsp");
	rd.forward(request,response);
}else{
	request.setAttribute("ison", false);
	RequestDispatcher rd = request.getRequestDispatcher("CustomerLogin2.jsp");
	rd.forward(request,response);
}
	%>
	