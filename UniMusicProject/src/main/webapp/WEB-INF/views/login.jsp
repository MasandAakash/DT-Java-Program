<%@ include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
<style>
#loginForm
{
margin-top: 100px;
height: 400px;
    width: 40%;
    text-align: center;
}

.footer
{
 background-color: black;
 font-size: 11px;
 padding: 20px;
 color: #eee;
 text-align: center;
 margin-bottom: 0;
 margin-top: 30px;
 
 
}
</style>

</head>
<body>
<div class="container">
    <div class="container" id="loginForm" >
        
            <h2>Login</h2>

            <c:if test="${not empty msg}">
                <div class="msg">${msg}</div>
            </c:if>
<!--  j_spring_security_check"-->

            <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">

                <c:if test="${not empty error}">
                    <div class="error" style="color: #ff0000;">${error}</div>
                </c:if>

                <div class="form-group">
                    <label for="username">User: </label>
                    <input type="text" id="username" name="username" class="form-control" />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" />
                </div>
                <input type="submit" value="Login" class="btn btn-primary">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
        
    </div>
</div>

</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
