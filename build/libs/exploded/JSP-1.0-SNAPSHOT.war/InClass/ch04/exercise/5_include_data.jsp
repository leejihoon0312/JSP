<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-01
  Time: 오후 3:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String number=request.getParameter("num");
    int num = Integer.parseInt(number);
    for(int i=1;i<=9;i++)
    {
        out.println(num+"*"+i+"="+num*i+"<br>");
    }
%>
</body>
</html>
