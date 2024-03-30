<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thông tin Sách</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%@ page import = "model.Balo" %>
	<%@ page import = "dao.Balos" %>
    <%  
	    String id=request.getParameter("currBookID"); 
    	System.out.print(id);
		Balo balo = Balos.getBalo(id);
		
    %>
	<form action="Balo" method="post">
		<div class="container" style="width: 50%; justify-content: center;">
			<div >
				<label class="form-label">Mã sách</label> 
				<input type="text" class="form-control" placeholder="Nhập mã sách" name ="id" value="<%= balo.getId()%>"/>
			</div>
			<div >
				<label class="form-label">Hình ảnh</label> 
				<input type="text" class="form-control" placeholder="Nhập dịa chỉ ảnh" name ="image" value="<%= balo.getImage()%>"/>
			</div>
			<div >
				<label class="form-label">Tên sách</label> 
				<input type="text" class="form-control" placeholder="Nhập tên sách" name ="name" value="<%= balo.getName()%>"/>
			</div>
			<div >
				<label class="form-label">Giá bán</label> 
				<input type="text" class="form-control" placeholder="Nhập giá bán" name ="price"  value="<%= balo.getPrice()%>"/>
			</div>
			
			<div style="float: right;">
				<button type="submit" class="btn btn-primary" name="button" value="save">Lưu</button>
				<button type="submit" class="btn btn-primary" name="button" value="closebook">Đóng</button>
			</div>
		</div>
	</form>



</body>
</html>