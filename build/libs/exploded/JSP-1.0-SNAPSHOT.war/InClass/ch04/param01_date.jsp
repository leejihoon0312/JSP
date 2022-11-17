<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-26
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p> 아이디: <%= request.getParameter("id")%></p>
<% String name1 = request.getParameter("name1");%>
<% String name2= request.getParameter("name2");%>
<p>이름1: <%= java.net.URLDecoder.decode(name1)%></p>
<p>이름2: <%= name2%></p>
</body>
</html>
