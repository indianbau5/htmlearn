<!--%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %-->
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ attribute name="name"   required="true" %>
<%@ attribute name="lesson" required="true" %>
<t:page>
	<jsp:attribute name="head">
		<title>${name}</title>
	</jsp:attribute>
	<jsp:attribute name="body">
		<div class="row">
			<div class="col-md-4">
				${lesson}
			</div>
  			<div class="col-md-4">
  				<!--Code editor-->
  			</div>
  			<div class="col-md-4">
  				<!--Iframe-->
  			</div>
		</div>
	</jsp:attribute>
</t:page>