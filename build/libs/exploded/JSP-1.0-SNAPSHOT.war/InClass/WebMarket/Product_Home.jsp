<%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-10
  Time: 오후 6:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.Univ.JSP.InClass.Product.Product" %>
<%@ page import="com.Univ.JSP.InClass.Product.ProductRepository" %>
<%@ page import="java.util.ArrayList" %>
<html lang="en">
<head>
    <%@include file="static.jsp" %>
</head>
<%!
    String productList = "상품 목록";
%>
<body>

<main>
    <div class="container py-4">
        <%@ include file="menu.jsp"%>


        <div class="p-5 mb-4 bg-light rounded-3">
            <div class="container-fluid py-5">
                <h1 class="display-5 fw-bold"><%= productList%></h1>
                <p class="col-md-8 fs-4">Using a series of utilities, you can create this jumbotron, just like the one in previous versions of Bootstrap. Check out the examples below for how you can remix and restyle it to your liking.</p>
                <button class="btn btn-primary btn-lg" type="button">Example button</button>
            </div>
        </div>

        <%
            ProductRepository instance = ProductRepository.getInstance();
            ArrayList<Product> listOfProducts = instance.getAllProducts();
        %>

        <div class="row align-items-md-stretch">
            <%
                for (int i=0; i< listOfProducts.size();i++){
                    Product product = listOfProducts.get(i);

            %>
            <div class="col-md-6">
                <div class="h-100 p-5 bg-light border rounded-3">
                    <img src ="../Images/<%=product.getFileName()%>" style ="width: 100%">
                    <h2><%= product.getpName()%></h2>
                    <p><%= product.getDescription()%></p>
                    <p><%= product.getUnitPrice()%></p>
                    <a href="./Product_Details.jsp?id=<%=product.getProductId() %>" class="btn btn-outline-secondary" >상세 정보 &raquo</a>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <%@include file="footer.jsp" %>
    </div>
</main>



</body>
</html>

