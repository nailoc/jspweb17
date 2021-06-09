<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jspweb13</title>
<link rel="stylesheet" href="css/style.css"></link>
<style></style>
</head>
<body>
	<h3>아이디중복체크</h3>
	<p><input type="text" id="id" name="id" value="">
	 <input type="button" value="중복체크" onclick="popup();">
	</p>
</body>
<script>
	function popup() {
		
		userid = document.getElementById("id").value;
		
		if(userid) {
			url = "checkid.jsp?id="+userid;
			window.open(url, "중복체크", "width=300,height=200");
		}else{
			alert("아이디를 입력하시오")
		}
		
	}

</script>
</html>