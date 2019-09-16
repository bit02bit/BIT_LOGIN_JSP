<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BIT_LOGIN</title>
</head>
<body>
	<form action="LoginProc.jsp" method="post">
	<h1>Login</h1>
		<input type="text" name="id" size="30" placeholder="아이디"
			required="required" /> <br />
		<input type="password" name="pw" size="30" placeholder="비밀번호" 
			required="required" /> <br />
		<input type="submit" value="로그인" />
	</form>
	<%
	if (request.getParameter("error") != null) {
	%>
        <p style="color:red">
        	<%=request.getParameter("error") %>
        </p>
        <%
    }
        %>
</body>
</html>