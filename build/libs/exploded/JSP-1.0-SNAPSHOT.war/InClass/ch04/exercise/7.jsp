<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-01
  Time: 오후 4:23
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
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">

        <div class="navbar-header">
            <a class="navbar-brand" href="#"><%= mainTitle%></a>
        </div>

    </div>
</nav>
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
        </div>
        <%
            }
        %>
    </div>
    <hr>
    <footer>
        <p>&copy; BookMarket</p>
    </footer>
</div> <!-- /container -->
</body>
</html>
