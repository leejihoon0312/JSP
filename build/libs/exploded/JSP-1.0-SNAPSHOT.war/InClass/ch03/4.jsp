<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-24
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.lang.Math" %>
<html>
<head>
    <title>디랙티브 태그 연습</title>
</head>
<body>
<% Date day=new java.util.Date();%>
현재 날짜:<%=day %><br>
5의 제곱:<%=Math.pow(5,2) %>
</body>
</html>

