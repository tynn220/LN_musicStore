<%@include file="/common/taglib.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<html>
<%@include file="/common/header.jsp" %>
<style>
    .error {
        color: red
    }
</style>
<body>

<%@include file="/common/nav-bar.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Order</h1>
            <p class="lead">Order confirmation</p>
        </div>

        <div class="container">

            <div class="row">

                <%--@elvariable id="order" type=""--%>
                <form:form method="post" commandName="order" cssClass="form-control">
                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                        <div class="text-center">
                            <h1>Receipt</h1>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong>
                                    ${order.cart.customer.shippingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.shippingAddress.city},  ${order.cart.customer.shippingAddress.state}
                                    <br>
                                        ${order.cart.customer.shippingAddress.country},  ${order.cart.customer.shippingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: <fmt:formatDate type="date" value="${now}"/></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong>
                                        ${order.cart.customer.billingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.billingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.billingAddress.city},  ${order.cart.customer.billingAddress.state}
                                    <br>
                                        ${order.cart.customer.billingAddress.country},  ${order.cart.customer.billingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                        </div>
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>#</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-9" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-9" style="text-align: center">${cartItem.product.productPrice}</td>
                                        <td class="col-md-9" style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total:</strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>$ ${order.cart.grandTotal}</strong></h4>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <input type="hidden" name="_flowExecutionKey">

                        <br><br>
                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Back</button>
                        <input type="submit" class="btn btn-primary" value="Submit Order"
                               name="_eventId_orderConfirmed"/>
                        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

                    </div>
                </form:form>
            </div>
        </div>

        <%@include file="/common/footer.jsp" %>
    </div>

</div>


</body>
</html>

