<%@include file="/common/taglib.jsp" %>
" %>
<html>
<%@include file="/common/header.jsp" %>

<body>

<div class="container-wrapper">
  <div class="container">
    <section>
      <div class="jumbotron">
        <div class="container">
          <h1 class="alert alert-danger">Checkout Canceled</h1>
          <p>Checkout process is canceled, continue shopping!</p>
        </div>
      </div>
    </section>

    <section class="container">

      <p>
        <a href="<spring:url value="/product/productList" />" class="btn btn-default">Products</a>
      </p>




    </section>
  </div>
</div>

<script src="<c:url value="/template/js/controller.js"/> "></script>
<%@include file="/common/footer.jsp" %>
</body>
</html>
