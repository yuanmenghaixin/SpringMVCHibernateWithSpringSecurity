<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>My Rafting Store</title>
<!-- Angular JS -->
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<%--Jquery--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/global.js"></script>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"  rel="stylesheet">
<!-- Carousel CSS -->
<link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">
<!-- Main CSS -->
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
<!-- DataTables CSS -->
<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">

</head>
<!-- NAVBAR
================================================== -->
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="<c:url value="/"/>">My Rafting Store</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-text">
					<li><a href="<c:url value="/"/>">Home</a></li>
					<li><a href="<c:url value="/product/productList/all" />">Products</a></li>
					<li><a href="<c:url value="/about" />">About Us</a></li>
				</ul>
				
				<ul class="nav navbar-nav navbar-text-right pull-right">
					<sec:authorize access="authenticated" var="authenticated"></sec:authorize>
					<c:choose>
						<c:when test="${authenticated}">
							<li class="navbar-text">Welcome <sec:authentication property="name" /></li>
							<li><a href="<c:url value="/logout" />">Logout</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="<spring:url value="/login/"/>">Sign In</a></li>
							<li><a href="<c:url value="/newuser" />">Register</a></li>
						</c:otherwise>
					</c:choose>
					<sec:authorize access="hasRole('USER')">
						<li><a href="<c:url value="/customer/cart" />">Cart</a></li>
					</sec:authorize>
					<sec:authorize access="hasRole('ADMIN')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Admin <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="<c:url value="/admin" />">Admin page</a></li>
							<li><a href="<c:url value="/newuser" />">Add User</a></li>
							<li><a href="<c:url value="/list" />">Manage Users</a></li>
							<li><a href="<c:url value="/admin/productInventory" />">Product Inventory</a></li>
							<li><a href="#">Something else here</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Separated link</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">One more separated link</a></li>
						</ul>
					</li>
					</sec:authorize>
				</ul>
			</div>
            </div>
        </nav>
