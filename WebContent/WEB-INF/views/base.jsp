<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="l"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sistema Gesti�n Cochera</title>
<!-- Normalize CSS -->
<link rel="stylesheet" href="css/normalize.css">

<!-- Materialize CSS -->
<link rel="stylesheet" href="css/materialize.min.css">

<!-- Material Design Iconic Font CSS -->
<%-- <link rel="stylesheet" href="css/material-design-iconic-font.min.css"> --%>

<!-- Malihu jQuery custom content scroller CSS -->
<%-- <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css"> --%>

<!-- Sweet Alert CSS -->
<link rel="stylesheet" href="css/sweetalert.css">

<!-- MaterialDark CSS -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	
	  <!-- Nav Lateral -->
    <section class="NavLateral full-width">
        <div class="NavLateral-FontMenu full-width ShowHideMenu"></div>
        <div class="NavLateral-content full-width">
            <header class="NavLateral-title full-width center-align">
                SIGECO GROUP <i class="zmdi zmdi-close NavLateral-title-btn ShowHideMenu"></i>
            </header>
            <figure class="full-width NavLateral-logo">
                <img src="images/auto.jpg" alt="material-logo" class="responsive-img center-box">
                <figcaption class="center-align">Sistema Gestion Cochera</figcaption>
            </figure> 
            <div class="NavLateral-Nav">
                <ul class="full-width">
                    <li>
                        <a href="http://localhost:8586/sisgeco/principal#" class="waves-effect waves-light"><i class="zmdi zmdi-desktop-mac zmdi-hc-fw"></i> Inicio</a>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light"><i class="zmdi zmdi-language-css3 zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> ENTRADAS Y SALIDAS</a>
                        <ul class="full-width">
                            <li><a href="#" onclick="loadtickets();" class="waves-effect waves-light">Tickets</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="#" onclick="loadsalidas();" class="waves-effect waves-light">Emitir Comprobantes</a></li>
                              <li class="NavLateralDivider"></li>
                               <li><a href="#" onclick="loadvehiculos();" class="waves-effect waves-light">Vehiculos</a></li>
                            <li class="NavLateralDivider"></li>
                             <li><a href="#" onclick="loadclientes();" class="waves-effect waves-light">Clientes</a></li>
                            <li class="NavLateralDivider"></li>
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light"><i class="zmdi zmdi-widgets zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i> REPORTES</a>
                        <ul class="full-width">
                            <li><a href="button.html" class="waves-effect waves-light">Tickets Finalizados</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="form.html" class="waves-effect waves-light">Registro Comprobantes</a></li>
                        </ul>
                    </li>
                    <li class="NavLateralDivider"></li>
                    <li>
                        <a href="#" class="NavLateral-DropDown  waves-effect waves-light"><i class="zmdi zmdi-view-web zmdi-hc-fw"></i> <i class="zmdi zmdi-chevron-down NavLateral-CaretDown"></i>CONFIGURACI�N</a>
                        <ul class="full-width">
                            <li><a href="client" onclick="loadusuarios();" class="waves-effect waves-light">Usuarios</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="#" onclick="loadroles();" class="waves-effect waves-light">Roles</a></li>
                            <li class="NavLateralDivider"></li>
                            <li><a href="system" onclick="loadaccesos();" class="waves-effect waves-light">Accesos</a></li>
                        </ul>
                    </li>   
                </ul>
            </div>  
        </div>  
    </section>

    <!-- Page content -->
    <section class="ContentPage full-width">
        <!-- Nav Info -->
        <div class="ContentPage-Nav full-width">
            <ul class="full-width">
                <li class="btn-MobileMenu ShowHideMenu"><a href="#" class="tooltipped waves-effect waves-light" data-position="bottom" data-delay="50" data-tooltip="Menu"><i class="zmdi zmdi-more-vert"></i></a></li>
                <li><figure><img src="assets/img/user.png" alt="UserImage"></figure></li>
                <li style="padding:0 5px;">usuario</li>
                <li><a href="#" class="tooltipped waves-effect waves-light btn-ExitSystem" data-position="bottom" data-delay="50" data-tooltip="Logout"><i class="zmdi zmdi-power"></i></a></li>
                <li><a href="#" class="tooltipped waves-effect waves-light btn-Search" data-position="bottom" data-delay="50" data-tooltip="Search"><i class="zmdi zmdi-search"></i></a></li>
                <li>
                    <a href="#" class="tooltipped waves-effect waves-light btn-Notification" data-position="bottom" data-delay="50" data-tooltip="Notifications">
                        <i class="zmdi zmdi-notifications"></i>
                        <span class="ContentPage-Nav-indicator bg-danger">2</span>
                    </a>
                </li>
            </ul>   
        </div>

        <!-- Notifications area -->
        <section class="z-depth-3 NotificationArea">
            <div class="full-width center-align NotificationArea-title">Notifications <i class="zmdi zmdi-close btn-Notification"></i></div>
            <a href="#" class="waves-effect Notification">
                <div class="Notification-icon"><i class="zmdi zmdi-accounts-alt bg-info"></i></div>
                <div class="Notification-text">
                    <p>
                        <i class="zmdi zmdi-circle tooltipped" data-position="left" data-delay="50" data-tooltip="Notification as UnRead"></i>
                        <strong>New User Registration</strong> 
                        <br>
                        <small>Just Now</small>
                    </p>
                </div>
            </a>  
            <a href="#" class="waves-effect Notification">
                <div class="Notification-icon"><i class="zmdi zmdi-cloud-download bg-primary"></i></div>
                <div class="Notification-text">
                    <p>
                        <i class="zmdi zmdi-circle-o tooltipped" data-position="left" data-delay="50" data-tooltip="Notification as Read"></i>
                        <strong>New Updates</strong> 
                        <br>
                        <small>30 Mins Ago</small>
                    </p>
                </div>
            </a>
            <a href="#" class="waves-effect Notification">
                <div class="Notification-icon"><i class="zmdi zmdi-upload bg-success"></i></div>
                <div class="Notification-text">
                    <p>
                        <i class="zmdi zmdi-circle tooltipped" data-position="left" data-delay="50" data-tooltip="Notification as UnRead"></i>
                        <strong>Archive uploaded</strong> 
                        <br>
                        <small>31 Mins Ago</small>
                    </p>
                </div>
            </a> 
            <a href="#" class="waves-effect Notification">
                <div class="Notification-icon"><i class="zmdi zmdi-mail-send bg-danger"></i></div>
                <div class="Notification-text">
                    <p>
                        <i class="zmdi zmdi-circle-o tooltipped" data-position="left" data-delay="50" data-tooltip="Notification as Read"></i>
                        <strong>New Mail</strong> 
                        <br>
                        <small>37 Mins Ago</small>
                    </p>
                </div>
            </a>
            <a href="#" class="waves-effect Notification">
                <div class="Notification-icon"><i class="zmdi zmdi-folder bg-primary"></i></div>
                <div class="Notification-text">
                    <p>
                        <i class="zmdi zmdi-circle-o tooltipped" data-position="left" data-delay="50" data-tooltip="Notification as Read"></i>
                        <strong>Folder delete</strong> 
                        <br>
                        <small>1 hours Ago</small>
                    </p>
                </div>
            </a>  
        </section>
<!-- esta parte es la que comprende el contenedor -->
        <div id="contenedor"  class="row">
            <!-- Tiles -->
            <article class="col s12">
                <div class="full-width center-align" style="margin: 40px 0;">
                    <div class="tile">
                        <div class="tile-icon"><i class="zmdi zmdi-mail-send"></i></div>
                        <div class="tile-caption">
                            <span class="center-align">77</span>
                            <p class="center-align">Lorem ipsum</p>   
                        </div>
                        <a href="#" class="tile-link waves-effect waves-light">View Details &nbsp; <i class="zmdi zmdi-caret-right-circle"></i></a>
                    </div>
                    <div class="tile">
                        <div class="tile-icon"><i class="zmdi zmdi-shopping-cart"></i></div>
                        <div class="tile-caption">
                            <span class="center-align">99</span>
                            <p class="center-align">Lorem ipsum</p>   
                        </div>
                        <a href="#" class="tile-link waves-effect waves-light">View Details &nbsp; <i class="zmdi zmdi-caret-right-circle"></i></a>
                    </div>
                    <div class="tile">
                        <div class="tile-icon"><i class="zmdi zmdi-card"></i></div>
                        <div class="tile-caption">
                            <span class="center-align">17</span>
                            <p class="center-align">Lorem ipsum</p>   
                        </div>
                        <a href="#" class="tile-link waves-effect waves-light">View Details &nbsp; <i class="zmdi zmdi-caret-right-circle"></i></a>
                    </div>
                </div>   
            </article>

            <!-- Timeline -->
            <article class="col s12">
                <h4>Responsive Timeline</h4>
                <hr>
                <ul class="timeline">
                    <li>
                        <div class="timeline-badge bg-info"><i class="zmdi zmdi-twitter"></i></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h5 class="timeline-title">Lorem ipsum dolor</h5>
                                <p><small class="text-muted"><i class="zmdi zmdi-time"></i> 11 hours ago via Twitter</small></p>
                            </div>
                            <div class="timeline-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero laboriosam dolor perspiciatis omnis exercitationem. Beatae, officia pariatur? Est cum veniam excepturi. Maiores praesentium, porro voluptas suscipit facere rem dicta, debitis.</p>
                            </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-badge bg-primary"><i class="zmdi zmdi-facebook"></i></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h5 class="timeline-title">Lorem ipsum dolor</h5>
                                <p><small class="text-muted"><i class="zmdi zmdi-time"></i> 10 hours ago via Facebook</small></p>
                            </div>
                            <div class="timeline-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem dolorem quibusdam, tenetur commodi provident cumque magni voluptatem libero, quis rerum. Fugiat esse debitis optio, tempore. Animi officiis alias, officia repellendus.</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="timeline-badge bg-success"><i class="zmdi zmdi-whatsapp"></i></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h5 class="timeline-title success">Lorem ipsum dolor</h5>
                                <p><small class="text-muted"><i class="zmdi zmdi-time"></i> 9 hours ago via Whatsapp</small></p>
                            </div>
                            <div class="timeline-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero laboriosam dolor perspiciatis omnis exercitationem. Beatae, officia pariatur? Est cum veniam excepturi. Maiores praesentium, porro voluptas suscipit facere rem dicta, debitis.</p>
                            </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-badge bg-danger"><i class="zmdi zmdi-pinterest"></i></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h5 class="timeline-title">Lorem ipsum dolor</h5>
                                <p><small class="text-muted"><i class="zmdi zmdi-time"></i> 8 hours ago via Pinterest</small></p>
                            </div>
                            <div class="timeline-body">
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem dolorem quibusdam, tenetur commodi provident cumque magni voluptatem libero, quis rerum. Fugiat esse debitis optio, tempore. Animi officiis alias, officia repellendus.</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </article>
        </div>

        <!-- Footer -->   
        <footer class="footer-MaterialDark">
            <div class="container">
                <div class="row">
                    <div class="col l6 s12">
                        <h5 class="white-text">Footer Content</h5>
                        <p class="grey-text text-lighten-4">
                            To better support on CSS components and icons, please visit the official websites of the technologies used.
                            <br>
                            Para mejor soporte sobre los componentes CSS e iconos, por favor visite los sitios web oficiales de las tecnologias usadas
                        </p>
                    </div>
                    <div class="col l4 offset-l2 s12">
                        <h5 class="white-text">Technologies used</h5>
                        <ul>
                            <li><a class="grey-text text-lighten-3" href="http://materializecss.com/">Materialize</a></li>
                            <li><a class="grey-text text-lighten-3" href="http://zavoloklom.github.io/material-design-iconic-font/icons.html">Material Design Iconic Font</a></li>
                            <li><a class="grey-text text-lighten-3" href="http://t4t5.github.io/sweetalert/">Sweet Alert</a></li>
                            <li><a class="grey-text text-lighten-3" href="http://manos.malihu.gr/jquery-custom-content-scroller/">jQuery custom content scroller</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="NavLateralDivider"></div>
            <div class="footer-copyright">
                <div class="container center-align">
                    Grupo SiGeCo - sistema gestion de cochera
                </div>
            </div>
        </footer>
    </section>
    
    <!-- Sweet Alert JS -->
    <script src="js/sweetalert.min.js"></script>
    
    <!-- jQuery -->
	<script src="js/jquery-1.11.2.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
    
    <!-- Materialize JS -->
	<script src="js/materialize.min.js"></script>
    
    <!-- Malihu jQuery custom content scroller JS -->
	<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
    
    <!-- MaterialDark JS -->
	<script src="js/main.js"></script>
	
	<script type="text/javascript">
	
	function loadusuarios(){
		
		 $("#contenedor").load("user");
		 listar();

	};
	
	function loadvehiculos(){
		
		 $("#contenedor").load("vehicle");

	};
	function loadroles(){
		
		 $("#contenedor").load("role");

	};
	function loadclientes(){
		
		 $("#contenedor").load("client");

	}
	
	function loadtickets(){
		$("#contenedor").load("tickecito");
	}
	
	function loadsalidas(){
		$("#contenedor").load("exit");
	}
	
	function listar(){
		console.log("asd");
	}
	
	function loadaccesos(){
		$("#contenedor").load("system");
	}
	
	</script>

	
</body>
</html>