<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-01
  Time: 오후 3:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>4</title>
</head>
<body>
<h4>구구단 출력하기</h4>

<jsp:forward page="4_forward_data.jsp">
    <jsp:param name="num" value="5"/>
</jsp:forward>

</body>
</html>
