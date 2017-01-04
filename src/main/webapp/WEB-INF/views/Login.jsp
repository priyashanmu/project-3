<%@include file="header.jsp"%>Login<%@include file="Header2.jsp"%>
<style>
body
{
background-image: url("<c:url value='/resources/images/m3.jpg'/>");
  background-repeat: no-repeat; 
background-size:cover; 
} 
form
{

width:600px;
background-color:white;
padding:40px;
margin:40px;
}
fieldset
{

width:500px;
/* background-color:pink;
 */padding:40px;
margin:40px;
}
span
{
color:red;
}
</style> 


<body onload="onBack();" onpageshow="if (event.persisted noBack();"
	onunload="">
	<%@include file="Navigaton.jsp"%>
	<div class="container" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
   
<div id="a">
  <h2>Login Page</h2>/
	
	<form name='loginForm'
		action="<c:url value='j_spring_security_check' />" method='POST'>


		<div class="main-wrap">
		<h3>${Message}</h3>
			<div class="login">
				
				<input type="text" placeholder="username" name="username"
					class="form-control input-lg"> <br><br>
					<input type="password"
					placeholder="password" name="password" class="form-control input-lg"><br><br>
				<input type="submit"  class="btn  btn-success ribbon" value="submit"> <a
					class="btn  btn-success ribbon" href="<c:url value="/memberShip.obj"/>">Sign
					Up</a> <%-- <a class="Pull-right btn button1" style="margin-right: 30px"
					href="<c:url value="/getforget"/>">Forget password?</a>
			 --%></div>

		</div>
	</form>
	<script type="text/javascript">
window.history.forward();
function noBack()
{
	window.history.forwrard();
}
</script>
	<%@include file="Footerjsp.jsp"%>