<%@include file="header.jsp"%>Productupload<%@include file="Header2.jsp"%>
<!-- <style>
/* .button1{
background-color:#DEA573;
color:#000000;
border:1px solid #000000;
}
.button1:hover{
color:#DEA573;
background-color:#000000;
}
tr{

height:40px;
color:#DEA573;
}
table {
    border-collapse: collapse;
   background-color: #000000;
   width:65%;
    margin-top:5px;
    border:5px solid #DEA573; 
  
}

th, td {
    text-align: center;
   	font-family:CURSIVE;
   	font-weight: bold;
   	font-size:16px;
    padding:8px;
}
.define{
color:#000000;
width:360px
}
tr:nth-child(even){background-color: #DEA573;color:#000000} */
<!-- body
{
background:white;
color:black;
}
form:form
{
background:black;
opacity:60%;
}
tbody: td {
	/* color: transparent; */
	text-shadow: 0 0 3px #000;
}

tbody: tr: td {
	color: #000;
	text-shadow: 0 1px 0 #000;
}
td {
	border-right: 1px solid #fff;
	border-left: 1px solid #e8e8e8;
	border-top: 1px solid #000;
	border-bottom: 1px solid #e8e8e8;
	padding: 10px 15px;
	position: relative;
	transition: all 300ms;
}

td:first-child {
	box-shadow: inset 1px 0 0 #fff;
}	

td:last-child {
	border-right: 1px solid #e8e8e8;
	box-shadow: inset -1px 0 0 #fff;
}	

tr {
	background: url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:nth-child(odd) td {
	background: #f1f1f1 url(http://jackrugile.com/images/misc/noise-diagonal.png);	
}

tr:last-of-type td {
	box-shadow: inset 0 -1px 0 #fff; 
}

tr:last-of-type td:first-child {
	box-shadow: inset 1px -1px 0 #fff;
}	

tr:last-of-type td:last-child {
	box-shadow: inset -1px -1px 0 #fff;
}	
</style> -->
 --></head>
<body>
<%@include file="Navigaton.jsp"%>
<br>
<br>
<div class="col-md-12">
<h1 style="text-align:center">Add Product Details</h1>

	<form:form action="productmodel" method="POST" commandName="ob" enctype="multipart/form-data" >
		<center><table >
		
		
		
		<tr>
			<td>Product Name</td>
			<td><form:input path="name" class="form-control input-lg"/></td>
			<td><form:errors path="name" cssStyle="color : red;"/></td>
		</tr>
		
		<tr>
			<td>Product Brand</td>
			<td><form:input path="brand" class="form-control input-lg"/></td>
			<td><form:errors path="brand" cssStyle="color : red;"/></td>
		</tr>

		<tr>
		<td> Image Name</td><td><form:input path="imagename"  type="text" class="form-control input-lg"></form:input></td>
		<td><form:errors path="imagename" cssStyle="color : red;"/></td></tr>
		<tr><td>Select Image</td><td><center><form:input path="filename" type="file"/></center></td>
		
		</tr>
		
		<tr>
			<td>Category Type</td>
		<td>	<form:select  class="form-control input-lg" path="category" name="CATEGORY">
   			<form:option value="earrings">earrings</form:option>
   			<form:option value="rings">rings</form:option>
  		 	<form:option value="bangles">bangles</form:option>
  		 	<form:option value="bracelet">bracelet</form:option>
  		 	
  		 	</form:select></td>
			<td><form:errors path="category" cssStyle="color : red;"/></td>
		</tr>
		
		<tr>
			<td>Product Description</td>
			<td><form:input path="description" class="form-control input-lg"/></td>
			<td><form:errors path="description" cssStyle="color : red;"/></td>
		</tr>
		
		<tr>
			<td>Price</td>
			<td><form:input path="price" type="number" class="form-control input-lg"/></td>
			<td><form:errors path="price" cssStyle="color : red;"/></td>
		
		</tr>
		
		<tr>
			<td>Quantity</td>
			<td><form:input path="quantity" type="number" class="form-control input-lg" /></td>
			<td><form:errors path="quantity" cssStyle="color : red;"/></td>
		
		</tr>
		
		
		</table>
		<br>
		<center><input type="submit" class="btn btn-lg button1"  name="action" value="Add" />
				<input type="submit" class="btn btn-lg button1"  name="action" value="Update" /> </center>
		
	</center></form:form>
</div>

</body>
</html>