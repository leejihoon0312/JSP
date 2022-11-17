<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-02
  Time: 오후 10:29
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
    String bookList = "도서 목록";
%>
<body>
<%@include file="6_menu.jsp" %>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3"><%= bookList%></h1>
    </div>
</div>
<%
    ArrayList<Book> listOfBooks = BookDAO.getAllProducts();
%>
<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <%
            for (int i=0; i< listOfBooks.size();i++){
                Book book = listOfBooks.get(i);

        %>
        <div class="col-md-4">
            <h3>[<%=book.getCategory() %>] <%= book.getName()%></h3>
            <p><%= book.getDescription()%></p>
            <p><%=book.getAuthor() %> | <%=book.getPublisher() %> | <%=book.getUnitPrice() %></p>
            <a href="./6_bookDetails.jsp?id=<%=book.getBookId() %>" class="btn btn-secondary" role="button">상세 정보 &raquo</a>
        </div>
        <%
            }
        %>
    </div>
    <hr>
    <%@include file="6_footer.jsp" %>

</div> <!-- /container -->
</body>
</html>
