<%@include file="/common/taglib.jsp" %>

<html>
<%@include file="/common/header.jsp" %>
<style>
    .error{color:red}
</style>
<body>
<%@include file="/common/nav-bar.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Addition</h1>
            <p class="lead">Try to add something!</p>
        </div>

        <form:form method="post" commandName="addProduct" enctype="multipart/form-data"
                   action="${pageContext.request.contextPath}/admin/product/addProduct">

            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="productName" id="name" cssClass="form-control"/>
                <form:errors path="productName" cssClass="error"/>
            </div>
            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                                 value="instrument"/> Instrument</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="record"/>
                    Record</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category"
                                                                 value="accessory"/> Accessory</label>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="productDescription" id="description" cssClass="form-control"/>
                <form:errors path="productName" cssClass="error"/>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <form:input path="productPrice" id="price" cssClass="form-control"/>
                <form:errors path="productPrice" cssClass="error"/>
            </div>
            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>
                    New</label>
                <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/>
                    Used</label>
            </div>
            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active"/>
                    Active</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive"/>
                    Inactive</label>
            </div>
            <div class="form-group">
                <label for="unit">Unit In Stock</label>
                <form:input path="unitInStock" id="unit" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" cssClass="form-control"/>
            </div>
            <div class="form-group">
                <label for="img" class="control-label">Choose product picture</label>
                <form:input path="productImage" id="img" cssClass="form:input-large" type="file"/>
            </div>


            <br><br>
            <input type="submit" class="btn btn-primary" value="Submit">
            <a href="<c:url value="/admin/productInventory" /> " class="btn btn-warning">Cancel</a>


        </form:form>

        <%@include file="/common/footer.jsp" %>
    </div>

</div>


</body>
</html>
