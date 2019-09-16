<%@page import="bit_login.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("euc-kr");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	String redirectUrl = "Login.jsp?error=Login Fail";
	
	MemberDAO m = MemberDAO.getInstance();
	boolean checkLogin = m.login(id, pw);
	
	if(checkLogin == true) {
		session.setAttribute("signedUser", id);
		redirectUrl = "Main.jsp?id=" + id;
	}
	
	response.sendRedirect(redirectUrl);
%>