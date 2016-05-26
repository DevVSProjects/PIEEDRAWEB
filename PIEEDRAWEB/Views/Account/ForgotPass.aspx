﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgotPass.aspx.cs" Inherits="PIEEDRAWEB.Views.Account.ForgotPass" %>

<!DOCTYPE html>

<html lang="en-us" id="extr-page">
<head>
		<meta charset="utf-8"/>
		<title>Bioepoc Web</title>
		<meta name="description" content=""/>
		<meta name="author" content=""/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
		
		<!-- #CSS Links -->
        <link href="../../Content/css/bootstrap.min.css" rel="stylesheet" />
		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/bootstrap.min.css"/>        
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/font-awesome.min.css"/>
    
		<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/smartadmin-production-plugins.min.css"/>
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/smartadmin-production.min.css"/>
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/smartadmin-skins.min.css"/>

		<!-- SmartAdmin RTL Support -->
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/smartadmin-rtl.min.css"/> 

		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/demo.min.css"/>

		<!-- #FAVICONS -->
		<link rel="shortcut icon" href="../../img/favicon/iner_Ok.png" type="image/x-icon"/>
		<link rel="icon" href="../../img/favicon/iner_Ok.png" type="image/x-icon"/>

		<!-- #GOOGLE FONT -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700"/>

		<!-- #APP SCREEN / ICONS -->
		<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
		<link rel="apple-touch-icon" href="../../img/splash/sptouch-icon-iphone.png"/>
		<link rel="apple-touch-icon" sizes="76x76" href="../../img/splash/touch-icon-ipad.png"/>
		<link rel="apple-touch-icon" sizes="120x120" href="../../img/splash/touch-icon-iphone-retina.png"/>
		<link rel="apple-touch-icon" sizes="152x152" href="../../img/splash/touch-icon-ipad-retina.png"/>
		
		<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
		<meta name="apple-mobile-web-app-capable" content="yes"/>
		<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
		
		<!-- Startup image for web apps -->
		<link rel="apple-touch-startup-image" href="../../img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)"/>
		<link rel="apple-touch-startup-image" href="../../img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)"/>
		<link rel="apple-touch-startup-image" href="../../img/splash/iphone.png" media="screen and (max-device-width: 320px)"/>

     <script language="javascript" type="text/javascript">

             function EntraCB() {

                 alert('entra JS');
               
              
                return true;
             }        
            
        </script>

        
	</head>

<body class="animated fadeInDown">
        <header id="header">
			<!--<span id="logo"></span>-->

            <div id="logo-group">
                <span id="logo"> <img src="../../img/iner_Ok.png" alt="INER" style="width:150px;height:45px"></span>

                <!-- END AJAX-DROPDOWN -->
            </div>

			<span id="extr-page-header-space"> <span class="hidden-mobile hiddex-xs">Necesitas una cuenta?</span> <a href="register.html" class="btn btn-danger">Solicitar cuenta</a> </span>

		</header>

    <div id="main" role="main">

			<!-- MAIN CONTENT -->
			<div id="content" class="container">

				<div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7 hidden-xs hidden-sm">
                        <h1 class="txt-color-red login-header-big">PIEEDRA</h1>
                        <div class="hero">

                            <div class="pull-left login-desc-box-l">
                                <h4 class="paragraph-header">Perfil del paciente con EPOC en diferentes regiones y altitudes de México</h4>
                                <!--<div class="login-app-icons">
                    <a href="javascript:void(0);" class="btn btn-danger btn-sm">Frontend Template</a>
                    <a href="javascript:void(0);" class="btn btn-danger btn-sm">Find out more</a>
                </div>-->
                            </div>

                            <img src="../../img/demo/iphoneview.png" alt="" class="pull-right display-image" style="width:210px">

                        </div>

                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <h5 class="about-heading">About SmartAdmin - Are you up to date?</h5>
                                <p>
                                    Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa.
                                </p>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                                <h5 class="about-heading">Not just your average template!</h5>
                                <p>
                                    Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi voluptatem accusantium!
                                </p>
                            </div>
                        </div>

                    </div>
					<div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
						<div class="well no-padding">
							<form action="LogInMVC.aspx" id="login-form" class="smart-form client-form">
								<header>
									Olvidaste tu Password?
								</header>

								<fieldset>
									
									<section>
										<label class="label">Ingresa tu E-mail</label>
										<label class="input"> <i class="icon-append fa fa-envelope"></i>
											<input type="email" name="email">
											<b class="tooltip tooltip-top-right"><i class="fa fa-envelope txt-color-teal"></i>Ingresa tu E-mail para resetear tu password</b></label>
									</section>
									<section>
										<span class="timeline-seperator text-center text-primary"> <span class="font-sm">ó</span> 
									</section>
									<section>
										<label class="label">Tu usuario</label>
										<label class="input"> <i class="icon-append fa fa-user"></i>
											<input type="text" name="username">
											<b class="tooltip tooltip-top-right"><i class="fa fa-user txt-color-teal"></i>Ingresa tu usuario</b> </label>
										<div class="note">
											<a href="LogInMVC.aspx">He recordado mi password!</a>
										</div>
									</section>

								</fieldset>
								<footer>
									<button type="submit" class="btn btn-primary" onclick="EntraCB()">
										<i class="fa fa-refresh"></i> 
                                        Resetear password
									</button>
								</footer>

                              
						        <div class="well no-padding" id="NewPass" runat="server">						            
					                <form  id="login-form" class="smart-form client-form">  
						                <fieldset>
							                <form id="FormInputs" runat="server"> 
                                                <section>
									                <label class="input"> <i class="icon-append fa fa-lock"></i>
										                <input type="password" name="password" placeholder="Escribe nuevo password" id="IpNewPassword" runat="server">
										                <b class="tooltip tooltip-bottom-right">Anota tu password para no olvidarlo</b> 
									                </label>
								                </section>
								                <section>
									                <label class="input"> <i class="icon-append fa fa-lock"></i>
										                <input type="password" name="passwordConfirm" placeholder="Confirmar nuevo password" id="IpConfirmNewPass" runat="server">
										                <b class="tooltip tooltip-bottom-right">Anota tu password para no olvidarlo</b> 
									                </label>
								                </section>                                                                                                                									
							                 </form>
						                </fieldset>
                                    
                                        <footer>
                                            <button type="submit" class="btn btn-primary" onclick="EntraCB()" style="margin:0 0 10px 15px">
                                                Cambiar password
                                            </button>                                                                         
                                        </footer>
                                    </form>
                                </div>										
							</form>
						</div>
						
						<!--<h5 class="text-center"> - Or sign in using -</h5>
															
										<ul class="list-inline text-center">
											<li>
												<a href="javascript:void(0);" class="btn btn-primary btn-circle"><i class="fa fa-facebook"></i></a>
											</li>
											<li>
												<a href="javascript:void(0);" class="btn btn-info btn-circle"><i class="fa fa-twitter"></i></a>
											</li>
											<li>
												<a href="javascript:void(0);" class="btn btn-warning btn-circle"><i class="fa fa-linkedin"></i></a>
											</li>
										</ul>-->
						
					</div>
				</div>
			</div>

		</div>

    <!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script src="../../Scripts/js/plugin/pace/pace.min.js"></script>

	    <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
	    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script> if (!window.jQuery) { document.write('<script src="../../Scripts/js/libs/jquery-2.1.1.min.js"><\/script>'); } </script>

	    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script> if (!window.jQuery.ui) { document.write('<script src="../../Scripts/js/libs/jquery-ui-1.10.3.min.js"><\/script>'); } </script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events 		
		<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

		<!-- BOOTSTRAP JS -->		
		<script src="../../Scripts/js/bootstrap/bootstrap.min.js"></script>

		<!-- JQUERY VALIDATE -->
		<script src="../../Scripts/js/plugin/jquery-validate/jquery.validate.min.js"></script>
		
		<!-- JQUERY MASKED INPUT -->
		<script src="../../Scripts/js/plugin/masked-input/jquery.maskedinput.min.js"></script>
		
		<!--[if IE 8]>
			
			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
			
		<![endif]-->

		<!-- MAIN APP JS FILE -->
		<script src="../../Scripts/js/app.min.js"></script>

		<script type="text/javascript">
	

		</script>


</body>
</html>