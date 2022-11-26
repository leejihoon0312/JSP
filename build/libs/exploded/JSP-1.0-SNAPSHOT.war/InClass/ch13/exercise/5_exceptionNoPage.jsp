<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-18
  Time: 오후 7:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Title</title>
</head>
<%@ include file="5_static.jsp"%>
<body>
<%!
    String productList = "요청하신 페이지를 찾을 수 없습니다.";
%>
<main>
    <div class="container py-4">
        <%@ include file="5_menu.jsp" %>


        <div class="p-5 mb-4 bg-light rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold"><%= productList%></h1>
            </div>
        </div>



        <div class="row align-items-md-stretch">
            <p><%=request.getRequestURL() %>?<%=request.getQueryString() %>
            <p> <a href="5_Book_Home.jsp" class="btn btn-secondary"> 도서 목록 &raquo;</a>

        </div>
        <%@include file="5_footer.jsp" %>
    </div>
</main>
</body>
</html>
