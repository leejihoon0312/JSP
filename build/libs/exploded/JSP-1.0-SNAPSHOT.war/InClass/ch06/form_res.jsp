<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-09
  Time: 오후 5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String[] hobbies = request.getParameterValues("hobby");
%>
<%
    if (hobbies != null){
        for (int i=0; i<hobbies.length; i++){
            System.out.println("hobbies length = " + hobbies.length);
            out.print(" "+hobbies[i]);
            System.out.println("i = " + i);
            System.out.println("hobbies = " + hobbies[i]);
        }
    }
%>
</body>
</html>
