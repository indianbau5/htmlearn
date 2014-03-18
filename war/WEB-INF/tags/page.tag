<%@ tag import="com.google.appengine.api.users.User" %>
<%@ tag import="com.google.appengine.api.users.UserService" %>
<%@ tag import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="title"    required="true" %>
<%@ attribute name="body"     required="true" %>
<html lang="en">
	<%
		UserService userService = UserServiceFactory.getUserService();
    	User user = userService.getCurrentUser();
    %>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link type="text/css" rel="stylesheet" href="/stylesheets/bootstrap.min.css" />
		<script type="text/javascript" src="/js/jquery.min.js"></script>
		<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
		<script type="text/javascript" src="/js/bootstrap.min.js"></script>
		<title>${title}</title>
	</head>
	<body>
		<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand" href="/">htmlearn</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="http://tsa.bluepichu.com">about</a></li>
						<li><a href="/lessons">lessons</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<c:choose>
							<c:when test="${user == null}">
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
			<c:if test="${user == null}">
				<div class="alert alert-danger alert-dismissable">
					<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
					<strong>Uh oh!</strong> You can't save your progress if you're not logged in!
				</div>
			</c:if>
			${body}
		</div>
	</body>
</html>