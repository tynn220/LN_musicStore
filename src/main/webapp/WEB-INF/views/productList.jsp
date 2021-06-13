<%@include file="/common/header.jsp"%>


<html>
<%@include file="/common/header.jsp"%>
<body>

<%@include file="/common/nav-bar.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Checkout all the awesome products available new!</p>
        </div>

        <table class="table table-striped table-hover">

            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/template/img/${product.productId}.png"/>" alt="image" style="width: 100%; height: 100px"></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td><a href="<c:url value="/product/productDetail/${product.productId}"/> ">
                        <span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>

        <%@include file="/common/footer.jsp"%>

</body>


</html>
