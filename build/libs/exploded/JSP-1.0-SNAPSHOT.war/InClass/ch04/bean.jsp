<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-26
  Time: 오후 2:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="bean" class="com.Univ.JSP.InClass.Calculator"/>
<%
  int m= bean.process(5);
  out.print("5의 3제곱: "+m);

%>

</body>
</html>
