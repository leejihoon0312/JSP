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

<!doctype html>
<html lang="en">
<head>
    <%@ include file="static.jsp"%>
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
            <h4 class="mb-3">상품 등록</h4>
            <form class="needs-validation" novalidate action="./5_processAddBook.jsp" method="post" name="newProduct" enctype="multipart/form-data">
                <div class="row g-3">

                    <div class="col-sm-6">
                        <label class="form-label">도서 코드</label>
                        <input type="text" class="form-control" name="bookId" placeholder="" value="" required>
                        <div class="invalid-feedback">
                            must required.
                        </div>
                    </div>


                    <div class="col-12">
                        <label  class="form-label">도서명</label>
                        <div class="input-group has-validation">
                            <input type="text" class="form-control" name="name" placeholder="상품명" required>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label  class="form-label">가격</label>
                        <div class="input-group has-validation">
                            <input type="text" class="form-control" name="unitPrice" placeholder="가격" required>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label  class="form-label">저자</label>
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
                        <label  class="form-label">출판사</label>
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
                        <label  class="form-label">출판일</label>
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
                        <label  class="form-label">총 페이지수</label>
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
                        <label  class="form-label">상세 정보</label>
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
                        <label  class="form-label">분류</label>
                        <div class="input-group has-validation">
                            <input type="text" class="form-control" name="category" placeholder="분류" required>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <label  class="form-label">재고 수</label>
                        <div class="input-group has-validation">
                            <input type="text" class="form-control" name="unitsInStock" placeholder="재고 수" required>
                            <div class="invalid-feedback">
                                must required.
                            </div>
                        </div>
                    </div>


                    <div class="col-12">
                        <label  class="form-label">이미지</label>
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



                <h4 class="mb-3">상태</h4>

                <div class="my-3">
                    <div class="form-check">
                        <input id="New"  name="condition" type="radio" class="form-check-input" value="New" checked required>
                        <label class="form-check-label" for="New">신규 도서</label>
                    </div>
                    <div class="form-check">
                        <input id="Old" name="condition" type="radio" class="form-check-input"  value="Old" required>
                        <label class="form-check-label" for="Old">중고 도서</label>
                    </div>
                    <div class="form-check">
                        <input id="Refurbished" name="condition" type="radio" class="form-check-input" value="e-book" required>
                        <label class="form-check-label" for="Refurbished">e-book</label>
                    </div>
                </div>


                <hr class="my-4">

                <button class="w-100 btn btn-primary btn-lg" type="submit">상품 등록</button>
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


<script src="https://getbootstrap.com/docs/5.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script src="https://getbootstrap.com/docs/5.1/examples/checkout/form-validation.js"></script>
</body>
</html>

