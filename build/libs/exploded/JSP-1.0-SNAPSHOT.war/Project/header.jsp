
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%-- 디렉티브 태그(taglib)--%>
<%@ page errorPage="404.jsp" %>


<c:set var="isLogin" value="<%= request.getRemoteUser() %>" />


<!--PreLoader-->
<div class="loader">
    <div class="loader-inner">
        <div class="circle"></div>
    </div>
</div>
<!--PreLoader Ends-->

<!-- header -->
<div class="top-header-area" id="sticker">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-sm-12 text-center">
                <div class="main-menu-wrap">



                    <!-- logo -->
                    <div class="site-logo">
                        <a href="index.jsp">
                            <img src="assets/img/mainLogo.png" alt="">
                        </a>
                    </div>
                    <!-- logo -->

                    <!-- menu start -->
                    <nav class="main-menu">
                        <ul>
                            <li class="current-list-item"><a href="index.jsp">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">News</a></li>


                            <li><a href="getProducts">List</a>
                                <ul class="sub-menu">
                                    <c:choose>

                                        <c:when test="${isLogin eq 'admin'}">
                                            <li><a href="addProduct.jsp">상품 등록하기</a></li>
                                        </c:when>

                                        <c:otherwise>
                                        </c:otherwise>

                                    </c:choose>

                                    <li><a href="reservationList.jsp">Cart</a></li>
                                </ul>
                            </li>
                            <li>
                                <div class="header-icons">
                                    <a class="shopping-cart" href="reservationList.jsp"><i class="fas fa-shopping-cart"></i></a>

                                    <c:choose>

                                        <c:when test="${empty isLogin}">
                                            <a  href="login">로그인</a>
                                        </c:when>

                                        <c:otherwise>
                                            <a  href="logOut" >로그아웃</a>
                                            <a  href="Reservations" >접수 내역</a>
                                        </c:otherwise>

                                    </c:choose>
                                </div>
                            </li>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
    </div>
</div>
<!-- end header -->

