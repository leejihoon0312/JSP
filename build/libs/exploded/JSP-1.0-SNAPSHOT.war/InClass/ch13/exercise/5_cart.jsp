<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-21
  Time: 오후 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.Univ.JSP.InClass.Book.Book" %>

<html>
<head>

    <%
        String cartId = session.getId();
    %>
    <title>장바구니</title>
</head>
<%@ include file="5_static.jsp"%>
<body>
<jsp:include page="5_menu.jsp" />
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">장바구니</h1>
    </div>
</div>
<div class="container">
    <div class="row">
        <table width="100%">
            <tr>
                <td align="left"><a href="./5_deleteCart.jsp?cartId=<%=cartId %>" class="btn btn-danger">삭제하기</a></td>
                <td align="right"><a href="./5_shippingInfo.jsp?cartId=<%=cartId %>" class="btn btn-success">주문하기</a></td>
            </tr>
        </table>
    </div>
    <div style="padding-top: 50px">
        <table class="table table-hover">
            <tr>
                <th>상품</th>
                <th>가격</th>
                <th>수량</th>
                <th>소계</th>
                <th>비고</th>
            </tr>
            <%
                int sum = 0;
                ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartlist");
                if (cartList == null)
                    cartList = new ArrayList<Book>();

                for (int i = 0; i < cartList.size(); i++) { //상품 리스트 하나씩 출력하기
                    Book book = cartList.get(i);
                    int total = book.getUnitPrice() * book.getQuantity();
                    sum = sum + total;
            %>
            <tr>
                <td><%=book.getBookId() %> - <%=book.getName() %></td>
                <td><%=book.getUnitPrice() %></td>
                <td><%=book.getQuantity() %></td>
                <td><%=total %></td>
                <td><a href="./5_removeCart.jsp?id=<%=book.getBookId() %>" class="badge badge-danger" style="color: red">삭제</a></td>

            </tr>
            <%
                }
            %>
            <tr>
                <th></th>
                <th></th>
                <th>총액</th>
                <th><%=sum %></th>
                <th></th>
            </tr>
        </table>
        <a href="./5_Book_Home.jsp" class="btn btn-secondary">&laquo; 쇼핑 계속하기</a>
    </div>
    <hr>
</div>
<jsp:include page="5_footer.jsp" />
</body>
</html>
