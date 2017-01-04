<%@include file="header.jsp"%>Payment<%@include file="Header2.jsp"%>
<style>

.payment{
margin-bottom:4px;
}
.cashondel{
font-famiy:Serif;
font-size:18px;
}
</style>
<body ng-app="">
<%@include file="Navigaton.jsp"%>
<br>
<br>
         <center>
  <div class="container">
	<div class="row-fluid">
      <form class="form-horizontal" action="<c:url value="save/order"/>" >
        <fieldset>
          <div id="legend">
            <legend class="">Payment Details</legend>
          </div>
     <div class="col-sm-4">
<div class="container" id="wrap">
      <div class="row">
        <div class="col-md-6 col-md-offset-2">
   
          <!-- Name -->
          <div class="control-group">
            <label class="control-group"  for="username">Card Holder's Name</label>
            <div class="controls">
              <input type="text" id="username" name="username" placeholder="" class="form-control" required/>
            </div>
          </div>
     
          <!-- Card Number -->
          <div class="control-group">
            <label class="control-group" class="form-control" for="email" >Card Number</label>
            <div class="controls">
              <input type="text" id="email" name="email" placeholder="" class="form-control" required/>
            </div>
          </div>
     
          <!-- Expiry-->
          <div class="control-group">
            <label class="control-group" for="password" >Card Expiry Month and Date</label>
            <div class="controls">
            <span>
              <select name="expiry_month" class="form-control" id="expiry_month" required>
                <option></option>
                <option value="01">Jan (01)</option>
                <option value="02">Feb (02)</option>
                <option value="03">Mar (03)</option>
                <option value="04">Apr (04)</option>
                <option value="05">May (05)</option>
                <option value="06">June (06)</option>
                <option value="07">July (07)</option>
                <option value="08">Aug (08)</option>
                <option value="09">Sep (09)</option>
                <option value="10">Oct (10)</option>1
                <option value="11">Nov (11)</option>
                <option value="12">Dec (12)</option>
              </select><br>
              <select class="form-control" name="expiry_year">
                <option value="13">2013</option>
                <option value="14">2014</option>
                <option value="15">2015</option>
                <option value="16">2016</option>
                <option value="17">2017</option>
                <option value="18">2018</option>
                <option value="19">2019</option>
                <option value="20">2020</option>
                <option value="21">2021</option>
                <option value="22">2022</option>
                <option value="23">2023</option>
              </select>
              </span>
            </div>
          </div>
     <div class="control-group">
            <label class="control-group" class="form-control">CCV</label>
            <div class="controls">
              <input type="text" name="number" class="form-control" required/>
            </div>
          </div>
     
         
          <!-- <div class="control-group">
            <label class="control-label"  for="password_confirm">Card CVV</label>
            <div class="controls">
              <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="span2">
            </div>
          </div>  -->
     
          <br>
     
          <!-- Submit -->
          <div class="control-group">
            <div class="controls">
              <input type="submit" class="btn btn-success btn-lg " value="PAY"/>
  </div>
          </div>
   
          <!-- <div class="control-group">
            <label class="control-label"  for="password_confirm">Card CVV</label>
            <div class="controls">
              <input type="password" id="password_confirm" name="password_confirm" placeholder="" class="span2">
            </div>
          </div>  -->
     
         <%-- <br>  <br>  <br>
          <!-- Submit -->
          <div class="control-group">
            <div class="controls">
              
              <a href="<c:url value="save/order"/>" class="btn btn-success">Pay</a>
              
              <!-- <button class="btn btn-success">Pay Now</button>
            --> </div>
          </div> --%>
     
        </fieldset>
      </form>
    </div>
</div>
  </center>
 

<%-- <h1>payemt</h1>
<input type="checkbox" ng-model="myVar"><p class="cashondel">cash on delivery only</p>
<br>
<div class="payment container" ng-show="myVar">
<div class="col-sm-12">
<p class="payment">Total Cash for your Order will Collect it on the time of Delivery</p> 

<a href="<c:url value="save/order"/>" class="btn btn-xs btn-success btn-block">Pay</a>

</div></div> --%>
<%@include file="Footerjsp.jsp"%>