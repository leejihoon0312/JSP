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
<html lang="en">
<head>
    <%@ include file="static.jsp"%>

</head>
<body>

<main>
    <div class="container py-4">
        <%@ include file="5_menu.jsp"%>


        <%
            String id = request.getParameter("id");
            BookRepository instance = BookRepository.getInstance();
            Book book = instance.getBookById(id);
        %>

        <div class="row align-items-md-stretch">
            <div class="col-md-6">
                <div class ="col-md-5">
                    <img src ="../../Images/<%=book.getFileName()%>" style ="width: 100%">
                </div>
                <div class="h-90 p-5 bg-light border rounded-3">
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
                        <a href="./5_Book_Home.jsp" class="btn btn-secondary">도서 목록 &raquo</a>
                </div>
            </div>
        </div>

    </div>
    <%@include file="5_footer.jsp" %>
</main>



</body>
</html>


