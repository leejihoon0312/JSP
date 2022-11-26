<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-21
  Time: 오후 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>

    <title>주문 취소</title>
</head>
<%@ include file="4_static.jsp"%>
<body>
<jsp:include page="4_menu.jsp" />
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">주문 취소</h1>
    </div>
</div>
<div class="container">
    <h2 class="alert alert-danger">주문이 취소되었습니다.</h2>
</div>
<div class="container">
    <p> <a href="./4_Book_Home" class="btn btn-secondary">&laquo; 상품 목록</a>
</div>
</body>
</html>
