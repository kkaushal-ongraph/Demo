<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: agarw
  Date: 07-06-2017
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Meet Or Eat Dashboard Login</title><meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
    
    <link rel="stylesheet" href="/resources/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="/resources/css/matrix-login.css" />
    <link rel="stylesheet" href="/resources/css/uniform.css" />
    <link rel="stylesheet" href="/resources/css/select2.css" />
    <link rel="stylesheet" href="/resources/css/matrix-media.css" />
    <link rel="stylesheet" href="/resources/css/moe_custom_styling/login.css"/>
    <link href="/resources/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>

</head>
<body class="bg_image">
<div id="overlay"></div>
<div id="loginbox" class="login-box-shadow">
    <form id="loginform" class="form-vertical" action="/login" method="post">
        <div class="control-group text-center color-white"> <h3>Admin Login</h3></div>
        <c:if test="${param.error == 'true'}">
            <div class="control-group">
                <div class="alert alert-error alert-block text-center">
                    <h4>Login Failed.</h4>
                    Bad Credentials.Please Try Again.
                </div>
            </div>
        </c:if>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lg"><i class="icon-user"> </i></span><input id="username" type="email" placeholder="Username" name="username"/>
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_ly"><i class="icon-lock"></i></span><input id="password" type="password" placeholder="Password" name="password"/>
                </div>
            </div>
        </div>
        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">Lost password?</a></span>
            <span class="pull-right"><input type="submit" class="btn btn-success" value="Sign-in"/></span>
        </div>
    </form>
    <form id="recoverform" action="#" class="form-vertical">
        <p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>

        <div class="controls">
            <div class="main_input_box">
                <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
            </div>
        </div>

        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
            <span class="pull-right"><a class="btn btn-info"/>Reecover</a></span>
        </div>
    </form>
</div>
<script type="application/javascript">
    // Form Validation
    /*$("#loginform").validate({
        rules:{
            required:{
                required:true
            },
            usernmae:{
                required:true
            },
            email:{
                required:true,
                email: true
            },
            date:{
                required:true,
                date: true
            },
            url:{
                required:true,
                url: true
            },
            password:{
                required:true,
                maxlength:20
            }
        },
        errorClass: "help-inline",
        errorElement: "span",
        highlight:function(element, errorClass, validClass) {
            $(element).parents('.control-group').addClass('error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents('.control-group').removeClass('error');
            $(element).parents('.control-group').addClass('success');
        }
    });*/
</script>
<script type="text/javascript" src="/resources/js/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.ui.custom.js"></script>
<script type="text/javascript" src="/resources/js/jquery.uniform.js"></script>
<script type="text/javascript" src="/resources/js/select2.min.js"></script>
<script type="text/javascript" src="/resources/js/matrix.login.js"></script>
<script type="text/javascript" src="/resources/js/jquery.validate.js"></script>
<script type="text/javascript" src="/resources/js/matrix.form_validation.js"></script>
</body>

</html>

