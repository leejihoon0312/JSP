<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-17
  Time: 오후 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form name="loginForm" action="j_security_check" method="post">
    <p> 사용자명: <input type="text" name="j_username">
    <p> 비밀번호: <input type="password" name="j_password">
    <p> <input type="submit" value="전송">
</form>
</body>
</html>
