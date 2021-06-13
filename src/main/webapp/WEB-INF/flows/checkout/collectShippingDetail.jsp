<%@include file="/common/taglib.jsp" %>

<html>
<%@include file="/common/header.jsp" %>
<style>
  .error{color:red}
</style>
<body>

<%@include file="/common/nav-bar.jsp"%>

<div class="container-wrapper">
  <div class="container">
    <div class="page-header">
      <h1>Customer</h1>
      <p class="lead">Customer details</p>
    </div>

    <form:form method="post" commandName="order" cssClass="form-control">

      <h3>Basic information</h3>
      <div class="form-group">
        <label for="name">Name</label>
        <form:input path="cart.customer.customerName" id="name" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="email">Email</label>
        <form:input path="customerEmail" id="email" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="phone">Phone number</label>
        <form:input path="cart.customer.customerPhone" id="phone" cssClass="form-control"/>
      </div>

      <h3>Shipping Address</h3>

      <div class="form-group">
        <label for="apartment">Apartment Number</label>
        <form:input path="cart.customer.shippingAddress.apartmentNumber" id="apartment" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="shippingAddress">Street Name</label>
        <form:input path="cart.customer.shippingAddress.streetName" id="shippingAddress" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="city">City</label>
        <form:input path="cart.customer.shippingAddress.city" id="city" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="state">State</label>
        <form:input path="cart.customer.shippingAddress.state" id="state" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="country">Country</label>
        <form:input path="cart.customer.shippingAddress.country" id="country" cssClass="form-control"/>
      </div>
      <div class="form-group">
        <label for="zipcode">Zipcode</label>
        <form:input path="cart.customer.shippingAddress.zipCode" id="zipcode" cssClass="form-control"/>
      </div>

      <input type="hidden" name="_flowExecutionKey">

      <br><br>
      <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>
      <input type="submit" class="btn btn-primary" value="Next" name="_eventId_shippingDetailCollected"/>
      <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

    </form:form>

    <%@include file="/common/footer.jsp" %>
  </div>

</div>


</body>
</html>

