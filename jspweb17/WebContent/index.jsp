<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.hk.jsp.dao.*" %>
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
		out.println("<h3>jspweb17 회원가입인증 및 회원정보 수정</h3>");
		MemberDao memdao = MemberDao.getInstance();
		memdao.testDB();
		// 회원가입 - 아이디 중복체크
		// kevin 사용할수있나?
		String id = "kevin";
		int result = memdao.checkMemberById(id);
		if(result==0) {
			out.println("아이디 사용가능");
		}else{
			out.println("아이디 사용불가");
		}
	%>
</body>
<script></script>
</html>