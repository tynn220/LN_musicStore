<%@include file="/common/header.jsp" %>

<html>
<%@include file="/common/header.jsp" %>

<body>

<%@include file="/common/nav-bar.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Here is the detail information of the product!</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/template/img/${productdetail.productId}.png" /> " alt="image"
                         style="width:100%" height="350px"/>
                </div>

                <div class="col-md-5">
                    <h3>${productdetail.productName}</h3>
                    <p>${productdetail.productDescription}</p>
                    <p>
                        <strong>Manufacturer</strong> : ${productdetail.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong> : ${productdetail.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong> : ${productdetail.productCondition}
                    </p>
                    <p>
                        <strong>Price</strong> : ${productdetail.productPrice}
                    </p>
                    <h4>${productdetail.productPrice}</h4>


                    <br>

                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/product/productList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl" >
                        <a href="<c:url value="${url}" />" class="btn btn-default">Back</a>
                        <a href="#" class="btn btn-warning btn-large"
                           ng-click="addToCart('${productId}')"><span
                                class="glyphicon glyphicon-shopping-cart"></span>Order
                            Now</a>
                        <a href="<c:url value="/customer/cart/" />"
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
                    </p>

                </div>
            </div>
        </div>
    </div>
</div>
    <script src="<c:url value="/template/js/controller.js"/> "></script>
    <%@include file="/common/footer.jsp" %>


</body>

</html>
