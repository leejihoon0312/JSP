<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-18
  Time: 오후 7:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>오류 발생</h3>
<table border="1">
    <tr>
        <th>Error:</th>
        <td><%=exception.getClass().getName() %>: <%=exception.getMessage() %></td>
    </tr>
    <tr>
        <th>URI:</th>
        <td><%=request.getRequestURI() %></td>
    </tr>
    <tr>
        <th>Status code:</th>
        <td><%=response.getStatus() %></td>
    </tr>
</table>

</body>
</html>
