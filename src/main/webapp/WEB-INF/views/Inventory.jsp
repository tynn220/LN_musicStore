<%@include file="/common/header.jsp"%>


<html>
<%@include file="/common/header.jsp"%>
<body>
<%@include file="/common/nav-bar.jsp"%>
<div class="container-wrapper">

    <div class="container">
        <div class="page-header">
            <h1>Product Inventory</h1>
            <p class="lead">This is the product inventory</p>
            <h3><a href="<c:url value="/admin/product/addProduct"/> ">
                <span class="glyphicon glyphicon-hand-right"></span> Add New Product</a></h3>
        </div>

        <table class="table table-hover table-striped">
            <thead>
                <tr class="bg-success">
                    <th>Photo Thumbs</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Condition</th>
                    <th>Price</th>
                    <th></th>
                </tr>
            </thead>
                <c:forEach items="${productListInventory}" var="productInventory">
                <tr>
                    <td><img src="<c:url value="/template/img/${productInventory.productId}.png"/> " alt="image" style="width: 100%;height: 100px"></td>
                    <td>${productInventory.productName}</td>
                    <td>${productInventory.productCategory}</td>
                    <td>${productInventory.productCondition}</td>
                    <td>${productInventory.productPrice} USD</td>
                    <td>
                        <a href="<c:url value="/product/productDetail/${productInventory.productId}"/>">
                            <span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${productInventory.productId}" />">
                            <span class="glyphicon glyphicon-remove-sign"></span></a>
                        <a href="<spring:url value="/admin/product/editProduct/${productInventory.productId}" />">
                            <span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                </tr>
                </c:forEach>

        </table>

    </div>
</div>


<%@include file="/common/footer.jsp"%>
</body>

</html>
