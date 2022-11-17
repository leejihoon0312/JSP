<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-26
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% String title = request.getParameter("title");%>
<%= java.net.URLDecoder.decode(title)%>
<br>
today is <%= request.getParameter("date")%>
</body>
</html>
