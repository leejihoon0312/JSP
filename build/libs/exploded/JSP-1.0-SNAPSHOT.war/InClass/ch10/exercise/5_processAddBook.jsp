<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-23
  Time: 오후 2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.Univ.JSP.InClass.Product.Product"%>
<%@ page import="com.Univ.JSP.InClass.Product.ProductRepository"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="com.Univ.JSP.InClass.Book.BookRepository" %>
<%@ page import="com.Univ.JSP.InClass.Book.Book" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>

<%
    String realFolder = "C:\\upload";
    String encType = "utf-8";

    MultipartRequest multipartRequest = new MultipartRequest(request,realFolder,5*1024*1024,encType,new DefaultFileRenamePolicy());

    String bookId = multipartRequest.getParameter("bookId");
    String name = multipartRequest.getParameter("name");
    String unitPrice = multipartRequest.getParameter("unitPrice");
    String description = multipartRequest.getParameter("description");
    String author = multipartRequest.getParameter("author");
    String publisher = multipartRequest.getParameter("publisher");
    String category = multipartRequest.getParameter("category");
    String unitsInStock = multipartRequest.getParameter("unitsInStock");
    String totalPages =  multipartRequest.getParameter("totalPages");
    String releaseDate = multipartRequest.getParameter("releaseDate");
    String condition = multipartRequest.getParameter("condition");

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

    Enumeration fileNames = multipartRequest.getFileNames();
    String paramName = (String) fileNames.nextElement();

    String OriginalFileName = multipartRequest.getOriginalFileName(paramName);


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
    newBook.setFileName(OriginalFileName);

    dao.addBook(newBook);

    response.sendRedirect("4_Book_Home.jsp");
%>

