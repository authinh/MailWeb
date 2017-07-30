<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-default navbar-cls-top " role="navigation"
	style="margin-bottom: 0">
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".sidebar-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="index.html">Binary admin</a>
	</div>
	<div
		style="color: white; padding: 15px 50px 5px 50px; float: right; font-size: 16px;">
		Last access : 30 May 2014 &nbsp; <a href="#"
			class="btn btn-danger square-btn-adjust">Logout</a>
	</div>
</nav>
<!-- /. NAV TOP  -->
<nav class="navbar-default navbar-side" role="navigation">
	<div class="sidebar-collapse">
		<ul class="nav" id="main-menu">
			<li class="text-center"><img src="assets/img/find_user.png"
				class="user-image img-responsive" /></li>


			<li><a href="index.html"><i class="fa fa-dashboard fa-3x"></i>
					Dashboard</a></li>

			<li><a href="#"><i class="fa fa-table fa-3x"></i> Manager
					Data<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="#">Category</a></li>
					<li><a href="#">Album</a></li>
					<li><a href="#">Music</a></li>
				</ul></li>
			<li><a href="#"><i class="fa fa-users fa-3x"></i> Manager
					User<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="#">Add</a></li>
					<li><a href="#">Edit</a></li>
					<li><a href="#">Second Level Link<span class="fa arrow"></span></a>
						<ul class="nav nav-third-level">
							<li><a href="#">Third Level Link</a></li>
							<li><a href="#">Third Level Link</a></li>
							<li><a href="#">Third Level Link</a></li>

						</ul></li>
				</ul></li>
				<li><a href="#"><i class="fa fa-cog fa-3x"></i> System<span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<li><a href="#">Add</a></li>
					<li><a href="#">Edit</a></li>
					<li><a href="#">Second Level Link<span class="fa arrow"></span></a>
						<ul class="nav nav-third-level">
							<li><a href="#">Third Level Link</a></li>
							<li><a href="#">Third Level Link</a></li>
							<li><a href="#">Third Level Link</a></li>

						</ul></li>
				</ul></li>
			<li><a class="active-menu" href="blank.html"><i
					class="fa fa-square-o fa-3x"></i> Blank Page</a></li>
		</ul>

	</div>

</nav>
<!-- /. NAV SIDE  -->
