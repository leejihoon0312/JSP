<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-10
  Time: 오후 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.Univ.JSP.InClass.Book.Book"%>
<%@ page import="com.Univ.JSP.InClass.Book.BookRepository"%>

<%
    request.setCharacterEncoding("UTF-8");

    String bookId = request.getParameter("bookId");
    String name = request.getParameter("name");
    String unitPrice = request.getParameter("unitPrice");
    String description = request.getParameter("description");
    String author = request.getParameter("author");
    String publisher = request.getParameter("publisher");
    String category = request.getParameter("category");
    String unitsInStock = request.getParameter("unitsInStock");
    String totalPages =  request.getParameter("totalPages");
    String releaseDate = request.getParameter("releaseDate");
    String condition = request.getParameter("condition");


    Integer price;

    if (unitPrice.isEmpty())
        price = 0;
    else
        price = Integer.valueOf(unitPrice);

    long stock;

    if (unitsInStock.isEmpty())
        stock = 0;
    else
        stock = Long.valueOf(unitsInStock);

    int pages;

    if (totalPages.isEmpty())
        pages = 0;
    else
        pages = Integer.parseInt(totalPages);

    BookRepository dao = BookRepository.getInstance();

    Book newBook = new Book();
    newBook.setBookId(bookId);
    newBook.setName(name);
    newBook.setUnitPrice(price);
    newBook.setDescription(description);
    newBook.setAuthor(author);
    newBook.setPublisher(publisher);
    newBook.setCategory(category);
    newBook.setUnitsInStock(stock);
    newBook.setTotalPages(pages);
    newBook.setReleaseDate(releaseDate);
    newBook.setCondition(condition);


    dao.addBook(newBook);

    response.sendRedirect("6_Book_Home.jsp");
%>

