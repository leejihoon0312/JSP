<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-26
  Time: 오후 4:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="person" class="com.Univ.JSP.InClass.Person"/>
<jsp:setProperty name="person" property="id" value="229292"/>
<jsp:setProperty name="person" property="name" value="홈홈"/>
<p>아이디: <jsp:getProperty name="person" property="id"/></p>
<p>이름: <jsp:getProperty name="person" property="name"/></p>
</body>
</html>
