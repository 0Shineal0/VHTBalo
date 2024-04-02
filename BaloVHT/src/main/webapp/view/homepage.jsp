<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!------ chữ di chuyển  ---------->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom CSS -->
<style>
@keyframes moveLeft {
    0% {
        transform: translateX(100%);
    }
    100% {
        transform: translateX(-100%);
    }
}


.moving-text {
    animation: moveLeft 30s linear infinite;
    font-size: 20px; /* Chỉnh cỡ chữ */
    color: #6633FF; /* Chỉnh màu chữ */
    white-space: nowrap; /* Ngăn chữ bị xuống hàng */
    font-family: "Times New Roman", Times, serif; /* Thay đổi font chữ */
}

</style>

 <script type="text/javascript">
        // Đoạn mã JavaScript ở đây
        // Lấy ra các ký tự của moving-text
        const text = document.querySelector('.moving-text').textContent.trim();

        // Tạo ra các phần tử span cho từng ký tự và thêm vào moving-text-container
        document.querySelector('.moving-text').innerHTML = '';
        text.split('').forEach(char => {
            const span = document.createElement('span');
            span.textContent = char === ' ' ? '\u00A0' : char; // thêm một khoảng trắng không thể linh động
            document.querySelector('.moving-text').appendChild(span);
        });
    </script>
<body>
	<!--begin of menu-->
	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<div class="container">
			<a class="navbar-brand" href="home">VHT BALO</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExampleDefault"
				aria-controls="navbarsExampleDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-end"
				id="navbarsExampleDefault">
				<ul class="navbar-nav m-auto">
					<li class="nav-item"><a class="nav-link" href="#">Manager
							Account</a></li>
					<li class="nav-item"><a class="nav-link" href="Balo">Balo</a></li>
					<li class="nav-item"><a class="nav-link" href="Login">Logout</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Login</a></li>
				</ul>

				<form action="search" method="post" class="form-inline my-2 my-lg-0">
					<div class="input-group input-group-sm">
						<input name="txt" type="text" class="form-control"
							aria-label="Small" aria-describedby="inputGroup-sizing-sm"
							placeholder="Search...">
						<div class="input-group-append">
							<button type="submit" class="btn btn-secondary btn-number">
								<i class="fa fa-search"></i>
							</button>
						</div>
					</div>
					<a class="btn btn-success btn-sm ml-3" href="show"> <i
						class="fa fa-shopping-cart"></i> Cart <span
						class="badge badge-light">3</span>
					</a>
				</form>
			</div>
		</div>
	</nav>
	<section class="jumbotron text-center">
		<div class="container">
			<h1 class="jumbotron-heading">VHT Balo</h1>
			<p class="lead text-muted mb-0">Uy tín tạo nên thương hiệu với
				hơn 10 năm cung cấp các sản phầm balo nhập từ Pháp</p>
		</div>
	</section>
        <div class="moving-text"><b>Bạn muốn có balo xịn ư, hãy đến với shop BALO chính hãng của chúng tôi. Phân phối đến 63 tỉnh thành trên toàn quốc</b></div>

		<!--end of menu-->
	<div class="container">
		<div class="row">
			<div class="col">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item"><a href="#">Category</a></li>
						<li class="breadcrumb-item active" aria-current="#">Sub-category</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<div class="card bg-light mb-3">
					<div class="card-header bg-primary text-white text-uppercase">
						<i class="fa fa-list"></i> Categories
					</div>
					<ul class="list-group category_block">
						<c:forEach items="${listCC}" var="o">
							<li class="list-group-item text-white"><a href="#">${o.cname}</a></li>
						</c:forEach>

					</ul>
				</div>
				<div class="card bg-light mb-3">
					<div class="card-header bg-success text-white text-uppercase">Last
						product</div>
					<div class="card-body">
						<img class="img-fluid" src="${p.image}" />
						<h5 class="card-title">${p.name}</h5>
						<p class="card-text">${p.title}</p>
						<p class="bloc_left_price">${p.price}$</p>
					</div>
				</div>
			</div>

			<div class="col-sm-9">
				<div class="row">
					<c:forEach items="${homepage}" var="homepage">
						<div class="col-12 col-md-6 col-lg-4">
							<div class="card">
								<img class="card-img-top" src="${homepage.image}"
									alt="Card image cap">
								<div class="card-body">
									<h4 class="card-title show_txt">
										<a href="Detail?pid=${homepage.id}" title="View Product"><c:out
												value="${homepage.name}" /></a>
									</h4>
									
									<div class="row">
										<div class="col">
											<p class="btn btn-danger btn-block">
												<c:out value="${homepage.price}$" />
											</p>
										</div>
										<div class="col">
											<a href="#" class="btn btn-success btn-block">Add to cart</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

		</div>
	</div>

	<!-- Footer -->
	<footer class="jumbotron text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-lg-4 col-xl-3">
					<h5>About</h5>
					<hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
					<p class="mb-0">Công ty của chúng tôi đã thành lập được 10 năm và
					cung cấp hàng chất lượng chính hãng đến toàn thể khách hàng.</p>
				</div>

				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
					<h5>Nhà Phát Triển</h5>
					<hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
					<ul class="list-unstyled">
						<li><a href="https://www.facebook.com/profile.php?id=100080908811496"><span style="white-space: nowrap;">AKA: VƯƠNG VUI VẺ</span></a></li>
						<li><a href="https://www.facebook.com/ren.legends.92/about/"><span style="white-space: nowrap;">AKA: HOÀNG HÓNG HỚT</span></a></li>
						<li><a href="https://www.facebook.com/shin.me.kayuha"><span style="white-space: nowrap;">AKA: TƯỚC TĂNG TIẾN </span></a></li>
						
					</ul>
				</div>

				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto">
					<h5>GITHUB links</h5>
					<hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
					<ul class="list-unstyled">
						<li><a href="https://github.com/NGUYENVUONG11">Vương GH</a></li>
						<li><a href="https://github.com/hoanghoccode">Hoàng GH</a></li>
						<li><a href="https://github.com/0Shineal0">Tước GH</a></li>
					</ul>
				</div>

				<div class="col-md-4 col-lg-3 col-xl-3">
					<h5>Contact</h5>
					<hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
					<ul class="list-unstyled">
						<li><i class="fa fa-home mr-2"></i> VHT COMPANY</li>
						<li><i class="fa fa-envelope mr-2"></i> vanlangsaigon@gmail.com</li>
						<li><i class="fa fa-phone mr-2"></i> + 086.2310.727</li>
						<li><i class="fa fa-print mr-2"></i> + 039.6768.360</li>
					</ul>
				</div>
				<div class="col-12 copyright mt-3">
					<p class="float-left">
						<a class="btn btn-outline-success" href="#">Back to top</a>
					</p>
					<p class="text-right text-muted">
						created with <i class="fa fa-heart"></i> by <a
							href="https://t-php.fr/43-theme-ecommerce-bootstrap-4.html"><i>VHT</i></a>
						| <span>v. 1.0</span>
					</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>