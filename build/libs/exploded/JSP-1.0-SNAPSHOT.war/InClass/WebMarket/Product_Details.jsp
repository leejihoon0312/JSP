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
<html lang="en">
<head>
    <%@include file="static.jsp" %>
</head>
<body>

<main>
    <div class="container py-4">
        <%@ include file="menu.jsp"%>


        <%
            String id = request.getParameter("id");
            ProductRepository instance = ProductRepository.getInstance();
            Product product = instance.getProductById(id);
        %>

        <div class="row align-items-md-stretch">
            <div class="col-md-6">
                <div class ="col-md-5">
                    <img src ="../Images/<%=product.getFileName()%>" style ="width: 100%">
                </div>
                <div class="h-90 p-5 bg-light border rounded-3">
                    <h2><%=product.getpName()%></h2>
                    <p><%= product.getDescription()%></p>
                    <p><b>상품 코드 : </b> <%=product.getProductId()%>
                    <% System.out.println("product.getProductId() = " + product.getProductId());%>
                    <p><b>제조사</b> : <%=product.getManufacturer()%>
                    <p><b>분류</b> : <%=product.getCategory()%>
                    <p><b>재고 수</b> : <%=product.getUnitsInStock()%>
                    <h4><%=product.getUnitPrice()%>원</h4>
                    <p><a href="#" class="btn btn-info"> 상품 주문 &raquo;</a> <a	href="./Product_Home.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
                </div>
            </div>
        </div>

    </div>
    <%@include file="footer.jsp" %>
</main>



</body>
</html>

