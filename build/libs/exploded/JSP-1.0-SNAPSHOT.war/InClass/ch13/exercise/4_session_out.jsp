<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-21
  Time: 오후 2:05
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

    response.sendRedirect("4_session.jsp");
%>
</body>
</html>
