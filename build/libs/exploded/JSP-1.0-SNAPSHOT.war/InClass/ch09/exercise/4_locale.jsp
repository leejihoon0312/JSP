<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-10
  Time: 오후 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4>현재 로케일</h4>
<%
    Locale locale = request.getLocale();
%>
<p> 언어 : <%=locale.getDisplayLanguage() %> (<%=locale.getLanguage() %>)
<p> 국가 : <%=locale.getDisplayCountry() %> (<%=locale.getCountry() %>)
</body>
</html>
