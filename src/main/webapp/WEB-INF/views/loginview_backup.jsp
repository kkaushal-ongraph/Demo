<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: agarw
  Date: 02-06-2017
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Meet or Eat</title>
    <link rel="stylesheet" href="/resources/css/login.css">

</head>

<body class="bg_image">
<div class="login-page">

    <div class="form">

        <form class="register-form">
            <h1 class="title">Register to Continue</h1>
            <input type="text" placeholder="name"/>
            <input type="password" placeholder="password"/>
            <input type="text" placeholder="email address"/>
            <button>create</button>
            <p class="message">Already registered? <a href="#">Sign In</a></p>
        </form>
        <form class="login-form" action="/login" method="post">
            <h1 class="title">Please Login</h1>
            <c:if test="${param.error == 'true'}">
                <span class="error">
                    Login Failed!!!<br />
                    Reason :  ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
                </span>
            </c:if>
            <input type="text" placeholder="username" name="username"/>
            <input type="password" placeholder="password" name="password"/>
            <button>login</button>
            <p class="message">Not registered? <a href="#">Create an account</a></p>
        </form>
    </div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="/resources/js/login.js"></script>

</body>
</html>

