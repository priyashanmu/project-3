<%@include file="header.jsp"%>${productModel.name}<%@include file="Header2.jsp"%>
<body>
<%@include file="Navigaton.jsp"%>
<div class="container">

	<div class="row">
	<div class="col-md-4">
	</div>
		<div class="col-md-6">
		
				<img src="<c:url value="/resources/admin/upload/${productModel.imagename}.jpg"/>"
						class="img-responsive">
		<div class="col-md-6">
			<center><h1>${productModel.name}</h1></center>
			<hr>
			<center><h3>RS${productModel.price}</h3></center>
			<hr>
			<center>
						
			<h2>${productModel.description}</h1></ul>
			</center>
			</div>
	</div>
			
			<div class="col-md-6">
				<center><a href="<c:url value="/user/addtocart/${productModel.productid}"/>" class="btn  btn-success ribbon"> <span class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
		</center>
			</div>
			
		</div>
	</div>
	
<%@include file="Footerjsp.jsp"%>