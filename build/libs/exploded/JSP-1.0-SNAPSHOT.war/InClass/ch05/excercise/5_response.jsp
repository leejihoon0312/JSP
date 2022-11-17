<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-02
  Time: 오후 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p> 현재 시간은 <%=java.util.Calendar.getInstance().getTime()%></p>
<%
    response.setIntHeader("Refresh",5);
%>
<p> <a href="5_response_data.jsp"> Google 홈페이지로 이동하기 </a></p>
</body>
</html>
