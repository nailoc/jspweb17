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
		String pw = request.getParameter("regpw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		String zipcode = request.getParameter("zipcode");
		String address = request.getParameter("address");
		String address2 = request.getParameter("address2");
		String phn = request.getParameter("phn");
		out.println("확인:"+address);
		
		//넘어온 정보 확인
		MemberVo memvo = new MemberVo();
		memvo.setId(id);
		memvo.setPwd(pw);
		memvo.setName(name);
		memvo.setEmail(email);
		
		memvo.setZip_num(zipcode);
		memvo.setAddress(address);
		memvo.setAddress2(address2);
		memvo.setPhone(phn);
		
		MemberDao memdao = MemberDao.getInstance();
		int result = memdao.regMember(memvo);
		
		if(result==1) {
			response.sendRedirect("login_reg.jsp");
		}else{
			response.sendRedirect("login_reg.jsp");
		}
	%>
</body>
<script></script>
</html>