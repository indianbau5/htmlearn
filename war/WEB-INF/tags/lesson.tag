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
  				<textarea id="html">
  					<!--This is where a html editor would be-->
  					<!--I decided to not use codemirror b/c it's horrendous compared to ace-->
  				</textarea>
  			</div>
  			<div class="col-lg-4">
  				<textarea id="css">
  					<!--This is where a css editor would be-->
  					<!--I decided to not use codemirror b/c it's horrendous compared to ace-->
				</textarea>
  			</div>
		</div>
		<!--A modal will appear with the rendered code once the users submit. an iframe with sandbox-->
	</jsp:attribute>
</t:page>