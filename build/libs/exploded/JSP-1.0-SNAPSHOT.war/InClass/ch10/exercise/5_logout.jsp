<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-17
  Time: 오후 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    session.invalidate();
    response.sendRedirect("4_addBook.jsp");
%>
</body>
</html>
