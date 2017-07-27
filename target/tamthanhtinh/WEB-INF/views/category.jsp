<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<!-- container -->
	<div class="container">
	<div class="block-groups-wrap-ver2">
		<div class="block-group-wrap-ver2">
			<div class="block-wrap-edges">
				<div class="block-group">
					<div class="meta-wrap">
						<h2 class="title">Fiction Sleep Stories</h2>
						<div class="controls">
							<div class="arrow left-arrow disabled"></div>
							<div class="arrow left-arrow"></div>
						</div>
					</div>
					<div class="block-wrap-all ">
						<c:forEach items="${albums}" var="album">
							<div class="block-padding">
								<div>
									<a
										href="/signup?return_to=%2Fprogram%2FY6xGxA9%2Fthe-waterfall&amp;source=sleep-program"
										class="block"
										style="background-image:url('${album.thumbImage}'), linear-gradient(45deg, #74C5C4 0%, #BFFFFE 100%);">
										<div class="block-gradient-overlay"></div>
										<div class="pad">
											<div class="badge free-text block-content">Free</div>
											<img class="icon block-content sleep"
												src="http://cdn.calm.com/images/Y6xGxA9/qlBpQQ9Op/program-narrator-Y6xGxA9.jpg?v=148891775183">
											<div class="block-content">
												<div class="title">${album.title}</div>
												<div class="subtitle">${album.describe}</div>
											</div>
										</div>
									</a>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>





