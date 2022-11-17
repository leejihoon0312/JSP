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
<%@ page import="com.Univ.JSP.InClass.Book.BookRepository" %>
<html>
<head>
    <title>Title</title>
<%--    <link href="http://bootstrapk.com/examples/jumbotron/jumbotron.css" rel="stylesheet">--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<%!
    String bookList = "도서 목록";
%>
<body>
<%@ include file="7_menu.jsp" %>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3"><%= bookList%></h1>
    </div>
</div>
<%
    BookRepository DAO = BookRepository.getInstance();
    ArrayList<Book> listOfBooks = DAO.getAllBooks();
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
            <a href="./7_Book_Details.jsp?id=<%=book.getBookId() %>" class="btn btn-info" role="button">상세 정보 &raquo</a>
        </div>
        <%
            }
        %>
    </div>
    <hr>
    <%@include file="7_footer.jsp" %>

</div> <!-- /container -->
</body>
</html>
