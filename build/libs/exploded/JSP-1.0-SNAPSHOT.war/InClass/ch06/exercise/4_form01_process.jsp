<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-10
  Time: 오전 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String addr = request.getParameter("addr");
    String email = request.getParameter("email");
    String name = request.getParameter("name");

    StringBuffer stringBuffer = new StringBuffer();
    stringBuffer.append("이름: "+ name+"<br>");
    stringBuffer.append("주소: "+ addr+"<br>");
    stringBuffer.append("이메일: "+ email+"<br>");

    out.print(stringBuffer.toString());
%>
</body>
</html>
