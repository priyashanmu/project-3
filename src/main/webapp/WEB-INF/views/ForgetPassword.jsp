<%@include file="header.jsp"%>ForgetPassword<%@include file="Header2.jsp"%>
<style>
.forget{
margin-top:100px;
}
.border1{
font-family:Comic Sans MS Bold;
font-size:23px;
}
.mobiacesf{
font: bold 28px sans-serif;
}
</style>
<body>
<div class="container">
<center>
<h2>${Invalid}</h2>
<div class=" forget">
<h1 class="mobiacesf">password recovery </h1>
<form method="post" action="<c:url value="/forget"/>">
					USERNAME:
			<input type="text" placeholder="username" name="username"
					>
					<br>
					EMAIL   :
			<input type="email" placeholder="email" name="email"
					><br>
					<input type="submit" class="btn btn-success" value="submit">

</form>
</div>
</div>
