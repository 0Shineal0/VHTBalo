<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thông tin Balo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<div class="container" style="width: 50%">
		<form action="Balo" method="POST">
			<input type="hidden" id="currBaloID" name="currBaloID">
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="row">Mã Balo</th>
						<th scope="row">Hình Balo</th>
						<th scope="row">Tên Balo</th>
						<th scope="row">Giá</th>
						<th scope="row">Mô tả Balo</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${balos}" var="balo">
						<tr id = "${balo.id}" onclick="rowClick(this)">
							<td><c:out value="${balo.id}" /></td>
							<td><c:out value="${balo.image}" /></td>
							<td><c:out value="${balo.name}" /></td>
							<td><c:out value="${balo.price}" /></td>
							<td><c:out value="${balo.describe}" /></td>						
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div style="float: right;">

				<button type="submit" class="btn btn-primary" name="button" value="add">Thêm</button>
				<button type="submit" class="btn btn-primary" name="button" value="delete">Xóa</button>
				<button type="submit" class="btn btn-primary" name="button" value="edit">Chỉnh sửa</button>
				<button type="submit" class="btn btn-primary" name="button" value="close">Đóng</button>

			</div>
			
		</form>
	</div>
	
	<script type="text/javascript">
		function rowClick(e){
			document.getElementById("currBaloID").value =e.id;
		}
	</script>

</body>
</html>