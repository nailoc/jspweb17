<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.hk.jsp.dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet" href="css/style.css"></link>
<style></style>
</head>
<body>

	<%
		String id = request.getParameter("userid");
		String pw = request.getParameter("userpw");
		//out.println("로그인아이디:"+pwd);
		MemberDao memdao = MemberDao.getInstance();
		int result = memdao.authMemberByIdPw(id, pw);
		//out.println("로그인결과:"+result);
		if(result==0) {
			out.println("<script>alert('아이디가 틀립니다'); history.back();</script>");
		}else if(result==-1) {
			out.println("<script>alert('비밀번호가 틀립니다'); history.back();</script>");
		}else if(result==1) {
			out.println("<script>alert('로그인 성공입니다'); location.href='index.jsp'</script>");
		}
	%>
</body>
<script></script>
</html>