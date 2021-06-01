<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.hk.jsp.dao.*" %>
<%
	String id = null;
	String name = null;
	if(session.getAttribute("userid")==null) { // 세션이 없다면
		out.println("<script>alert('로그인되지 않았습니다'); location.href='login_reg.jsp'</script>");
	}else{  // 세션이 있다면 회원정보 가져오기
		id = (String)session.getAttribute("userid"); // 로그인 아이디
		MemberDao memdao = MemberDao.getInstance();
		name = memdao.getMemberById(id);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<style>
h3, form {
		width: 400px;
		margin: 0 auto;
	}
	input {
		width: 100%;
		padding: 10px;
		border: 1px solid #cccccc;
		margin-bottom: 5px;
	}
	input#sample6_postcode, input#zipsearch,
	input#regid, input#checkid, input#sample2_postcode {
		width: 40%;
		padding: 10px;
		border: 1px solid #cccccc;
		margin-bottom: 5px;
	}
	
	button {
		padding: 10px;
	}
	label {
		cursor: pointer;
	}
	#register-form {
		display: none;
	}
	#form-switch:checked~#register-form {
		display:block;
	}
	#form-switch:checked~#login-form {
		display:none;
	}
	#form-switch {
		display: none;	
	}
</style>
</head>
<body>
	<br>
	<h3>Mypage</h3>
	<br>
	<form id="mem-form" action="" method="GET">
		<input type="text" name="name" placeholder="이름" value="<%=name%>">
		
		<button type="button" onclick="logout();">로그아웃</button>
	</form>
	
	<script>
		function logout() {
			ok = confirm("로그아웃하시겠습니까?","");
			if(ok==true) {
				location.href='logout.jsp';
			}
		} 
	</script>
</body>
</html>