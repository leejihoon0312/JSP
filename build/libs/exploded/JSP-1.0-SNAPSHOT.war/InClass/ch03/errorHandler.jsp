<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-19
  Time: 오후 3:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<%@ page import="java.io.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
에러처리 페이지<br>
<% exception.printStackTrace(new PrintWriter(out));
exception.getMessage();
    out.flush();
%>
</body>
</html>
