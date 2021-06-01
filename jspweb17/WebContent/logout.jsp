<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
</head>
<body>
	<%
		session.invalidate(); // 세션정보를 모두 삭제함
		response.sendRedirect("login_reg.jsp");
	%>
</body>
</html>