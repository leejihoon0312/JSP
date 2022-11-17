<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-10
  Time: 오후 2:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //request.setCharacterEncoding("UTF-8");
    Enumeration<String> parameterNames = request.getParameterNames();
    StringBuffer stringBuffer = new StringBuffer();
    while (parameterNames.hasMoreElements()){
        String nextElement = parameterNames.nextElement();
        String parameter = request.getParameter(nextElement);
        stringBuffer.append(nextElement + ": " + parameter + "<br>");
    }
    //out.print(stringBuffer.toString());

%>
<%= stringBuffer.toString()%>
</body>
</html>
