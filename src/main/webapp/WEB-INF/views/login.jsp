<%@include file="/common/nav-bar.jsp" %>


<html>
<%@include file="/common/header.jsp" %>

<body>

<div class="container-wrapper">
    <div class="login-container">
        <div id="login-box">
            <h3>Login with username and password</h3>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>

            <form name="loginForm" action="<c:url value="/j_spring_security_check"/> " method="post">
                <c:if test="${not empty error}">
                    <div class="error" style="color: red">${error}</div>
                </c:if>

                <div class="form-group">
                    <label for="username">Username: </label>
                    <input type="text" id="username" name="username" class="form-control"/>
                </div>
                <div class="form-group">
                    <label for="password">Password: </label>
                    <input type="password" id="password" name="password" class="form-control"/>
                </div>

                <input type="submit" value="Submit" class="btn btn-success">

                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            </form>
        </div>
    </div>
</div>


<%@include file="/common/footer.jsp" %>

</body>


</html>




