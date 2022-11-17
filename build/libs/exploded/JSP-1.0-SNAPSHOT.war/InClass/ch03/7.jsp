<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-24
  Time: 오전 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>디랙티브 태그 연습</title>
    <link href="http://bootstrapk.com/examples/jumbotron/jumbotron.css" rel="stylesheet">
    <link href="http://bootstrapk.com/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<%!
    String mainTitle = "도서 마켓";
    String subtitle = "Welcome to Book Market";
%>
<body>
<%@include file="7_menu.jsp" %>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3"><%= mainTitle%></h1>
    </div>
</div>
<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4, text-center">
            <h2><%= subtitle%></h2>
        </div>
    </div>
    <hr>
    <%@include file="7_footer.jsp" %>
</div>
</body>
</html>
