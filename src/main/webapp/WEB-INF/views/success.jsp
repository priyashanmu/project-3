<%@include file="header.jsp"%>OrderConformation<%@include file="Header2.jsp"%>
<style>
.wrapper{
margin-bottom:400px;}</style>
<body>


<%@include file="Navigaton.jsp"%>
<br>
<br>
	<c:forEach items="${OrderList}" var="order">
	</c:forEach>
	<div class="wrapper">
	<center>
	<h1>THANK YOU</h1>
	<h1>Your Ordered Placed Successfully</h1>
	
	<a href="<c:url value="/home"/>" class="btn btn-success">SUBMIT</a>
	</center>
	</div>

<%@include file="Footerjsp.jsp"%>