<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: agarw
  Date: 09-06-2017
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<title>Project Dashboard</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/resources/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="/resources/css/uniform.css" />
    <link rel="stylesheet" href="/resources/css/select2.css" />
	<link rel="stylesheet" href="/resources/css/matrix-style.css" />
	<link rel="stylesheet" href="/resources/css/matrix-media.css" />
	<link href="/resources/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link rel="stylesheet" href="/resources/css/jquery.gritter.css" />
	<link rel="stylesheet" href="/resources/css/custom.css">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>
<!--Header-part-->
<div id="header">
	<h1><a href="/dashboard">Ongraph Web Project</a></h1>
</div>
<!--close-Header-part-->
<div id="user-nav" class="navbar navbar-fixed-top">
	<ul class="nav">
		<li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome ${pageContext.request.userPrincipal.name}</span><b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a href="#"><i class="icon-user"></i> My Profile</a></li>
				<li class="divider"></li>
				<li><a href="/logout"><i class="icon-key"></i> Log Out</a></li>
			</ul>
		</li>
		<li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Notifications</span> <span class="label label-important">10</span> <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
				<li class="divider"></li>
				<li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
				<li class="divider"></li>
				<li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
				<li class="divider"></li>
				<li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
			</ul>
		</li>
		<li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
		<li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
	</ul>
</div>

<!--start-top-serch-->
<div id="search">
	<input type="text" placeholder="Search here..."/>
	<button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->

<!--sidebar-menu-->
<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
	<ul>
		<li><a href="/dashboard"><i class="icon icon-home"></i> <span>Dashboard</span></a></li>
		<li class="active"> <a href="/users"><i class="icon icon-user"></i> <span>Users</span> <span class="label label-important">3</span></a></li>
	</ul>
</div>

<!--main-container-part-->
<div id="content">
	<!--breadcrumbs-->
	<div id="content-header">
		<div id="breadcrumb"> <a href="/dashboard" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Dashboard</a></div>
	</div>
	<!--End-breadcrumbs-->
	<div class="container-fluid">
		<div class="quick-actions_homepage">
			<ul class="quick-actions">
				<li class="bg_ls"> <a href="/users"> <i class="icon-group"></i><span class="label label-success" id = "total_users">-</span> Total Users </a> </li>
				<li class="bg_lg"> <a href="#"> <i class="icon-thumbs-up"></i><span id = "active_users" class="label label-success">-</span> Active Users </a> </li>
				<li class="bg_lo"> <a href="#"> <i class="icon-thumbs-down"></i><span id = "inactive_users" class="label label-success">-</span> InActive Users </a> </li>
			</ul>
		</div>

		<div class="row-fluid">
			<a class="btn btn-info pull-right" data-toggle="modal" href="#UserDetail"><i class="icon-plus-sign"></i><span>Add User</span></a>
			<div class="modal modal-lg hide" id="UserDetail">
				<div class="modal-dialog">
					<div class="modal-header">
						<h4 class="modal-title">Add a New User
						<a data-dismiss="modal" class="close" type="button"><i class="icon-remove"></i> </a>
						</h4>
					</div>
					<div class="modal-body">
						<div class="row-fluid">
                            <div class="span6">

                                <div class="control-group popup_login">
                                    <label class="control-label" for="firstName">FirstName:*</label>
                                    <div class="controls">
                                        <input type="text" name="username" id="firstName" required="">
                                    </div>
                                </div>
                            </div>
                            <div class="span6">
                                <div class="image_section text-center">
                                    <ul class="thumbnails text-center ">
                                        <li class="span2">
                                            <a>
                                                <img src="http://www.wilwia.com/images/default-user.png" alt="" id="profile" >
                                            </a>
                                            <div class="actions" id = "profile_action">
                                                <a title="" id="upload_link" class="" href="#">
                                                    <i class="icon-pencil"></i> Change
                                                </a>
                                            </div>
                                        </li>
                                    </ul>
                                    <ul class="adit">
                                        <li class="re_send">
                                            <input id="upload" type="file" onChange="readURL(this);"/>
                                        </li>
                                    </ul>
                                </div>

                                <div class="control-group popup_login">
                                    <label class="control-label" for="username">UserName :</label>
                                    <div class="controls">
                                        <input type="text" name="username" id="username" required="">
                                    </div>
                                </div>
                                <div class="control-group popup_login">
                                    <label class="control-label" for="Passwoed">Password :</label>
                                    <div class="controls">
                                        <input type="text" name="username" id="Passwoed" class="" required="">
                                    </div>
                                </div>
                            </div>
                        </div>

					</div>
					<div class="modal-footer">
						<p>Add buttons Submit, Reset</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row-fluid">
			<div class="widget-box">
				<div id="active_title" class="widget-title"><span class="icon">
                <i class="icon-th-large"></i>
            </span>
					<h5>Active Users</h5>
				</div>
				<div class="widget-content nopadding">
					<table id="active_table" class="table table-bordered data-table">
						<thead>
						<tr>
							<th><i class="icon-resize-vertical"></i></th>
							<th>User ID</th>
							<th>Name</th>
							<th>Email</th>
							<th>Phone Number</th>
							<th>Address</th>
							<th>Type</th>
							<th>Status</th>
							<th>Actions</th>
						</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
			</div>
		</div>

		<div class="widget-box">
			<div class="widget-title"> <span class="icon"><i class="icon-th-large"></i></span>
				<h5>Inactive Users</h5>
			</div>
			<div class="widget-content nopadding">
				<table id = "inactive_table" class="table table-bordered data-table">
					<thead>
					<tr>
						<th>Rendering engine</th>
						<th>Browser</th>
						<th>Platform(s)</th>
						<th>Engine version</th>
					</tr>
					</thead>
                    <tbody>
                    <tr class="gradeX">
                        <td>Trident</td>
                        <td>Internet
                            Explorer 4.0</td>
                        <td>Win 95+</td>
                        <td class="center">4</td>
                    </tr>
                    <tr class="gradeC">
                        <td>Trident</td>
                        <td>Internet
                            Explorer 5.0</td>
                        <td>Win 95+</td>
                        <td class="center">5</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Trident</td>
                        <td>Internet
                            Explorer 5.5</td>
                        <td>Win 95+</td>
                        <td class="center">5.5</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Trident</td>
                        <td>Internet
                            Explorer 6</td>
                        <td>Win 98+</td>
                        <td class="center">6</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Trident</td>
                        <td>Internet Explorer 7</td>
                        <td>Win XP SP2+</td>
                        <td class="center">7</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Trident</td>
                        <td>AOL browser (AOL desktop)</td>
                        <td>Win XP</td>
                        <td class="center">6</td>
                    </tr>
                    <tr class="gradeA">
                        <td>Gecko</td>
                        <td>Firefox 1.0</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td class="center">1.7</td>
                    </tr>
                    </tbody>
				</table>
			</div>
		</div>

	</div>
</div>

<!--Footer-part-->

<div class="row-fluid">
	<div id="footer"> 2017 &copy; Meet Or Eat. Brought to you by <a href="http://www.ongraph.com">Ongraph Technologies Private Limited</a> </div>
</div>

<!--end-Footer-part-->

<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/jquery.ui.custom.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>

<script src="/resources/js/jquery.gritter.min.js"></script>
<script src="/resources/js/jquery.validate.js"></script>
<script src="/resources/js/matrix.form_validation.js"></script>
<script src="/resources/js/jquery.uniform.js"></script>
<script src="/resources/js/select2.min.js"></script>
<script src="/resources/js/jquery.dataTables.min.js"></script>
<script src="/resources/js/matrix.js"></script>
<script src="/resources/js/main.js"></script>
<%--<script src="/resources/js/matrix.tables.js"></script>--%>

<script type="text/javascript">
    // This function is called from the pop-up menus to transfer to
    // a different page. Ignore if the value returned is a null string:
    function goPage (newURL) {

        // if url is empty, skip the menu dividers and reset the menu selection to default
        if (newURL != "") {

            // if url is "-", it is this page -- reset the menu:
            if (newURL == "-" ) {
                resetMenu();
            }
            // else, send page to designated URL
            else {
                document.location.href = newURL;
            }
        }
    }

    // resets the menu selection upon entry to this page:
    function resetMenu() {
        document.gomenu.selector.selectedIndex = 2;
    }

    var active_user_list;
    function setActiveUsers(aUsers){
        active_user_list = aUsers;
	}

    function getUserDetailsonLoad(){
		var response;
        $.ajax({

			url : '/users/getUserDetailList',
			dataType : 'json',
			type : 'GET',
			success : function(data){
			    setUserCountonDivLabel(data.total_active_users, data.total_users, data.total_inactive_users);
			    setActiveUsers(data.active_users);
			},

			error : function (error) {

			    alert("error");
            }
		});

	}

	function setUserCountonDivLabel(a, b, c){

        $('#active_users').html(a);
        $('#total_users').html(b);
        $('#inactive_users').html(c);
	}
    $(document).ready(function () {

        getUserDetailsonLoad();
        alert(JSON.stringify(active_user_list));

    })

</script>
</body>
</html>
