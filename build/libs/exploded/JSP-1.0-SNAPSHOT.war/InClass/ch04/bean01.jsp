<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-26
  Time: 오후 3:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="date" class="java.util.Date"/>
<%
    out.print("오늘 날짜 및 시각");
%>
<p><%= date%></p>
</body>
</html>
