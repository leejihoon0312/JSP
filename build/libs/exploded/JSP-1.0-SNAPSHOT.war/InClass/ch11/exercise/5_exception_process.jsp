<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-18
  Time: 오후 7:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="5_exception_error.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");

    if (id.equals("") || password.equals("")){
        throw new ServletException();
    }
    else {
        out.println("id : " + id + " password : " + password);
    }
%>

</body>
</html>
