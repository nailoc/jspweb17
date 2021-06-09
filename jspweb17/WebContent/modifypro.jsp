<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.hk.jsp.dao.* " %>
<%@ page import="com.hk.jsp.vo.* " %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%
	String id = null;
	//String name = null;
	MemberVo mymem = new MemberVo();
	if(session.getAttribute("userid")==null) { // 세션이 없다면
		out.println("<script>alert('로그인되지 않았습니다'); location.href='login_reg.jsp'</script>");
	}else{  // 세션이 있다면 회원정보 가져오기
		id = (String)session.getAttribute("userid"); // 로그인 아이디

		String saveDir = "C:\\Users\\Administrator\\git\\jspweb17\\jspweb17\\WebContent\\upload";
		int fileMaxSize = 1024*1024 * 10;
		MultipartRequest multi = new MultipartRequest(
						request,
						saveDir, 
						fileMaxSize,
						"UTF-8",
						new DefaultFileRenamePolicy());
		
		String name = multi.getParameter("name");
		String email = multi.getParameter("email");
		String zipcode = multi.getParameter("zipcode");
		String address = multi.getParameter("address");
		String address2 = multi.getParameter("address2");
		String phn = multi.getParameter("phn");
		String picname = multi.getFilesystemName("pic");
		//out.println("확인:"+picname);
		
		//넘어온 정보 확인
		MemberVo memvo = new MemberVo();
		memvo.setId(id);
		memvo.setName(name);
		memvo.setEmail(email);
		memvo.setZip_num(zipcode);
		memvo.setAddress(address);
		memvo.setAddress2(address2);
		memvo.setPhone(phn);
		memvo.setPic(picname);
		
		MemberDao memdao = MemberDao.getInstance();
		int result = memdao.modifyMember(memvo);
		
		if(result==1) {
			out.println("<script>alert('회원정보수정 성공입니다!');location.href='mypage.jsp';</script>");
		}else{
			out.println("<script>alert('회원정보수정 실패입니다!');location.href='mypage.jsp';</script>");
		}
	} // else end
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet" href="css/style.css"></link>
<style></style>
</head>
<body>
	<h3>회원수정</h3>
</body>
<script></script>
</html>