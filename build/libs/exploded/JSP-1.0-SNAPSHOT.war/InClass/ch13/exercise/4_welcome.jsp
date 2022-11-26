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
    String userId = (String)session.getAttribute("userID");
    if (userId == null || userId.trim().equals("")) {
        response.sendRedirect("4_session_out.jsp");
        return;
    }
%>

<h3><%=userId %>님 반갑습니다.</h3>
<a href="4_session_out.jsp">로그아웃</a>
</body>
</html>
