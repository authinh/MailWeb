
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>



<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="resources/css/mycss.css">
<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4">

				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">List Contact</h3>
					</div>
					<ul id="contactList" class="list-group">
						<li class="list-group-item">
							<div class="row">
								<div class="col-md-10">Au Van Thinh</div>
								<div class="col-md-2">
									<input type="checkbox" class="badgebox"> <input
										type="text" style="display: none;" value="1" class="badgebox">
								</div>

							</div>

						</li>
						<li class="list-group-item">
							<div class="row">
								<div class="col-md-10">Au Van Thinh 2</div>
								<div class="col-md-2">
									<input type="checkbox" class="badgebox"> <input
										type="text" style="display: none;" value="2" class="badgebox">
								</div>

							</div>

						</li>
					</ul>
				</div>

			</div>
			<div class="col-md-8">
				<div class="form-area">
					<form role="form">
						<br style="clear: both">
						<h3 style="margin-bottom: 25px; text-align: center;">Email
							Form</h3>



						<div class="form-group">
							<input id="subject" type="text" class="form-control" id="subject"
								name="subject" placeholder="Subject" required>
						</div>
						<div class="form-group">
							<textarea id="content" class="form-control" type="textarea"
								id="message" placeholder="Message" maxlength="140" rows="7"></textarea>

						</div>

						<input type="button" id="sendMail"
							class="btn btn-primary pull-right" value="Send Mails" />
					</form>
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript" src="resources/js/myjavascript.js" ></script>
<script type="text/javascript" src="resources/js/jquery.js" ></script>
</body>

</html>
