<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.hk.jsp.dao.*" %>
<%@ page import="com.hk.jsp.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style.css"></link>
<style></style>
</head>
<body>
	<%
		String id = request.getParameter("regid");
		//out.println("등록아이디:"+id);
		//넘어온 정보 확인
		MemberVo memvo = new MemberVo();
		
		MemberDao memdao = MemberDao.getInstance();
		//int result = memdao.regMember();
	%>
</body>
<script></script>
</html>