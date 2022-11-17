<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-19
  Time: 오후 4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
  <title>Title</title>
</head>
<body>
<c:out value="test 테스트"/>
<c:forEach var="k" begin="1" end="10" step="1">
  <c:out value="${k}"/>
</c:forEach>
</body>
</html>
