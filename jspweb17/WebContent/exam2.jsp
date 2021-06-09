<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet" href="css/style.css"></link>
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
	input#zipcode, input#zipsearch {
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
	<h3>심플 회원 로그인 및 회원가입</h3>
	<br>
	
	<input type="checkbox" id="form-switch">
	<form id="login-form" action="loginpro.jsp" method="GET">
		<input type="text" name="userid" id="userid" placeholder="회원아이디">
		<input type="password" name="userpw" id="userpw" placeholder="회원비밀번호">
		<button type="button" onclick="login();">로그인</button>
		<label for="form-switch"><span>회원가입</span></label>
	</form>
	
	<form id="register-form" action="" method="GET">
		<input type="text" placeholder="회원아이디">
		<input type="password" placeholder="회원비밀번호">
		<input type="text" placeholder="이름">
		<input type="email" placeholder="이메일">
		<input type="text" id="zipcode" placeholder="우편번호">
		<input type="button" id="zipsearch" value="검색">
		<input type="text" placeholder="주소">
		<input type="text" placeholder="상세주소">
		<input type="text" placeholder="전화번호">
		<button type="button">회원가입</button>
		<label for="form-switch"><span>가입한 회원? 로그인하세요</span></label>
	</form>
	
</body>
<script>
	function login() {
		id = document.getElementById("userid").value;
		pw = document.getElementById("userpw").value;
		if(id=="") {
			alert("아이디를 입력하시오!");
			return;
		}else if(pw=="") {
			alert("패스워드를 입력하시오!");
			return;
		}else{
			loginfrm = document.getElementById("login-form");
			loginfrm.submit();
		}
	}

</script>
</html>