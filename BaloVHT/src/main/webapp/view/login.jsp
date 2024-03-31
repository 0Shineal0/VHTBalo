	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html lang="en">
	<head>
	    <meta charset="UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	    <title>Login Page</title>
	    <!-- Bootstrap CSS -->
	    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">
	    <!-- Font Awesome CSS -->
	    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
	    <!-- Custom CSS -->
	    <style>
	        .bg-image-vertical {
	            position: relative;
	            overflow: hidden;
	            background-repeat: no-repeat;
	            background-position: right center;
	            background-size: auto 50%;
	        }
	
	        @media (min-width: 1025px) {
	            .h-custom-2 {
	                height: 50%;
	            }
	        }
	    </style>
	</head>
	<body>
	<div class="container-fluid mt-3">
	</div>
	<section class="vh-100 bg-image-vertical">
	    <div class="container-fluid">
	        <div class="row">
	            <div class="col-sm-6 text-black">
	                <div class="px-5 ms-xl-4">
	                   <span class="h1 fw-bold mb-0 text-info animated">𝐖𝐄𝐋𝐂𝐎𝐌𝐄!</span>
	                </div>        
	                <div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">
	                    <form id="loginForm" class="form-signin" style="width: 23rem" action="Login" method="post">
	                        <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">𝕊𝕀𝔾ℕ 𝕀ℕ</h3>
	                        <div class="form-outline mb-4">
	                            <label class="form-label" for="form2Example18">𝙴𝚖𝚊𝚒𝚕 𝙰𝚍𝚍𝚛𝚎𝚜𝚜</label>
	                            <input name="email" type="text" class="form-control form-control-lg" placeholder="Email" required autofocus />
	                        </div>
	                        <div class="form-outline mb-4">
	                            <label class="form-label" for="form2Example28">𝙿𝚊𝚜𝚜𝚠𝚘𝚛𝚍</label>
	                            <input name="password" type="password" class="form-control form-control-lg" placeholder="Password" required />
	                        </div>
	                         <% if (request.getAttribute("error") != null) { %>
	        <div class="alert alert-danger" role="alert">
	            <%= request.getAttribute("error") %>
	        </div>
	    <% } %>
	                        <div class="pt-1 mb-4">
	                            <button class="btn btn-success btn-block" type="submit">ＳＩＧＮ ＩＮ</button>                           
	                            <p>Don't have an account? <a href="Register" class="link-info">Register here</a>
	</p>
	                        </div>
	                    </form>
	                </div>
	            </div>
	            <div class="col-sm-6 px-0 d-none d-sm-block">
	                <img src="https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/25726a83-75f7-4bb7-8b09-4a211eaf4794/hoops-elite-basketball-backpack-rSb0dJ.png"
	                    alt="Login image" class="w-100 vh-100" style="object-fit: cover; object-position: left;">
	            </div>
	        </div>
	    </div>
	</section>
	
	<!-- Bootstrap JS -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<!-- Font Awesome JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
	<!-- jQuery -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	</body>
	</html>
