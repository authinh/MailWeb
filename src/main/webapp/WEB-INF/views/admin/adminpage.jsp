<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<!-- gethead -->
${gethead}
</head>
<body>
	<!-- menubar -->
	${getmenubar}
	<div id="wrapper">
		<!-- /. WRAPPER  -->
		<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
		<!-- JQUERY SCRIPTS get footer -->
		${getfooter}
		<div id="page-wrapper">
			<div id="page-inner">
				<div class="row">
					<div class="col-md-12">
						<h2>Blank Page</h2>
						<h5>Welcome Jhon Deo , Love to see you back.</h5>
						${categorytable}
					</div>
				</div>
				<!-- /. ROW  -->
				<hr />

			</div>
			<!-- /. PAGE INNER  -->
		</div>
		<!-- /. PAGE WRAPPER  -->
	</div>
</body>
</html>
