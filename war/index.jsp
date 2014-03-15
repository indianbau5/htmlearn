<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.appengine.api.users.User" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %-->
<html lang="en">
	<%
		UserService userService = UserServiceFactory.getUserService();
    	User user = userService.getCurrentUser();
    	pageContext.setAttribute("user", user);
    %>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link type="text/css" rel="stylesheet" href="/stylesheets/bootstrap.min.css" />
	</head>
	<body>
		<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="/">htmlearn</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="http://tsa.netaro.com">about</a></li>
						<li><a href="/">lessons</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:choose>
							<c:when test="${user == null}">
								<!--Once logged in, redirect user to lessons page-->
								<li><a href="<%= userService.createLoginURL(request.getRequestURI()) %>">sign in</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="<%= userService.createLogoutURL(request.getRequestURI()) %>">sign out</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container">
			<div class="jumbotron">
				<h1>Welcome to htmlearn.net!</h1>
				<p>Learn HTML + CSS and make your own website!</p>
			</div>
		</div>
	</body>
</html>