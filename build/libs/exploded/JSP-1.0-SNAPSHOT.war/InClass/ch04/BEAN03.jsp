<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-26
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="person" class="com.Univ.JSP.InClass.Person" scope="request"/>
<p>아이디: <%= person.getId()%></p>
<p>이름: <%= person.getName()%></p>
</body>
</html>
