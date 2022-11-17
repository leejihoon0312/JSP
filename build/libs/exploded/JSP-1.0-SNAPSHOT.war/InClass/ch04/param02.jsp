<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-26
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>이파일은 param02</h3>
<jsp:include page="param02_date.jsp" >
    <jsp:param name="date" value="<%= java.util.Calendar.getInstance().getTime() %>"/>
    <jsp:param name="title" value='<%= java.net.URLEncoder.encode("오늘의 날짜와 시각")%>'/>
</jsp:include>
<h3>제어권 반환</h3>
</body>
</html>
