<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-24
  Time: 오전 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title> 디랙티브 태그 연습</title>
</head>
<body>
<c:forEach var="num" begin="0" end="10" step="1">
    <c:if test="${num%2==0}">
        <c:out value="${num}"/>
    </c:if>
</c:forEach>
</body>
</html>
