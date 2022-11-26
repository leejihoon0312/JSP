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

<%
    String id = request.getParameter("cartId");
    if (id == null || id.trim().equals("")) {
        response.sendRedirect("4_cart.jsp");
        return;
    }

    session.invalidate();

    response.sendRedirect("4_cart.jsp");
%>
