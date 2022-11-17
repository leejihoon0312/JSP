<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function check(){

		var form=document.form;
		var password=form.password.value;
		var passwordCheck=form.passwordCheck.value;
		var regExppassword=/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,}$/;
		if(!regExppassword.test(password))
		{
			alert("영문+숫자+특수기호 8자리 이상 구성 필요");
			return false;
		}
		form.submit();
	}
</script>
<body>
<form action="6_validation03_process.jsp" name="form">
	<p> 아이디 : <input type="text" name="id">
	<p> 비밀번호 : <input type="text" name="password">
	<p> 비밀번호 확인 : <input type="text" name="passwordCheck">
	<input type="button" value="전송" onclick="check()">
</form>
</body>
<html>