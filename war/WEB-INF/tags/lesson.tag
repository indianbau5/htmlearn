<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ attribute name="name"   required="true" %>
<%@ attribute name="lesson" required="true" %>
<t:page title="${name}">
	<jsp:attribute name="body">
		<div class="row">
			<div class="col-lg-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						${name}
					</div>
  					<div class="panel-body">
  						${lesson}
  					</div>
  				</div>
			</div>
  			<div class="col-lg-4">
  				<ul class="nav nav-pills" id="tabs">
  					<li>HTML</li>
  					<li>CSS</li>
  				</ul>
  			</div>
  			<div class="col-lg-4">
  			</div>
		</div>
	</jsp:attribute>
</t:page>