<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Navigation web-->
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-main-collapse">
					Menu <i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="/tamthanhtinh"> <i
					class="fa fa-play-circle"></i> <span class="light">Tâm <img alt="" src="resources/img/logo.png" width="200px" height="auto"> </span>
					Thanh Tịnh 
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<ul class="nav navbar-nav">
					<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
					<li class="hidden"><a href="#page-top"></a></li>
					<c:forEach items="${categorys}" var="category">
						<li><a class="page-scroll" href="category?categoryID=${category.id}">${category.title}</a>
						</li>
					</c:forEach>
					<li><a class="page-scroll" href="#contact">Liên Lạc</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>
