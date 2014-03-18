<%@ page import="java.io.File" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:page title="Lessons">
	<jsp:attribute name="body">
		<div class="list-group">
			<c:forEach items="${lessons}" var="lesson">
    			<a href="/lessons/${lesson.key}" class="list-group-item">${lesson.value}</a>
    		</c:forEach>
		</div>
	</jsp:attribute>
</t:page>