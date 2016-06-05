<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInMVC.aspx.cs" Inherits="PIEEDRAWEB.Views.Account.LogInMVC" %>

<!DOCTYPE html>

<html lang="en-us" id="extr-page">

    <head>
		<meta charset="utf-8">
		<title>Bioepoc Web</title>
		<meta name="description" content="">
		<meta name="author" content="">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- #CSS Links -->
        <link href="../../Content/css/bootstrap.min.css" rel="stylesheet" />
		<!-- Basic Styles -->
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/bootstrap.min.css">        
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/font-awesome.min.css">
    
		<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/smartadmin-production-plugins.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/smartadmin-production.min.css">
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/smartadmin-skins.min.css">

		<!-- SmartAdmin RTL Support -->
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/smartadmin-rtl.min.css"> 

		<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<link rel="stylesheet" type="text/css" media="screen" href="../../Content/css/demo.min.css">

		<!-- #FAVICONS -->
		<link rel="shortcut icon" href="../../img/favicon/iner_Ok.png" type="image/x-icon">
		<link rel="icon" href="../../img/favicon/iner_Ok.png" type="image/x-icon">

		<!-- #GOOGLE FONT -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

		<!-- #APP SCREEN / ICONS -->
		<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
		<link rel="apple-touch-icon" href="../../img/splash/sptouch-icon-iphone.png">
		<link rel="apple-touch-icon" sizes="76x76" href="../../img/splash/touch-icon-ipad.png">
		<link rel="apple-touch-icon" sizes="120x120" href="../../img/splash/touch-icon-iphone-retina.png">
		<link rel="apple-touch-icon" sizes="152x152" href="../../img/splash/touch-icon-ipad-retina.png">
		
		<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		
		<!-- Startup image for web apps -->
		<link rel="apple-touch-startup-image" href="../../img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		<link rel="apple-touch-startup-image" href="../../img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<link rel="apple-touch-startup-image" href="../../img/splash/iphone.png" media="screen and (max-device-width: 320px)">
        
         <script language="javascript" type="text/javascript">
            function CleanField() {

                document.getElementById('<%= InFicha.ClientID %>').value = '';
                document.getElementById('<%= InPassword.ClientID %>').value = '';
                
                return true;
            }
             //////////////////////////////////////////////////////////////////

             function Alerta() {

                document.getElementById('<%= ButtonIngresar.ClientID %>').click();
                return true;
             }

              //////////////////////////////////////////////////////////////////
            
        </script>

	</head>

<body class="animated fadeInDown">

  
        <div>
            <header id="header">

		        <div id="logo-group">
		            <span id="logo"> <img src="../../img/iner_Ok.png" alt="INER" style="width:150px;height:45px" ></span>
		        </div>

		        <span id="extr-page-header-space">
                 <span class="hidden-mobile hiddex-xs">¿No es usuario del sistema?</span> 
                    <a href="Register.aspx" class="btn btn-danger">Solicite una cuenta</a> 
                </span>

		    </header>
        
            <div id="main" role="main">

			    <!-- MAIN CONTENT -->
			    <div id="content" class="container">

				    <div class="row">
					    <div class="col-xs-12 col-sm-12 col-md-7 col-lg-8 hidden-xs hidden-sm">
						    <h1 class="txt-color-red login-header-big">PIEEDRA</h1>
						    <div class="hero">

							    <div class="pull-left login-desc-box-l">
								    <h4 class="paragraph-header">Perfil del paciente con EPOC en diferentes regiones y altitudes de México</h4>
								    <%--<div class="login-app-icons">
									    <a href="javascript:void(0);" class="btn btn-danger btn-sm">Frontend Template</a>
									    <a href="javascript:void(0);" class="btn btn-danger btn-sm">Find out more</a>
								    </div>--%>
							    </div>
							
							    <img src="../../img/demo/iphoneview.png" class="pull-right display-image" alt="" style="width:210px">

						    </div>

						    <div class="row">
							    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
								    <h5 class="about-heading">About SmartAdmin - Are you up to date?</h5>
								    <p>
									    Sed ut perspiciatis unde omnis iste natus error sit voluptatempxccusantium doloremque laudantium, totam rem aperiam, eaque ipsa.
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
							    <form  id="login-form" class="smart-form client-form">
								    <header>
									    Ingresa tus credenciales
								    </header>

								    <fieldset>
								        <form id="FormInputs" runat="server">
								            <section>
										    <label class="label">Usuario</label>
									        <label class="input"> <i class="icon-append fa fa-user"></i>
									            <input type="text" name="Ficha" id="InFicha" runat="server" class="form-control"/>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="InFicha" ErrorMessage="Escriba la Ficha" Display="Dynamic" 
                                                ForeColor="Red">*Escriba la Ficha</asp:RequiredFieldValidator>
											    <b class="tooltip tooltip-top-right"><i class="fa fa-user txt-color-teal"></i> Por favor ingresa tu ficha</b></label>
									        </section>
                                            <section>
										    <label class="label">Password</label>
										    <label class="input"> <i class="icon-append fa fa-lock"></i>
										        <input type="password" name="password" id="InPassword" runat="server"/>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="InPassword" ErrorMessage="Escriba el Password" Display="Dynamic" 
                                                ForeColor="Red">*Escriba el Password</asp:RequiredFieldValidator>
											    <b class="tooltip tooltip-top-right"><i class="fa fa-lock txt-color-teal"></i> Ingresa tu password</b> </label>
										    <div class="note">
											    <a href="ForgotPass.aspx">olvidaste tu Password ?</a>
										    </div>
									        </section>
                                              <!--<section>
										    <label class="checkbox">
											    <input type="checkbox" name="remember" checked="">
											    <i></i>Stay signed in</label>
									    </section>-->
                                       
                                            <asp:Button ID="ButtonIngresar" runat="server" Text="Ingresar2"  class="hidden"  OnClick="ButtonIngresar_Click" />

                                            
								        </form>
								    </fieldset>
								    <footer>
									    <button type="submit" class="btn btn-primary"  OnClick="Alerta()">
										    Ingresar
									    </button>
                                        <button type="submit" class="btn btn-primary" OnClick="CleanField()" >
										    Limpiar</button>
									    <button type="submit" class="hidden"  id="eg1" runat="server" ></button>

								    </footer>
                                    
							    </form>

						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
        </div>
    
    
    <!--================================================== -->	

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script src="../../Scripts/js/plugin/pace/pace.min.js"></script>

	    <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
	    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script> if (!window.jQuery) { document.write('<script src="../../Scripts/js/libs/jquery-2.1.1.min.js"><\/script>'); } </script>

	    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script> if (!window.jQuery.ui) { document.write('<script src="../../Scripts/js/libs/jquery-ui-1.10.3.min.js"><\/script>'); } </script>

		<!-- IMPORTANT: APP CONFIG -->
		<script src="../../Scripts/js/app.config.js"></script>
	
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
	

		<!-- CUSTOM NOTIFICATION -->
		<script src="../../Scripts/js/notification/SmartNotification.min.js"></script>

		<!-- browser msie issue fix -->
		<script src="../../Scripts/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- FastClick: For mobile devices -->
		<script src="../../Scripts/js/plugin/fastclick/fastclick.min.js"></script>

		<!-- PAGE RELATED PLUGIN(S) -->
		<script src="../../Scripts/js/plugin/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    
    
    <script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
        $(document).ready(function() {
			
			pageSetUp();
			/*
			 * Smart Notifications
			 */
			$('#eg1').click(function() {

		        $.bigBox({
		            title: "Notificación",
		            content: "out_texto.text",
		            color: "#C46A69",
		            //timeout: 6000,
		            icon: "fa fa-warning shake animated",
		            number: "1",
		            timeout: 5000
		        });

		        e.preventDefault();

		    });
		})
		</script>

    <script type="text/javascript">
			runAllForms();

			$(function() {
				// Validation
				$("#login-form").validate({
					// Rules for form validation
					rules : {
						email : {
							required : true,
							email : true
						},
						password : {
							required : true,
							minlength : 3,
							maxlength : 20
						}
					},

					// Messages for form validation
					messages : {
						email : {
							required : 'Please enter your email address',
							email : 'Please enter a VALID email address'
						},
						password : {
							required : 'Please enter your password'
						}
					},

					// Do not change code below
					errorPlacement : function(error, element) {
						error.insertAfter(element.parent());
					}
				});
			});
		</script>

		

       
 
    
  
</body>
</html>
