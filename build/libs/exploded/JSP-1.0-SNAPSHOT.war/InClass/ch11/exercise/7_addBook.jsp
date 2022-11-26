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
  Time: 오후 7:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="en">
<head>
    <%@ include file="7_static.jsp"%>
    <fmt:setLocale value='<%= request.getParameter("language")%>'/>
    <fmt:setBundle basename="InClass.ch09message" />

</head>
<body class="bg-light">

<div class="container">
    <main>
        <div class="py-5 text-center">
            <img class="d-block mx-auto mb-4" src="https://getbootstrap.com/docs/5.1/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
            <h2>Checkout form</h2>
            <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
        </div>


        <div class="col-md-7 col-lg-8">
            <div class="text-right">
                <a href="?language=ko" >Korean</a> | <a href="?language=en" >English</a>
                <%
                    if (request.getRemoteUser().equals("guest")){

                %>
                <a href="7_logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
                <%}%>
            </div>
            <br>
            <h4 class="mb-3"><fmt:message key="title"/></h4>
            <form class="needs-validation" novalidate action="./7_processAddBook.jsp" method="post" name="newBook" enctype="multipart/form-data">
                <div class="row g-3">

                    <div class="col-sm-6">
                        <label class="form-label"><fmt:message key="bookId"/></label>
                        <input type="text" class="form-control" name="bookId" id="bookId" placeholder="" value="" required>
                        <div class="invalid-feedback">
                            must required.
                        </div>
                    </div>


                    <div class="col-12">
                        <label  class="form-label"><fmt:message key="name"/></label>
                        <div class="input-group has-validation">
                            <input type="text" class="form-control" name="name"  id="name" placeholder="" required>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label  class="form-label"><fmt:message key="unitPrice"/></label>
                        <div class="input-group has-validation">
                            <input type="text" class="form-control" name="unitPrice" id="unitPrice" placeholder="" required>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label  class="form-label"><fmt:message key="author"/></label>
                        <div class="input-group has-validation">
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="author"  required>
                            </div>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label  class="form-label"><fmt:message key="publisher"/></label>
                        <div class="input-group has-validation">
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="publisher"  required>
                            </div>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label  class="form-label"><fmt:message key="releaseDate"/></label>
                        <div class="input-group has-validation">
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="releaseDate"  required>
                            </div>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label  class="form-label"><fmt:message key="totalPages"/></label>
                        <div class="input-group has-validation">
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="totalPages"  required>
                            </div>
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
                        <label  class="form-label"><fmt:message key="category"/></label>
                        <div class="input-group has-validation">
                            <input type="text" class="form-control" name="category" placeholder="" required>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label  class="form-label"><fmt:message key="unitsInStock"/></label>
                        <div class="input-group has-validation">
                            <input type="text" class="form-control" name="unitsInStock" id="unitsInStock" placeholder="" required>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>


                    <div class="col-12">
                        <label  class="form-label"><fmt:message key="bookImage"/></label>
                        <div class="input-group has-validation">
                            <input type="file" class="form-control" name="bookImage">
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


                <button class="w-100 btn btn-primary btn-lg" type="button" onclick="CheckAddBook09()"><fmt:message key="button"/></button>
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

