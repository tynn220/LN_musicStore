<%@include file="/common/header.jsp" %>

<html>

<body>

<%@include file="/common/nav-bar.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator Page:</h1>

            <p class="lead">This site for the admin page!</p>
        </div>


        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h3>
            Welcome! ${pageContext.request.userPrincipal.name} | <a href="
                        <c:url value="/j_spring_security_logout"/> "> Logout</a>
        </h3>
        </c:if>

        <br>

        <h3>
            <a href="<c:url value="/admin/productInventory"/> ">Product Inventory</a>
        </h3>

        <p>Here you can view and modify the product inventory</p>

        <br>

        <h3>
            <a href="<c:url value="/admin/customer"/> ">Customer Management</a>
        </h3>

        <p>Here you can view all customer information</p>

        <%@include file="/common/footer.jsp" %>

</body>

</html>

