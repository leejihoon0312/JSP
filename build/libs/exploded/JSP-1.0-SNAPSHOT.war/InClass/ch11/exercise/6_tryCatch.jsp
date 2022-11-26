<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-18
  Time: 오후 7:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try {
        int a = 12;
        int b = 0;
        int c = a / b;
        out.println("a / b = " + c);
    } catch (ArithmeticException e) {
        out.println("오류 발생 : " + e.getMessage());
    }

%>
</body>
</html>
