<%@include file="/common/header.jsp"%>


<html>
<%@include file="/common/header.jsp"%>
<body>

<%@include file="/common/nav-bar.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Management</h1>

            <p class="lead">Customer management page!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Phone number</th>
                <th>Username</th>
                <th>Status</th>
            </tr>
            </thead>


            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>

<%@include file="/common/footer.jsp"%>

</body>


</html>
