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
          <h1>Thank you for your business!</h1>
          <p>Your order will be shipped in two business days!</p>
        </div>
      </div>
    </section>

    <section class="container">

      <p>
        <a href="<spring:url value="/" />" class="btn btn-default">OK</a>
      </p>




    </section>
  </div>
</div>

<script src="<c:url value="/template/js/controller.js"/> "></script>
<%@include file="/common/footer.jsp" %>
</body>
</html>
