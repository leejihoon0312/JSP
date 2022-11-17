<%@ page import="java.util.UUID" %><%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-19
  Time: 오후 3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% request.setAttribute("requestAttr"," UUID.randomUUID()");%>
${requestScope.requestAttr}
<%--${request.getAttribute("requestAttr")}--%>
</body>
</html>
