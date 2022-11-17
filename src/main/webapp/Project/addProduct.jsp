<%@ page contentType="text/html; charset=utf-8"%> <%--디렉티브 태그(page)--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> <%--디렉티브 태그(taglib)--%>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="static.jsp"%> <%--디렉티브 태그(include)--%>
	<link rel="stylesheet" href="assets/css/margin.css">

</head>

<fmt:setLocale value='<%= request.getParameter("language")%>'/>
<fmt:setBundle basename="Project.message" />

<body>

<%@ include file="header.jsp"%>
	
	<!-- breadcrumb-section -->
	<div class="breadcrumb-section hero-bg">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 offset-lg-2 text-center">
					<div class="breadcrumb-text">
						<h1><fmt:message key="title"/></h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end breadcrumb section -->


	<!-- check out section -->
	<div class="checkout-section mt-150 mb-150">
		<div class="container">

			<div class="row align-items-center align-content-center">

				<div class="col-lg-8 margin-left">
					<div class="checkout-accordion-wrap">
						<div class="accordion" id="accordionExample">
						  <div class="card single-accordion">
							  <div class="text-right">
								  <a href="?language=ko" >Korean</a> | <a href="?language=en" >English</a>
							  </div>
						    <div class="card-header" id="headingOne">
						      <h5 class="mb-0">
						        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
									<fmt:message key="title"/>
						        </button>
						      </h5>
						    </div>

						    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
						      <div class="card-body">
						        <div class="billing-address-form">
									<%-- 폼 태그(form) + 폼 태그(input) --%>
						        	<form action="storeProduct" method="post" enctype="multipart/form-data" >
										<p>
											<select name="category">
												<option value="Korean" selected="selected" ><fmt:message key="Korean"/></option>
												<option value="Japan"><fmt:message key="Japan"/></option>
												<option value="Western" ><fmt:message key="Western"/></option>
											</select>
										</p>
										<p><input type="text" name="shopName" placeholder='<fmt:message key="shopName"/>'></p>
						        		<p><input type="text" name="productName" placeholder='<fmt:message key="productName"/>'></p>
										<p><input type="text" name="unitPrice" placeholder='<fmt:message key="unitPrice"/>'></p>
										<p><input type="text" name="unitsInStock" placeholder='<fmt:message key="unitsInStock"/>'></p>
										<p><input type="text" name="location" placeholder='<fmt:message key="location"/>'></p>
<%--										<p><input type="text" name="category" placeholder='<fmt:message key="category"/>'></p>--%>

										<p><input type="file" name="fileName"></p>
						        		<p><textarea name="description"  cols="30" rows="10" placeholder='<fmt:message key="description"/>'></textarea></p>
										<input type="hidden" name="producerId" value='<%= request.getRemoteUser()%>'>
										<button class="add-button"><fmt:message key="button"/></button>
									</form>
						        </div>
						      </div>
						    </div>
						  </div>
						</div>

					</div>
				</div>

			</div>
		</div>
	</div>


<%@ include file="footer.jsp"%>
</body>
</html>