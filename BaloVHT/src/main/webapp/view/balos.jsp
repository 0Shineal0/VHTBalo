<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap CRUD Data Table for Database with Modal Form</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/manager.css" rel="stylesheet" type="text/css" />
<style>
img {
	width: 200px;
	height: 120px;
}
</style>
<body>
	<div class="container">
		<form action="Balo" method="POST">
			<input type="hidden" id="currBookID" name="currBookID">
			<div class="table-wrapper">
				<div class="table-title">
    <div class="row">
        <div class="col-sm-6">
            <h2>
                Manage <b>Product</b>
            </h2>
        </div>
        <div class="col-sm-6 text-right" style="margin-top: 18px;"> <!-- Sử dụng margin-top để dịch chuyển nút xuống dưới -->
            <button type="submit" class="btn btn-success" name="button" value="add">
                <i class="material-icons">&#xE147;</i> <span>Add New Product</span>
            </button>
            <button type="submit" class="btn btn-primary" name="button" value="close">
                <i class="material-icons">&#xE88A;</i> Home
            </button>
        </div>
    </div>
</div>

				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Image</th>
							<th>Price</th>
							<th>Describe</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${balos}" var="balo">
							<tr id="${balo.id}" onclick="rowClick(this)">
								<td>${balo.id}</td>
								<td>${balo.name}</td>
								<td><img src="${balo.image}" alt="Hình ảnh balo"
									style="max-width: 100px; max-height: 100px;"></td>
								<td>${balo.price}$</td>
								<td>${balo.mota}</td>
								<td>
									<div style="display: flex; gap: 10px;">
    <button type="submit" class="btn btn-primary" name="button" value="edit" style="display: flex; align-items: center; justify-content: center;">
        <i class="material-icons" style="font-size: 18px;">&#xE254;</i>
    </button>
    <button type="submit" class="btn btn-danger" name="button" value="delete" style="display: flex; align-items: center; justify-content: center;">
        <i class="material-icons" style="font-size: 18px;">&#xE872;</i>
    </button>
</div>

								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		</form>
		

	<p class="float-left">
		<a class="btn btn-primary" href="#">Back to top</a>
	</p>
	<script src="js/manager.js" type="text/javascript"></script>
	<script type="text/javascript">
		function rowClick(e) {
			document.getElementById("currBookID").value = e.id;
		}
	</script>
</body>
</html>