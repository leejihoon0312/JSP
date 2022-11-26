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
<%@ page import="com.Univ.JSP.InClass.Book.BookRepository" %>

<%
    String id = request.getParameter("id");
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("4_Book_Home.jsp");
        return;
    }

    BookRepository dao = BookRepository.getInstance();

    Book book = dao.getBookById(id);
    if(book == null) {
        response.sendRedirect("4_exceptionNoBookId.jsp");
    }

    ArrayList<Book> goodsList = dao.getAllBooks();
    Book goods = new Book();
    for (int i = 0; i < goodsList.size(); i++) {
        goods = goodsList.get(i);
        if (goods.getBookId().equals(id)) {
            break;
        }
    }

    ArrayList<Book> list = (ArrayList<Book>) session.getAttribute("cartlist");
    if(list == null) {
        list = new ArrayList<Book>();
        session.setAttribute("cartlist", list);
    }

    int cnt = 0;
    Book goodsQnt = new Book();

    for (int i=0; i< list.size(); i++) {
        goodsQnt = list.get(i);
        if (goodsQnt.getBookId().equals(id)) {
            cnt++;
            int orderQuantity = goodsQnt.getQuantity() + 1;
            goodsQnt.setQuantity(orderQuantity);
        }
    }

    if (cnt == 0) {
        goods.setQuantity(1);
        list.add(goods);
    }

    response.sendRedirect("4_Book_Home.jsp?id=" + id);
%>
