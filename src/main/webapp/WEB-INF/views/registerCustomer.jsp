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
            <h1>Register Account</h1>
            <p class="lead">Please fill your information in the form below!</p>
        </div>

        <form:form method="post" commandName="customer"
                   action="${pageContext.request.contextPath}/register">

            <h3>Basic information</h3>
            <div class="form-group">
                <label for="name">Name</label><form:errors path="customerName" cssClass="error"/>
                <form:input path="customerName" id="name" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="email">Email</label><span style="color: red">  ${emailMsg}</span>
                <form:errors path="customerEmail" cssClass="error"/>
                <form:input path="customerEmail" id="email" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="phone">Phone number</label>
                <form:input path="customerPhone" id="phone" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="username">Username</label><span style="color: red">  ${usernameMsg}</span>
                <form:errors path="username" cssClass="error"/>
                <form:input path="username" id="username" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="password">Password</label><form:errors path="password" cssClass="error"/>
                <form:password path="password" id="password" cssClass="form-control"/>
            </div>

            <h3>Billing Address</h3>

            <div class="form-group">
                <label for="apartment">Apartment Number</label>
                <form:input path="billingAddress.apartmentNumber" id="apartment" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="billingAddress">Street Name</label>
                <form:input path="billingAddress.streetName" id="billingAddress" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="city">City</label>
                <form:input path="billingAddress.city" id="city" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="state">State</label>
                <form:input path="billingAddress.state" id="state" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="country">Country</label>
                <form:input path="billingAddress.country" id="country" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="zipcode">Zipcode</label>
                <form:input path="billingAddress.zipCode" id="zipcode" cssClass="form-control"/>
            </div>

            <h3>Shipping Address</h3>

            <div class="form-group">
                <label for="apartment">Apartment Number</label>
                <form:input path="shippingAddress.apartmentNumber" id="apartment" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="shippingAddress">Street Name</label>
                <form:input path="shippingAddress.streetName" id="shippingAddress" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="shippingcity">City</label>
                <form:input path="shippingAddress.city" id="shippingcity" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="shippingstate">State</label>
                <form:input path="shippingAddress.state" id="shippingstate" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="shippingcountry">Country</label>
                <form:input path="shippingAddress.country" id="shippingcountry" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="shippingzipcode">Zipcode</label>
                <form:input path="shippingAddress.zipCode" id="shippingzipcode" cssClass="form-control"/>
            </div>

            <br><br>
            <input type="submit" class="btn btn-primary" value="Submit">
            <a href="<c:url value="/" /> " class="btn btn-warning">Cancel</a>

        </form:form>

        <%@include file="/common/footer.jsp" %>
    </div>

</div>


</body>
</html>
