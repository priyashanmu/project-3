<%@include file="header.jsp"%>REGISTRATION<%@include file="Header2.jsp"%>
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

<body>
	<%@include file="Navigaton.jsp"%>
	<div class="container" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-3">
   

   <h2>User Details</h2>

			<form:form modelAttribute="newuser" accept-charset="utf-8"
				class="form" role="form">

			 <form:input path="fname" type="text" pattern="[a-zA-Z\s]{3,30}"
					required="true" title="Size Must Be 3-30 "
					class="form-control input-lg" placeholder="Name" />

				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('fname')}"
					var="err">
					<div>
						<span style="color: white" class="error1">${err.text}</span>
					</div>
				</c:forEach> <br><br>

				<form:input path="email"
					pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" required="true"
					title="ex1@ex.com" class="form-control input-lg"
					placeholder="Your Email" />

				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('email')}"
					var="err">
					<div>
						<span style="color: white" class="error1">${err.text}</span>
					</div>
				</c:forEach><br><br>

				<form:input path="age" type="text" required="true"
					title='Numberic value is Valid' class="form-control input-lg"
					placeholder="Your Age" pattern="[1-9]{1,3}" />

				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('age')}"
					var="err">
					<div>
						<span style="color: white" class="error1">${err.text}</span>
					</div>
				</c:forEach><br><br>



				<form:input path="phnumber" required="true"
					title="PhoneNumber Starts with Either 7,8 or 9.Length Must Be 10"
					class="form-control input-lg" placeholder="phone number"
					pattern="[789][0-9]{9}" />

				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('phnumber')}"
					var="err">
					<div>
						<span style="color: white" class="error1">${err.text}</span>
					</div>
				</c:forEach><br><br>
	
		<form:input path="username" required="true"
			class="form-control input-lg" placeholder="Username" />
		<br />
		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
			var="err">
			<div>
				<span style="color: white" class="error1">${err.text}</span>
			</div>
		</c:forEach>


		<form:input path="password" type="password" required="true"
			class="form-control input-lg" placeholder="Password"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
			title="at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />
		<br />
		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
			var="err">
			<div>
				<span style="color: white" class="error1">${err.text}</span>
			</div>
		</c:forEach>

		<form:input path="cPassword" type="password" required="true"
			class="form-control input-lg" placeholder="Re-type Password"
			pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
			title="at least one number and one uppercase and lowercase letter, and at least 8 or more characters" />

		<!-- to display validation messages -->
		<c:forEach
			items="${flowRequestContext.messageContext.getMessagesBySource('cPassword')}"
			var="err">
			<div>
				<span style="color: white" class="error1">${err.text}</span>
			</div>
		</c:forEach>


		
		<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->


<br>
<center>
		<button style="align: center"
			class="btn btn-md btn-success  signup-btn"
			name="_eventId_submit" type="submit" value="Submit"
			onclick="return validatePassword()">Sign Up</button>


		
			<button class="btn btn-md btn-success  signup-btn"
				type="reset">Reset</button>

		</div>
		</form:form>







		<script type="text/javascript">
			function validatePassword() {
				var password = document.getElementById("password").value;
				var confirmPassword = document.getElementById("cPassword").value;
				if (password != confirmPassword) {
					alert("Passwords does not match.");
					return false;
				}
				return true;
			}
		</script>
		<!-- </body>
</html> -->
		<%@include file="Footerjsp.jsp"%>