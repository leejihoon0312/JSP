<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-10
  Time: 오후 2:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>선택한 과일</h3>
<%
    String[] fruits = request.getParameterValues("fruit");
    if (fruits != null){
        for (String fruit : fruits) {
            out.print(fruit+" ");
        }
    }
%>
</body>
</html>
