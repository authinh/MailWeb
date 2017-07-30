<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="panel panel-default">
			<div class="panel-heading">List Categorys</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped table-bordered table-hover"
						id="dataTables-example">
						<thead>
							<tr>
							<c:forEach items="${headers}" var="theader">
								<th>${theader}</th>
							</c:forEach>
								<th></th>
							</tr>	
						</thead>
						<tbody>
						<c:set scope="request" var="index" value="1"/>
						<c:forEach items="${categorys}" var="category">
							<tr class="odd gradeX">
								<td>${index}</td>
								<td>${category.title}</td>
								<td>${category.tag}</td>
								<td >
								<button>Edit</button>
								<button>Remove</button>
								<button>View</button>
								</td>
								
							</tr>
						<c:set scope="request" var="index" value="${index+1}"/>	
						</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
		</div>