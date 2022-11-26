<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-11-21
  Time: 오후 2:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.Univ.JSP.InClass.Book.Book" %>
<%@ page import="com.Univ.JSP.InClass.Book.BookRepository" %>
<%@ page import="java.util.ArrayList" %>

<%
    String id = request.getParameter("id");
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("4_Book_Home.jsp");
        return;
    }

    BookRepository dao = BookRepository.getInstance();

    Book book  = dao.getBookById(id);
    if (book == null) {
        response.sendRedirect("4_exceptionNoBookId.jsp");
    }

    ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartlist");
    Book goodsQnt = new Book();
    for (int i = 0; i < cartList.size(); i++) {
        goodsQnt = cartList.get(i);
        if (goodsQnt.getBookId().equals(id)) {
            cartList.remove(goodsQnt);
        }
    }

    response.sendRedirect("4_cart.jsp");
%>
