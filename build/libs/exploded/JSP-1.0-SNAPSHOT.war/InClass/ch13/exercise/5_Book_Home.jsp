<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-23
  Time: 오후 2:13
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-10
  Time: 오후 6:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Univ.JSP.InClass.Book.Book" %>
<%@ page import="com.Univ.JSP.InClass.Book.BookRepository" %>
<%@ page import="java.util.ArrayList" %>

<html lang="en">
<head>
<%@ include file="5_static.jsp"%>
</head>
<%!
    String productList = "도서 목록";
%>
<body>

<main>
    <div class="container py-4">
        <%@ include file="5_menu.jsp" %>


        <div class="p-5 mb-4 bg-light rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold"><%= productList%></h1>
            </div>
        </div>

        <%
            BookRepository instance = BookRepository.getInstance();
            ArrayList<Book> listOfBooks = instance.getAllBooks();
        %>

        <div class="row align-items-md-stretch">
            <%
                for (int i=0; i< listOfBooks.size();i++){
                    Book book = listOfBooks.get(i);

            %>
            <div class="col-md-6">
                <div class="h-100 p-5 bg-light border rounded-3">
                    <img src ="../../Images/<%=book.getFileName()%>" style ="width: 100%">
                    <h3>[<%=book.getCategory() %>] <%= book.getName()%></h3>
                    <p><%= book.getDescription()%></p>
                    <p><%=book.getAuthor() %> | <%=book.getPublisher() %> | <%=book.getUnitPrice() %></p>
                    <a href="./5_Book_Details.jsp?id=<%=book.getBookId() %>" class="btn btn-outline-secondary" role="button">상세 정보 &raquo</a>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <%@include file="5_footer.jsp" %>
    </div>
</main>
</body>
</html>

