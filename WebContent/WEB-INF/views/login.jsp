<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>Log In</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<style type="text/css">
.login-block {
	/*  	background: #DE6262;  */
	background-color: #900C3F;
	float: left;
	width: 100%;
	padding: 50px 0;
}

.banner-sec {
	background-size: cover;
	min-height: 500px;
	border-radius: 0 10px 10px 0;
	padding: 0;
}

.container {
	background: #fff;
	border-radius: 10px;
	box-shadow: 15px 20px 0px rgba(0, 0, 0, 0.1);
}

.carousel-inner {
	border-radius: 0 10px 10px 0;
}

.carousel-caption {
	text-align: left;
	left: 5%;
}

.login-sec {
	padding: 50px 30px;
	position: relative;
}

.login-sec .copy-text {
	position: absolute;
	width: 80%;
	bottom: 20px;
	font-size: 13px;
	text-align: center;
}

.login-sec .copy-text i {
	color: #FEB58A;
}

.login-sec .copy-text a {
	color: #E36262;
}

.login-sec h2 {
	margin-bottom: 30px;
	font-weight: 800;
	font-size: 30px;
	color: #DE6262;
}

.login-sec h2:after {
	content: " ";
	width: 100px;
	height: 5px;
	background: #FEB58A;
	display: block;
	margin-top: 20px;
	border-radius: 3px;
	margin-left: auto;
	margin-right: auto
}

.btn-login {
	background: #DE6262;
	color: #fff;
	font-weight: 600;
}

.banner-text {
	width: 70%;
	position: absolute;
	bottom: 40px;
	padding-left: 20px;
}

.banner-text h2 {
	color: #fff;
	font-weight: 600;
}
</style>
</head>
<body>

	<section class="login-block">
	<div class="container">
		<div class="row">
			<div class="col-md-4 login-sec">
				<h2 class="text-center">Iniciar Sesión</h2>
				<form class="login-form">
					<div class="form-group">
						<label class="text-uppercase">Usuario</label> <input type="text"
							id="user" class="form-control" placeholder="Ingrese el usuario"
							required autofocus />
					</div>
					<div class="form-group">
						<label class="text-uppercase">Contraseña</label> <input
							type="password" id="pass" class="form-control" name="password"
							placeholder="Password" required />
					</div>


					<div class="form-check">
						<label class="form-check-label"> <input type="checkbox"
							class="form-check-input"> <small>Guardar
								Contraseña</small>
						</label>
					</div>
					<div class="form-group">
						<input id="btnlogin" value="Iniciar Sesión" class="btn btn-login float-right "/>
					</div>

				</form>
				<div class="copy-text">
					Grupo <a href="http://localhost:8586/sisgeco/?">SiGeCo</a>
				</div>
			</div>

			<div class="col-md-8 banner-sec ">
				<div id="carouselExampleIndicators" class="carousel slide">
					<div class="carousel-inner" role="label">
						<div class="carousel-item active">
							<img src="resources/images/camioneta.jpg" alt="Responsive image"
								class="img-thumbnail">
							<div class="carousel-caption d-none d-md-block">
								<div class="banner-text">
									<h1>
										<strong><i>BIENVENIDOS ! </i></strong>
									</h1>

								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	</section>

	<script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {

			$("#btnlogin").click(function() {
				var user = $("#user").val();
				var clave = $("#pass").val();
				//	 			console.log(user + "" + clave);
					 			//alert(user);
					 			//alert(clave);
				$.ajax("login",{
					data:{
						'op' : 1,
						'user' : user,
						'clave' : clave
					},
// 					type:'POST',
					method:'POST',
					success:function(obj){
//		 				alert(obj);
						var log = JSON.parse(obj);
						console.log(log);
						if (log.op == 1) {

							window.location.href = "principio";

						} else {
							alert("No Salio amigo")
						}
					}
				});

			});

		});
		
	</script>

</body>
</html>