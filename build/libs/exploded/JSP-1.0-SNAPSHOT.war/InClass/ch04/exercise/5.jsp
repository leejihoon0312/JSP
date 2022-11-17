<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-01
  Time: 오후 3:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>5</title>
</head>
<body>
<h4>구구단 출력하기</h4>
<jsp:include page="5_include_data.jsp" flush="false">
    <jsp:param name="num" value="5"/>
</jsp:include>
</body>
</html>
