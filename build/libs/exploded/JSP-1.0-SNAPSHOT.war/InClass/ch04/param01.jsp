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
<h3>이파일은 param01</h3>
<jsp:forward page="param01_date.jsp">
    <jsp:param name="id" value="admin"/>
    <jsp:param name="name1" value='<%= java.net.URLEncoder.encode("관리자")%>'/>
    <jsp:param name="name2" value="관리자"/>
</jsp:forward>
</body>
</html>
