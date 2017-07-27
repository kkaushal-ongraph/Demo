<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="/resources/img/apple-icon.png" />
	<link rel="icon" type="image/png" href="/resources/img/favicon.png" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Project Dashboard</title>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />
	<!-- Bootstrap core CSS     -->
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet" />
	<!--  Material Dashboard CSS    -->
	<link href="/resources/css/material-dashboard.css" rel="stylesheet"/>
    <link href="/resources/css/custom.css" rel="stylesheet"/>

	<!--  CSS for Demo Purpose, don't include it in your project     -->
	<%--TODO: Removing the following demo css--%>
	<link href="/resources/css/demo.css" rel="stylesheet" />

	<!--     Fonts and icons     -->
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons' rel='stylesheet' type='text/css'>
</head>
<body>
	<div class="wrapper">
        <div class="sidebar" data-color="purple" data-image="/resources/img/sidebar-1.jpg">
            <!-- Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"
                 Tip 2: you can also add an image using data-image tag
            -->
            <div class="logo">
                <a href="http://www.ongraph.com" class="simple-text text-size-16">
                    ${pageContext.request.userPrincipal.name}
                </a>
            </div>

            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li>
                        <a href="#" id="dashboard" class="color-green">
                            <i class="material-icons">dashboard</i>
                            <p>Dashboard</p>
                        </a>
                        <div class="card ca" id="DashboardItems">
                            <ul class="nav">
                                <li class="active">
                                    <a href="#"> Home </a></li>
                                <li><a href="#">Users</a></li>
                                <li><a href="#">Restaurant</a></li>
                            </ul>
                        </div>
                    </li>

                    <li>
                        <a href="/users">
                            <i class="material-icons">wc</i>
                            <p>User Profile</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-panel">
            <%@include file="header.jsp"%>
        </div>
    </div>

</body>
<!--   Core JS Files   -->
<script src="/resources/js/jquery-3.1.0.min.js" type="text/javascript"></script>
<script src="/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/js/material.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="/resources/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="/resources/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>

<!-- Material Dashboard javascript methods -->
<script src="/resources/js/material-dashboard.js"></script>

<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="/resources/js/demo.js"></script>

<script type="text/javascript">
    $(document).ready(function(){

        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();

        $('#dashboard').click(function(){
            $('#DashboardItems').toggle();
        });
    });
</script>
</html>