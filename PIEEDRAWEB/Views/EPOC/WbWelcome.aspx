<%@ Page Title="Bioepoc | Bienvenido" Language="C#" MasterPageFile="~/SiteWoMen.Master" AutoEventWireup="true" CodeBehind="WbWelcome.aspx.cs" Inherits="PIEEDRAWEB.Views.EPOC.WbWelcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">     
   
    <link href="../../Content/css/default222.css" rel="stylesheet" />
    <link href="../../Content/css/component222.css" rel="stylesheet" />
    <script src="../../Content/js/modernizr.custom.js"></script>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="container">
		    <header>
		        <h1>                    
                    <asp:Label ID="LabelBienvenida" runat="server" Text="Bienvenida" Visible="true"></asp:Label>
                    <asp:Label ID="LabelNombre" runat="server" Text="Label"></asp:Label>
		            <span>¿Qué desea hacer hoy?</span>
		        </h1>
		    </header>
		    
                <div class="main clearfix">
                    <nav id="menu" class="nav">
                        <ul>
                            <li>
                                <a href="../ExamenMedico/WbClasifExa.aspx">
                                    <span class="icon">
                                        <i aria-hidden="true" class="icon-services"></i>
                                    </span>
                                    <span>A) Ingresar paciente nuevo</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon">
                                        <i aria-hidden="true" class="icon-blog"></i>
                                    </span>
                                    <span>B) Agregar visita a paciente subsecuente</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="icon">
                                        <i aria-hidden="true" class="icon-team"></i>
                                    </span>
                                    <span>Reportes</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div> 
		</div><!-- /container -->
		
        <script>
			//  The function to change the class
			var changeClass = function (r,className1,className2) {
				var regex = new RegExp("(?:^|\\s+)" + className1 + "(?:\\s+|$)");
				if( regex.test(r.className) ) {
					r.className = r.className.replace(regex,' '+className2+' ');
			    }
			    else{
					r.className = r.className.replace(new RegExp("(?:^|\\s+)" + className2 + "(?:\\s+|$)"),' '+className1+' ');
			    }
			    return r.className;
			};	

			//  Creating our button in JS for smaller screens
			var menuElements = document.getElementById('menu');
			menuElements.insertAdjacentHTML('afterBegin','<button type="button" id="menutoggle" class="navtoogle" aria-hidden="true"><i aria-hidden="true" class="icon-menu"> </i> Menu</button>');

			//  Toggle the class on click to show / hide the menu
			document.getElementById('menutoggle').onclick = function() {
				changeClass(this, 'navtoogle active', 'navtoogle');
			}
			document.onclick = function(e) {
				var mobileButton = document.getElementById('menutoggle'),
					buttonStyle =  mobileButton.currentStyle ? mobileButton.currentStyle.display : getComputedStyle(mobileButton, null).display;

				if(buttonStyle === 'block' && e.target !== mobileButton && new RegExp(' ' + 'active' + ' ').test(' ' + mobileButton.className + ' ')) {
					changeClass(mobileButton, 'navtoogle active', 'navtoogle');
				}
			}
		</script>

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
		<script src="../../Content/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> 

		<!-- browser msie issue fix -->
		<script src="../../Content/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>

		<!-- FastClick: For mobile devices -->
		<script src="../../Content/js/plugin/fastclick/fastclick.min.js"></script>
    
    </div>
</asp:Content>
