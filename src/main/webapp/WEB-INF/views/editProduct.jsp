<%@include file="/common/taglib.jsp" %>


<html>
<%@include file="/common/header.jsp" %>

<style>
    .error{color: red}
</style>

<body>

<%@include file="/common/nav-bar.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>

            <p class="lead">Edit your product here!</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct"
                   method="post" commandName="editproduct" enctype="multipart/form-data">
            <form:hidden path="productId" value="${editproduct.productId}"/>
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-control"/>
            <form:errors path="productName" cssClass="error"/>
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument"/>Instrument</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                             value="record"/>Record</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="accessory"/>Accessory</label>

        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-control"/>
            <form:errors path="productName" cssClass="error"/>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-control"/>
            <form:errors path="productName" cssClass="error"/>
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="new"/>New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition"
                                                             value="used"/>Used</label>

        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="active"/>Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status"
                                                             value="inactive"/>Inactive</label>

        </div>

        <div class="form-group">
            <label for="unitinstock">Unit In Stock</label>
            <form:input path="unitInStock" id="unitinstock" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-control"/>
        </div>

        <div class="form-group">
            <label for="productImage" class="control-label">Upload product picture</label>
            <form:input path="productImage" id="productImage" class="form:input-large" type="file"/>
        </div>

        <br><br>

        <input type="submit" value="submit" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory/" /> " class="btn btn-default">Cancel</a>

        </form:form>


        <%@include file="/common/footer.jsp" %>
</body>

</html>

