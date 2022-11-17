<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
</head>
<script type="text/javascript">
	function check(){
		var form= document.form;
		if(form.id.value=="")
		{
			alert("아이디 입력");
			form.id.select();
			return;
		}
		else if(form.password.value=="")
		{
			alert("비밀번호 입력");
			form.password.select();
			return;
		}
		if((form.password.value).search(form.id.value)>-1)
		{
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			return;
		}
		form.submit();

	}
</script>
<body>
<form action="4_validation01_process.jsp" name="form" method="post">
	<p> 아이디: <input type="text" name="id">
	<p> 비밀번호: <input type="text" name="password">
	<p> <input type="button" value="전송" onclick="check()">
</form>
</body>
</html>