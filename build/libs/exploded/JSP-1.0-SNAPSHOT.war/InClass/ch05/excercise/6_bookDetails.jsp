<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-02
  Time: 오후 11:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Univ.JSP.InClass.Book.Book" %>
<jsp:useBean id="BookDAO" class="com.Univ.JSP.InClass.Book.BookRepository" scope="session"/>
<html>
<head>
    <title>Title</title>
    <link href="http://bootstrapk.com/examples/jumbotron/jumbotron.css" rel="stylesheet">
    <link href="http://bootstrapk.com/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<%!
    String mainTitle = "Home";
    String bookList ="책 상세 정보";
%>
<body>
<%@include file="6_menu.jsp" %>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3"><%= bookList%></h1>
    </div>
</div>
<%
    String id = request.getParameter("id");
    Book book = BookDAO.getBookById(id);
%>
<div class="container">

    <div class="row">
        <div class="col-md-4">
            <h3><%=book.getName()%></h3>
            <p><%=book.getDescription()%>
            <p><b>도서 코드:</b><span class="badge badge-danger"><%=book.getBookId() %></span>
            <p><b>출판사</b> : <%=book.getPublisher()%>
            <p><b>저자</b> : <%=book.getAuthor() %>
            <p><b>재고수</b> : <%=book.getUnitsInStock() %>
            <p><b>총 페이지수</b> : <%=book.getTotalPages() %>
            <p><b>출판일</b> : <%=book.getReleaseDate() %>
            <h4><%=book.getUnitPrice()%>원</h4>
            <p> <a href="#" class="btn btn-info"> 도서 주문 &raquo</a>
                <a href="./6_book.jsp" class="btn btn-secondary">도서 목록 &raquo</a>
        </div>
    </div>

    <hr>
    <%@include file="6_footer.jsp" %>

</div>
</body>
</html>
