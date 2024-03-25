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
	<%@ page import = "model.Balo" %>
	<%@ page import = "dao.Balos" %>
    <%  
	    String id=request.getParameter("currBaloID"); 
    	System.out.print(id);
		Balo balo = Balos.getBalo(id);
		
    %>
	<form action="Balo" method="post">
		<div class="container" style="width: 50%; justify-content: center;">
			<div >
				<label class="form-label">Mã Balo</label> 
				<input type="text" class="form-control" placeholder="Nhập mã Balo" name ="id" value="<%= balo.getId()%>"/>
			</div>
			<div >
				<label class="form-label">Hình Balo</label> 
				<input type="text" class="form-control" placeholder="Nhập link ảnh" name ="image" value="<%= balo.getImage()%>"/>
			</div>
			<div >
				<label class="form-label">Tên Balo</label> 
				<input type="text" class="form-control" placeholder="Nhập tên Balo" name ="name" value="<%= balo.getName()%>"/>
			</div>
			<div >
				<label class="form-label">Giá Balo</label> 
				<input type="text" class="form-control" placeholder="Nhập giá bán" name ="price"  value="<%= balo.getPrice()%>"/>
			</div>
			<div >
				<label class="form-label">Mô tả Balo</label> 
				<input type="text" class="form-control" placeholder="Nhập mô tả Balo" name ="describe" value="<%= balo.getDescribe()%>"/>
			</div>
			
			<div style="float: right;">
				<button type="submit" class="btn btn-primary" name="button" value="save">Lưu</button>
				<button type="submit" class="btn btn-primary" name="button" value="closebalo">Đóng</button>
			</div>
		</div>
	</form>



</body>
</html>