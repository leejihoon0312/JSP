<%@ page import="com.Univ.JSP.Project.ReceiveList" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="static.jsp"%>
</head>
<body>

<%@ include file="header.jsp"%>
<% ArrayList<ReceiveList> receiveList = (ArrayList)request.getSession().getAttribute("receiveList");%>


	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section hero-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center margin-left">
					<div class="breadcrumb-text">
						<h1>접수 내역</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->

	<!-- cart -->
	<div class="cart-section mt-150 mb-150">
		<div class="container">
			<div class="row">

				<div class="col-lg-8 col-md-12 margin-left">
					<div class="cart-table-wrap">
						<table class="cart-table">
							<thead class="cart-table-head">
								<tr class="table-head-row">
									<th class="product-name">상품명</th>
									<th class="product-price">수량</th>
									<th class="product-total">주문자</th>
									<th class="product-total">판매자</th>
								</tr>
							</thead>
							<tbody>
							<%
								for (int i=0; i<receiveList.size();i++){
									ReceiveList list = receiveList.get(i);
							%>
								<tr class="table-body-row">
									<td class="product-name"><%= list.getProductName()%></td>
									<td class="product-price"><%= list.getReserveAmount()%></td>
									<td class="product-total"><%= list.getReserveUser()%></td>
									<td class="product-total"><%= list.getProducerId()%></td>
								</tr>
							<%}%>
							</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- end cart -->

<%@ include file="footer.jsp"%>

</body>
</html>