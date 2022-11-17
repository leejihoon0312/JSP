<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: 이지훈
  Date: 2022-10-10
  Time: 오후 7:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html>
<head>
    <%@include file="static.jsp" %>
    <fmt:setLocale value='<%= request.getParameter("language")%>'/>
    <fmt:setBundle basename="InClass.message" />
</head>
<body class="bg-light">

<div class="container">
    <main>
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="https://getbootstrap.com/docs/5.1/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
            <h2>Checkout form</h2>
        </div>


            <div class="col-md-7 col-lg-8">
                <h4 class="mb-3"><fmt:message key="title"/></h4>
                <div class="text-right">
                    <a href="?language=ko" >Korean</a> | <a href="?language=en" >English</a>
                </div>


                <form class="needs-validation" novalidate action="./processAddProduct.jsp" method="post" name="newProduct" enctype="multipart/form-data">
                    <div class="row g-3">

                        <div class="col-sm-6">
                            <label class="form-label"><fmt:message key="productId"/></label>
                            <input type="text" class="form-control" id="productId" name="productId" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>


                        <div class="col-12">
                            <label  class="form-label"><fmt:message key="pname"/></label>
                            <div class="input-group has-validation">
                                <input type="text" class="form-control" id="name" name="name" placeholder="상품명" required>
                                <div class="invalid-feedback">
                                    must required.
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <label  class="form-label"><fmt:message key="unitPrice"/></label>
                            <div class="input-group has-validation">
                                <input type="text" class="form-control" id="unitPrice" name="unitPrice" placeholder="가격" required>
                                <div class="invalid-feedback">
                                    must required.
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <label  class="form-label"><fmt:message key="description"/></label>
                            <div class="input-group has-validation">
                                <div class="col-sm-5">
					                <textarea name="description" cols="50" rows="2"
                              class="form-control"></textarea>
                                </div>
                                <div class="invalid-feedback">
                                    must required.
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <label  class="form-label"><fmt:message key="manufacturer"/></label>
                            <div class="input-group has-validation">
                                <input type="text" class="form-control" name="manufacturer" placeholder="제조사" required>
                                <div class="invalid-feedback">
                                    must required.
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <label  class="form-label"><fmt:message key="productImage"/></label>
                            <div class="input-group has-validation">
                                <input type="file" class="form-control" name="productImage">
                                <div class="invalid-feedback">
                                    must required.
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <label  class="form-label"><fmt:message key="category"/></label>
                            <div class="input-group has-validation">
                                <input type="text" class="form-control" name="category" placeholder="분류" required>
                                <div class="invalid-feedback">
                                    must required.
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <label  class="form-label"><fmt:message key="unitsInStock"/></label>
                            <div class="input-group has-validation">
                                <input type="text" class="form-control" id="unitsInStock" name="unitsInStock" placeholder="재고 수" required>
                                <div class="invalid-feedback">
                                    must required.
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <hr>
                    <br>



                    <h4 class="mb-3"><fmt:message key="condition"/></h4>

                    <div class="my-3">
                        <div class="form-check">
                            <input id="New"  name="condition" type="radio" class="form-check-input" value="condition_New" checked required>
                            <label class="form-check-label" for="New"><fmt:message key="condition_New"/></label>
                        </div>
                        <div class="form-check">
                            <input id="Old" name="condition" type="radio" class="form-check-input"  value="condition_Old" required>
                            <label class="form-check-label" for="Old"><fmt:message key="condition_Old"/></label>
                        </div>
                        <div class="form-check">
                            <input id="Refurbished" name="condition" type="radio" class="form-check-input" value="condition_Refurbished" required>
                            <label class="form-check-label" for="Refurbished"><fmt:message key="condition_Refurbished"/></label>
                        </div>
                    </div>


                    <hr class="my-4">

<%--                    <button class="w-100 btn btn-primary btn-lg" type="button" onclick="CheckAddProduct()">상품 등록</button>--%>
                    <input type="button" value='<fmt:message key="button"/>' onclick="CheckAddProduct()" class="w-100 btn btn-primary btn-lg">
                </form>
            </div>
    </main>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; webMarket</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
    </footer>
</div>

</body>
</html>