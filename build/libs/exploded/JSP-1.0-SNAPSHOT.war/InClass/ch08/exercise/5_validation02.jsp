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
		var regExp = /(\w)\1\1/;

		if(password!=passwordCheck)
		{
			alert("비밀번호 다시 확인");
			return false;
		}
		if(regExp.test(password))
		{
			alert("동일한 영문,숫자는 3자 이상 연속 입력 불가능");
			form.password.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
<form action="5_validation02_process.jsp" name="form">
	<p> 아이디 : <input type="text" name="id">
	<p> 비밀번호 : <input type="text" name="password">
	<p> 비밀번호 확인 : <input type="text" name="passwordCheck">
	<input type="button" value="전송" onclick="check()">
</form>

</body>
</html>