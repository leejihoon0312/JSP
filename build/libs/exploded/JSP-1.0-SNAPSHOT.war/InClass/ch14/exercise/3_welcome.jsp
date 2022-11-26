<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-21
  Time: 오후 3:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] userId = request.getCookies();
    if (userId[0] == null) {
        response.sendRedirect("3_cookie_out.jsp");
        return;
    }
%>

<h3><%=userId[0].getValue() %>님 반갑습니다.</h3>
<a href="3_cookie_out.jsp">로그아웃</a>
</body>
</html>
