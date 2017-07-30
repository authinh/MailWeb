<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">
	<div class="col-md-12">
		<!-- Advanced Tables -->
		${showlist}
		<!--End Advanced Tables -->
	</div>
</div>
<button type="submit" class="btn btn-default">Add</button><button type="submit" class="btn btn-default">Delete</button>
								
<!-- form -->
<div class="row">
	<div class="col-md-12">
		<!-- Form Elements -->
		<div class="panel panel-default">
			<div class="panel-heading">Form Element Examples</div>
			<div class="panel-body">
				<div class="row">
					<div class="col-md-6">
						<h3>Add a Category</h3>
						<form role="form">
							<input type="text" name="id" hidden="true" />
							<div class="row">
								<div class="form-group col-md-6">
									<label>Title</label> <input class="form-control" name="title"/>

								</div>
								<div class="form-group col-md-6">
									<label>Name</label> <input class="form-control" name="name"/>

								</div>
							</div>
							<div class="row">
								<div class="form-group col-md-6">
									<label>Tag</label> <input class="form-control" name="tag"/>

								</div>
								<div class="form-group col-md-6">
									<label>URL</label> <input class="form-control" name="URL"/>

								</div>
							</div>
							
							<div class="row">
								<div class="form-group col-md-8">
									<label>Background URL</label> <input class="form-control" name="backgroundurl"/>

								</div>
								<div class="form-group col-md-4">
									<label>List Album</label> <br>
									<button type="submit" class="btn btn-default">Select</button>
								</div>

							</div>
							<div class="row">
								<div class="form-group col-md-12">
									<label>Description</label>
									<textarea class="form-control" rows="4" name="description"></textarea>
								</div>

							</div>
							<button type="submit" class="btn btn-default">Submit
								Button</button>
							<button type="reset" class="btn btn-primary">Reset
								Button</button>

						</form>
					</div>
					<!-- select list album -->
					<div class="col-md-6">
						<h3>List Album</h3>
						<div class="col-md-5">
							<div class="panel-heading">Kitchen Sink</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>#</th>
												<th>First Name</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Mark</td>

											</tr>
											<tr>
												<td>2</td>
												<td>Jacob</td>

											</tr>
											<tr>
												<td>3</td>
												<td>Larry</td>

											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						
							
						
						<div class="col-md-5">
							<div class="panel-heading">Kitchen Sink</div>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th>#</th>
												<th>First Name</th>

											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>Mark</td>

											</tr>
											<tr>
												<td>2</td>
												<td>Jacob</td>

											</tr>
											<tr>
												<td>3</td>
												<td>Larry</td>

											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Form Elements -->
	</div>
</div>