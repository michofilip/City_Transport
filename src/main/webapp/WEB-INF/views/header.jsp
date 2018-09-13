<!DOCTYPE html>
<html lang="en">


<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

<div id="wrapper">

<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/">City Transport</a>
    </div>
    <!-- /.navbar-header -->

    <%--<ul class="nav navbar-top-links navbar-right">--%>
        <%--<li class="dropdown">--%>
            <%--<a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
                <%--<i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>--%>
            <%--</a>--%>
            <%--<ul class="dropdown-menu dropdown-messages">--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<strong>John Smith</strong>--%>
                            <%--<span class="pull-right text-muted">--%>
                                        <%--<em>Yesterday</em>--%>
                                    <%--</span>--%>
                        <%--</div>--%>
                        <%--<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<strong>John Smith</strong>--%>
                            <%--<span class="pull-right text-muted">--%>
                                        <%--<em>Yesterday</em>--%>
                                    <%--</span>--%>
                        <%--</div>--%>
                        <%--<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<strong>John Smith</strong>--%>
                            <%--<span class="pull-right text-muted">--%>
                                        <%--<em>Yesterday</em>--%>
                                    <%--</span>--%>
                        <%--</div>--%>
                        <%--<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a class="text-center" href="#">--%>
                        <%--<strong>Read All Messages</strong>--%>
                        <%--<i class="fa fa-angle-right"></i>--%>
                    <%--</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<!-- /.dropdown-messages -->--%>
        <%--</li>--%>
        <%--<!-- /.dropdown -->--%>
        <%--<li class="dropdown">--%>
            <%--<a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
                <%--<i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>--%>
            <%--</a>--%>
            <%--<ul class="dropdown-menu dropdown-tasks">--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<p>--%>
                                <%--<strong>Task 1</strong>--%>
                                <%--<span class="pull-right text-muted">40% Complete</span>--%>
                            <%--</p>--%>
                            <%--<div class="progress progress-striped active">--%>
                                <%--<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40"--%>
                                     <%--aria-valuemin="0" aria-valuemax="100" style="width: 40%">--%>
                                    <%--<span class="sr-only">40% Complete (success)</span>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<p>--%>
                                <%--<strong>Task 2</strong>--%>
                                <%--<span class="pull-right text-muted">20% Complete</span>--%>
                            <%--</p>--%>
                            <%--<div class="progress progress-striped active">--%>
                                <%--<div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20"--%>
                                     <%--aria-valuemin="0" aria-valuemax="100" style="width: 20%">--%>
                                    <%--<span class="sr-only">20% Complete</span>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<p>--%>
                                <%--<strong>Task 3</strong>--%>
                                <%--<span class="pull-right text-muted">60% Complete</span>--%>
                            <%--</p>--%>
                            <%--<div class="progress progress-striped active">--%>
                                <%--<div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60"--%>
                                     <%--aria-valuemin="0" aria-valuemax="100" style="width: 60%">--%>
                                    <%--<span class="sr-only">60% Complete (warning)</span>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<p>--%>
                                <%--<strong>Task 4</strong>--%>
                                <%--<span class="pull-right text-muted">80% Complete</span>--%>
                            <%--</p>--%>
                            <%--<div class="progress progress-striped active">--%>
                                <%--<div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80"--%>
                                     <%--aria-valuemin="0" aria-valuemax="100" style="width: 80%">--%>
                                    <%--<span class="sr-only">80% Complete (danger)</span>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a class="text-center" href="#">--%>
                        <%--<strong>See All Tasks</strong>--%>
                        <%--<i class="fa fa-angle-right"></i>--%>
                    <%--</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<!-- /.dropdown-tasks -->--%>
        <%--</li>--%>
        <%--<!-- /.dropdown -->--%>
        <%--<li class="dropdown">--%>
            <%--<a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
                <%--<i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>--%>
            <%--</a>--%>
            <%--<ul class="dropdown-menu dropdown-alerts">--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<i class="fa fa-comment fa-fw"></i> New Comment--%>
                            <%--<span class="pull-right text-muted small">4 minutes ago</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<i class="fa fa-twitter fa-fw"></i> 3 New Followers--%>
                            <%--<span class="pull-right text-muted small">12 minutes ago</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<i class="fa fa-envelope fa-fw"></i> Message Sent--%>
                            <%--<span class="pull-right text-muted small">4 minutes ago</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<i class="fa fa-tasks fa-fw"></i> New Task--%>
                            <%--<span class="pull-right text-muted small">4 minutes ago</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a href="#">--%>
                        <%--<div>--%>
                            <%--<i class="fa fa-upload fa-fw"></i> Server Rebooted--%>
                            <%--<span class="pull-right text-muted small">4 minutes ago</span>--%>
                        <%--</div>--%>
                    <%--</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li>--%>
                    <%--<a class="text-center" href="#">--%>
                        <%--<strong>See All Alerts</strong>--%>
                        <%--<i class="fa fa-angle-right"></i>--%>
                    <%--</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<!-- /.dropdown-alerts -->--%>
        <%--</li>--%>
        <%--<!-- /.dropdown -->--%>
        <%--<li class="dropdown">--%>
            <%--<a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
                <%--<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>--%>
            <%--</a>--%>
            <%--<ul class="dropdown-menu dropdown-user">--%>
                <%--<li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>--%>
                <%--</li>--%>
                <%--<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>--%>
                <%--</li>--%>
                <%--<li class="divider"></li>--%>
                <%--<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>--%>
                <%--</li>--%>
            <%--</ul>--%>
            <%--<!-- /.dropdown-user -->--%>
        <%--</li>--%>
        <%--<!-- /.dropdown -->--%>
    <%--</ul>--%>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">

                <sec:authorize access="hasRole('ADMIN')">
                    <c:set var="logged" value="true"></c:set>
                </sec:authorize>

                <%--<sec:authorize access="hasRole('GUEST')">--%>
                <%--<li>akjjhaksfhgakjfhakdjfhakjdfhakjdfjdfh</li>--%>
                <%--</sec:authorize>--%>

                <c:if test="${!logged}">
                    <li><a href="/login"><i class="fa fa-dashboard fa-fw"></i> Login</a></li>
                </c:if>

                <sec:authorize access="hasRole('ADMIN')">
                    <li><a href="/admin/logout"><i class="fa fa-dashboard fa-fw"></i> Logout</a></li>
                    <%--<li>--%>
                        <%--&lt;%&ndash;<a href="/logout"><i class="fa fa-dashboard fa-fw"></i> Logout</a>&ndash;%&gt;--%>
                        <%--<form action="/logout" method="post">--%>
                            <%--<input type="submit" value="Logout"/>--%>
                        <%--</form>--%>
                    <%--</li>--%>
                </sec:authorize>
                <li><a href="/"><i class="fa fa-dashboard fa-fw"></i> Home</a></li>
                <li><a href="/announcements/"><i class="fa fa-dashboard fa-fw"></i> Announcements</a></li>
                <sec:authorize access="hasRole('ADMIN')">
                    <li><a href="/buses/"><i class="fa fa-dashboard fa-fw"></i> Buses</a></li>
                </sec:authorize>
                <li><a href="/busstops/"><i class="fa fa-dashboard fa-fw"></i> Busstops</a></li>
                <li><a href="/lines/"><i class="fa fa-dashboard fa-fw"></i> Lines</a></li>
                <%--<li><a href="/routes/"><i class="fa fa-dashboard fa-fw"></i> Routes</a></li>--%>
                <sec:authorize access="hasRole('ADMIN')">
                    <li><a href="/rides/"><i class="fa fa-dashboard fa-fw"></i> Rides</a></li>
                </sec:authorize>

            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav>
<div id="page-wrapper">
<%--<c:if test="${not empty message}">--%>
<c:if test="${message != null}">
    <div class="alert alert-success">
            ${message}
    </div>
</c:if>