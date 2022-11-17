<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-09-17
  Time: 오후 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="http://bootstrapk.com/examples/jumbotron/jumbotron.css" rel="stylesheet">
    <link href="http://bootstrapk.com/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<%!
    String mainTitle = "도서 마켓";
    String subtitle = "Welcome to Book Market";
%>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">

        <div class="navbar-header">
            <a class="navbar-brand" href="#"><%= mainTitle%></a>
        </div>

    </div>
</nav>
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
    <footer>
        <p>&copy; 도서 마켓</p>
    </footer>
</div> <!-- /container -->
</body>
</html>
