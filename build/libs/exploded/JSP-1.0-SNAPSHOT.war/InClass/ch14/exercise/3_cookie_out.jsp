<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-21
  Time: 오후 3:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();

    for (int i = 0; i < cookies.length; i++) {
        cookies[i].setMaxAge(0);
        response.addCookie(cookies[i]);
    }
    response.sendRedirect("3_cookie.jsp");
%>
</body>
</html>
