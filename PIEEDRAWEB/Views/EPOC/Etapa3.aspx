<%@ Page Title="Visita 2" Language="C#" MasterPageFile="~/SiteMenu.Master" AutoEventWireup="true" CodeBehind="Etapa3.aspx.cs" Inherits="PIEEDRAWEB.Views.EPOC.Etapa3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" language="javascript">
        function fnKeyPress(evt, opc) {	//-- Objetivo : valida que se teclee numeros  
            //-- Variables de entrada : evt = Evento que se ejecuto
            //-- EricZan 02/Jul/2014
            // NOTE:   Enter = 13 

            var _TextPeso = document.getElementById('<%=TextPeso.ClientID %>')
            var _TextTalla = document.getElementById('<%=TextTalla.ClientID %>')
            var _TextIMCSignos = document.getElementById('<%=TextIMCSignos.ClientID %>')
            var _TextIMC = document.getElementById('<%=TextIMC.ClientID %>')
            var _TextSaturacion = document.getElementById('<%=TextSaturacion.ClientID %>')
            var _TextFC = document.getElementById('<%=TextFC.ClientID %>')
            var _TextFR = document.getElementById('<%=TextFR.ClientID %>')
            var _TextSistolica = document.getElementById('<%=TextSistolica.ClientID %>')
            var _TextDiastolica = document.getElementById('<%=TextDiastolica.ClientID %>')
            var _TextCintura = document.getElementById('<%=TextCintura.ClientID %>')
            

            evt = (evt) ? evt : window.event
            var charCode = (evt.which) ? evt.which : evt.keyCode

            if (charCode == 13 || charCode == 1) {
                if (_TextPeso.value == '') {
                    _TextPeso.focus();
                    _TextPeso.value = '';
                    return false;
                }
                else if (_TextPeso.value < 30 || _TextPeso.value > 150) {
                    alert('EL VALOR DEBE ESTAR ENTRE 30 Y 150');
                    _TextPeso.focus();
                    _TextPeso.value = '';
                    return false;
                }                
                if (_TextTalla.value == '') {                   
                    _TextTalla.focus();
                    _TextTalla.value = '';
                    return false;
                }
                else if (_TextTalla.value < 1.10 || _TextTalla.value > 2.10) {
                    alert('EL VALOR DEBE ESTAR ENTRE 1.10 Y 2.10');
                    _TextTalla.focus();
                    _TextTalla.value = '';
                    return false;
                }

                var r;    // Se declara la variable
                r = parseFloat(_TextPeso.value) / (parseFloat(_TextTalla.value) * parseFloat(_TextTalla.value)); // Convierte en Float y sumar
                _TextIMCSignos.value = r.toFixed(2); // El resultado en TextBox resultado
                _TextIMC.value = _TextIMCSignos.value;

                if (_TextSaturacion.value == '') {                   
                    _TextSaturacion.focus();
                    _TextSaturacion.value = '';
                    return false;
                }
                else if (_TextSaturacion.value < 60 || _TextSaturacion.value > 100) {
                    alert('EL VALOR DEBE ESTAR ENTRE 60 Y 100');
                    _TextSaturacion.focus();
                    _TextSaturacion.value = '';
                    return false;
                }
                if (_TextFC.value == '') {                   
                    _TextFC.focus();
                    _TextFC.value = '';
                    return;
                }
                else if (_TextFC.value < 40 || _TextFC.value > 150) {
                    alert('EL VALOR DEBE ESTAR ENTRE 40 Y 150');
                    _TextFC.focus();
                    _TextFC.value = '';
                    return;
                }
                if (_TextFR.value == '') {                   
                    _TextFR.focus();
                    _TextFR.value = '';
                    return;
                }
                else if (_TextFR.value < 12 || _TextFR.value > 36) {
                    alert('EL VALOR DEBE ESTAR ENTRE 12 Y 36');
                    _TextFR.focus();
                    _TextFR.value = '';
                    return;
                }
                if (_TextSistolica.value == '') {                    
                    _TextSistolica.focus();
                    _TextSistolica.value = '';
                    return;
                }
                else if (_TextSistolica.value < 70 || _TextSistolica.value > 220) {
                    alert('EL VALOR DEBE ESTAR ENTRE 70 Y 220');
                    _TextSistolica.focus();
                    _TextSistolica.value = '';
                    return;
                }
                if (_TextDiastolica.value == '') {                   
                    _TextDiastolica.focus();
                    _TextDiastolica.value = '';
                    return;
                }
                else if (_TextDiastolica.value < 30 || _TextDiastolica.value > 120) {
                    alert('EL VALOR DEBE ESTAR ENTRE 30 Y 120');
                    _TextDiastolica.focus();
                    _TextDiastolica.value = '';
                    return;
                }
                if (_TextCintura.value == '') {                    
                    _TextCintura.focus();
                    _TextCintura.value = '';
                    return;
                }
                if (_TextCintura.value < 50 || _TextCintura.value > 160) {
                    alert('EL VALOR DEBE ESTAR ENTRE 50 Y 160');
                    _TextCintura.focus();
                    _TextCintura.value = '';
                    return;
                }
                else {
                    if (opc == '1') { _TextTalla.focus(); }
                    if (opc == '2') { _TextSaturacion.focus(); }
                    //if (opc == '3') { .focus(); }
                    if (opc == '4') { _TextFC.focus(); }
                    if (opc == '5') { _TextFR.focus(); }
                    if (opc == '6') { _TextSistolica.focus(); }
                    if (opc == '7') { _TextDiastolica.focus(); }
                    if (opc == '8') { _TextCintura.focus(); }
                    if (opc == '9') { _TextPeso.focus(); }

                    return false;
                }

            }
            else if (charCode == 9) {
                alert('Presione la tecla Enter para validar');
            }
        }
        ///////////////////////////////////////////////////////////////////////////////////////////


        function fnKeyPress2(evt, opc) {	//-- Objetivo : valida que se teclee numeros  
            //-- Variables de entrada : evt = Evento que se ejecuto
            //-- EricZan 02/Jul/2014
            // NOTE:   Enter = 13 

            var _Text1VEF = document.getElementById('<%=Text1VEF.ClientID %>')
            var _Text2VEF = document.getElementById('<%=Text2VEF.ClientID %>')
            var _Text3FVC = document.getElementById('<%=Text3FVC.ClientID %>')
            var _Text4FVC = document.getElementById('<%=Text4FVC.ClientID %>')
            var _Text5Rel = document.getElementById('<%=Text5Rel.ClientID %>')                        

            evt = (evt) ? evt : window.event
            var charCode = (evt.which) ? evt.which : evt.keyCode

            if (charCode == 13 || charCode == 1) {
                if (_Text1VEF.value == '') {
                    _Text1VEF.focus();
                    _Text1VEF.value = '';
                    return false;
                }
                else if (_Text1VEF.value < 90 || _Text1VEF.value > 4000) {
                    alert('EL VALOR DEBE ESTAR ENTRE 90 Y 4000');
                    _Text1VEF.focus();
                    _Text1VEF.value = '';
                    return false;
                }                
                if (_Text2VEF.value == '') {
                    _Text2VEF.focus();
                    _Text2VEF.value = '';
                    return false;
                }
                else if (_Text2VEF.value < 5 || _Text2VEF.value > 150) {
                    alert('EL VALOR DEBE ESTAR ENTRE 5 Y 150');
                    _Text2VEF.focus();
                    _Text2VEF.value = '';
                    return false;
                } 
                if (_Text3FVC.value == '') {
                    _Text3FVC.focus();
                    _Text3FVC.value = '';
                    return false;
                }
                else if (_Text3FVC.value < 700 || _Text3FVC.value > 7000) {
                    alert('EL VALOR DEBE ESTAR ENTRE 700 Y 7000');
                    _Text3FVC.focus();
                    _Text3FVC.value = '';
                    return false;
                }
                if (_Text4FVC.value == '') {
                    _Text4FVC.focus();
                    _Text4FVC.value = '';
                    return false;
                }
                else if (_Text4FVC.value < 30 || _Text4FVC.value > 170) {
                    alert('EL VALOR DEBE ESTAR ENTRE 30 Y 170');
                    _Text4FVC.focus();
                    _Text4FVC.value = '';
                    return false;
                }
                if (_Text5Rel.value == '') {
                    _Text5Rel.focus();
                    _Text5Rel.value = '';
                    return false;
                }
                else if (_Text5Rel.value < 10 || _Text5Rel.value > 69.9) {
                    alert('EL VALOR DEBE ESTAR ENTRE 10 Y 69.9');
                    _Text5Rel.focus();
                    _Text5Rel.value = '';
                    return false;
                }                
                else {
                    if (opc == '1') { _Text2VEF.focus(); }
                    if (opc == '2') { _Text3FVC.focus(); }
                    if (opc == '3') { _Text4FVC.focus(); }
                    if (opc == '4') { _Text5Rel.focus(); }
                    if (opc == '5') { _Text1VEF.focus(); }

                    return false;
                }
            }
            else if (charCode == 9) {
                alert('Presione la tecla Enter para validar');
            }
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- MAIN PANEL -->
		<div id="main" role="main">
		
		    <div id="content">
				
				<!-- widget grid -->
				<section id="widget-grid">

				    <div class="row"> 
				        <div class="col-md-12">
				            <div class="alert alert-info alert-block">
				                <div class="col-md-12">
                                    <%--<a class="close" data-dismiss="alert" href="#">×</a>--%>
                                    <h4 class="alert-heading">Datos del Paciente</h4>
                                </div>
                                <div class="col-md-4">
                                    <i class="fa fa-user fa-fw"></i>
                                    <asp:Label ID="LabelNombrePaciente" runat="server" Text="José de Jesús Vera López"></asp:Label>
                                </div>                         
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <label class="col-md-2 control-label">Folio</label>
                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                            <input class="form-control input-md" type="text" id="TextboxFolioAntec" name="FolioAntec" placeholder="Folio" disabled="disabled" runat="server" />
                                        </div>
                                    </div>
                                </div>
                          
                                <%--<div class="col-md-4">
                                <div class="form-group">
                                    <div class="input-group">
                                        <label class="col-md-1 control-label">Ficha</label>
                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                        <input class="form-control input-md" type="text" id="Text29" name="FichaAntec" placeholder="Ficha" disabled="disabled" runat="server"  />
                                    </div>
                                </div>
                            </div>--%>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-group">
                                                <label class="col-md-1 control-label">Fecha</label>
                                                <span class="input-group-addon"><i class="fa fa-calendar fa-fw"></i></span>
                                                <input class="form-control input-md" type="text" id="FechaExaMed" name="Fecha" placeholder="Fecha" disabled="disabled" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="input-group">
                                               <label class="col-md-1 control-label">Sexo</label>
                                            <span class="input-group-addon"><i class="fa fa-female fa-fw"></i><i class="fa fa-male fa-fw"></i></span>
                                            <input class="form-control input-md" type="text" id="IdSexoheader" name="SexoAntec" placeholder="Sexo" disabled="disabled" runat="server"  />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="alert alert-warning fade in">						
						<i class="fa-fw fa fa-warning"></i>
						<strong>Información sobre la segunda visita</strong> (Sexto mes).                        
					</div>                   
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="select2">
                                    <label>Tipo de visita:</label>                                               
                                    <div class="input-group">                                                 
                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                    
                                            <asp:DropDownList ID="DropDownListTipoVisita" runat="server" class="select2">
                                                <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                <asp:ListItem Value="1">Presencial</asp:ListItem>
                                                <asp:ListItem Value="2">No presencial</asp:ListItem>                                                
                                            </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  
                    <div class="col-sm-6">
                        <div class="form-group">
                            <div class="input-group">
                                <div class="select2">
                                    <label>Si el tipo de visita es distinto a "Presencial", anote la causa:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="icon-append fa fa-list"></i></span>
                                        <input class="form-control input-md" type="text" id="TextNoVisita" name="Otros" placeholder="Causa" runat="server" />                                                                                            
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                          

                       <!-- row -->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<%--<article class="col-sm-12 col-md-12 col-lg-6">--%>
						<article class="col-lg-12">
						
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="PermanenciaProtocol" 
                                data-widget-colorbutton="false" 
                                data-widget-editbutton="false" 
                                data-widget-deletebutton="false"
                                 visible="True"
                                runat="server">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-eye-slash"></i> </span>
									<h2>I. Permanencia en el protocolo</h2>
								</header>
				
								<!-- widget div-->
								<div>
								
                                <section id="widget-grid1" class="">
                                    <!-- row -->
                                    <div class="row">
                                        <!-- NEW WIDGET START -->
                                        <article class="col-sm-12 col-md-12 col-lg-12">
                                            <!-- Widget ID (each widget will need unique ID)-->
                                                                                           
                                                    <div class="row">
                                                        <form id="filtrosBusquedaForm">
                                                            <fieldset>
                                                                <div id="bootstrap-wizard-0" class="col-sm-12">
                                                                    <div class="row">                                                                                                                                                                                                                         
                                                                            <div class="col-sm-6">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Continúa en el protocolo:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxProtocoloSi" runat="server"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxProtocoloNo"><i></i>No</label>                                                                                                    
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                                                                                                                                                                          
                                                                            <div class="col-sm-6">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label style="color:white">Continúa en el protocolo:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                                    <input class="form-control input-md" type="text" id="Text1" name="Protocolo" placeholder="Causa" runat="server" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                     
                                                                    </div>
                                                                </div>
                                                             
                                                            </fieldset>
                                                        </form>
                                                    </div>
                                               
                                                <!-- end widget content -->
                                        
                                            <!-- end widget -->
                                        </article>
                                        <!-- WIDGET END -->
                                    </div>
                                </section>
                                </div>
                            </div>
                        </article>
                    </div>
        
                    <!-- end row -->        
				
					<!-- row -->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<%--<article class="col-sm-12 col-md-12 col-lg-6">--%>
						<article class="col-lg-12">
						
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="HistoriaExacerbaciones" 
                                data-widget-colorbutton="false" 
                                data-widget-editbutton="false" 
                                data-widget-deletebutton="false"
                                runat="server">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-eye-slash"></i> </span>
									<h2>II. Historia de exacerbaciones desde la última visita</h2>
								</header>
				
								<!-- widget div-->
								<div>
								
                                <section id="widget-grid" class="">
                                    <!-- row -->
                                    <div class="row">
                                        <!-- NEW WIDGET START -->
                                        <article class="col-sm-12 col-md-12 col-lg-12">
                                            <!-- Widget ID (each widget will need unique ID)-->
                
                                                <div>
                                                    <div class="row">
                                                        <form>
                                                            <fieldset>
                                                                <div id="bootstrap-wizard-0" class="col-sm-12">
                                                                    <div class="row">
                                                                         <div class="col-sm-12">                                                                            
                                                                            <div class="alert alert-info alert-block">								                                                
								                                                <h4 class="alert-heading">Info!</h4>
								                                                <strong>Definición de Exacerbación:</strong> Un complejo de eventos / síntomas en las vías 
                                                                                respiratorias inferiores (aumento o nueva aparición), de al menos dos de los siguientes datos:
                                                                                 tos, producción de esputo (volumen), sibilancia, dificultad para respirar u opresión en el pecho
                                                                                 con duración de al menos tres días, que requieran un cambio en el tratamiento.
                                                                                <br />
                                                                                <br />
                                                                                <strong>Moderada:</strong> Uso de cortisona sin requerir hospitalización (con o sin antibiótico agregado).
                                                                                <br />
                                                                                <br />
                                                                                <strong>Grave:</strong> Hospitalización por exacerbación de EPOC, sin requerir algún tipo de ventilación mecánica.
                                                                                <br />
                                                                                <br />
                                                                                <strong>Muy grave:</strong> Hospitalización por exacerbación de EPOC que requirió algún tipo de ventilación mecánica.
							                                                </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <dl>Exacerbaciones moderadas:
                                                                                              <dt>¿Requirió agregar tratamiento con esteroide sistémico?.</dt>
                                                                                            </dl>                                                                                            
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">                                                                                            
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxExacerModeradasSi" runat="server"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxExacerModeradasNo"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">                                                                                                                                                                                        
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextExacerModeradas" name="Edad" placeholder="No. de exacerbaciones" runat="server" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-sm-12">                                                                    
                                                                            <div class="col-sm-4">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <dl>Exacerbaciones graves:
                                                                                                  <dt>¿requirió hospitalizarse por exacerbación de EPOC sin ameritar algún tipo de ventilación mecánica en el año previo?.</dt>
                                                                                                </dl>                                                                                            
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">                                                                                            
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxExacerbaGravesSi" runat="server"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxExacerbaGravesNo"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">                                                                                                                                                                                        
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextExacerbaGraves" name="Edad" placeholder="No. de exacerbaciones" runat="server" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-12">                                                              
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <dl>Exacerbaciones muy graves:
                                                                                              <dt>¿requirió hospitalizarse por exacerbación de EPOC ameritando algún tipo de ventilación mecánica en el año previo?.</dt>
                                                                                            </dl>                                                                                            
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">                                                                                            
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxExacerbaMuyGravesSi" runat="server"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxExacerbaMuyGravesNo"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">                                                                                                                                                                                        
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextExacerbaMuyGraves" name="Edad" placeholder="No. de exacerbaciones" runat="server" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>                                                                        
                                                                    </div>
                                                                </div>
                                                            </fieldset>
                                                        </form>
                                                    </div>
                                                </div>
                                                <!-- end widget content -->
           
                                            <!-- end widget -->
                                        </article>
                                        <!-- WIDGET END -->
                                    </div>
        
                                    <!-- end row -->
                                </section>
							</div>
							<!-- end widget div -->
                                				
						</div>
						<!-- end widget -->

					    </article>
						<!-- WIDGET END -->

				    </div>
				
				    <!-- end row -->
                    
                    <!-- row -->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<%--<article class="col-sm-12 col-md-12 col-lg-6">--%>
						<article class="col-lg-12">
						
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="Comorbilidades" 
                                data-widget-colorbutton="false" 
                                data-widget-editbutton="false" 
                                data-widget-deletebutton="false"
                                runat="server">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-eye-slash"></i> </span>
									<h2>III. Comorbilidades desde la última visita</h2>
								</header>
				
								<!-- widget div-->
								<div>
								
                                <section id="widget-gridComorbilidades" class="">
                                    <!-- row -->
                                    <div class="row">
                                        <!-- NEW WIDGET START -->
                                        <article class="col-sm-12 col-md-12 col-lg-12">
                                            <!-- Widget ID (each widget will need unique ID)-->
                
                                                <div>
                                                    <div class="row">
                                                        <form>
                                                            <fieldset>
                                                                <div id="bootstrap-wizard-1" class="col-sm-12">
                                                                    <div class="row">
                                                                        <div class="col-sm-12">
                                                                            <div class="smart-form">
                                                                                <div class="widget-body no-padding ">
                                                                                    <header>
                                                                                        ¿Le han hecho un diagnóstico adicional de los siguientes campos desde la última visita?
                                                                                    </header>                                                                                    
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Cáncer:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxCancerSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxCancerNo"><i></i>No</label>
                                                                                                <input class="form-control input-md" type="text" id="TextCancer" name="Cancer" placeholder="Tipo de cáncer" runat="server" />
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Diabetes Mellitus:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxDiabetesSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxDiabetesNo"><i></i>No</label>                                                                                                
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Hipertensión Arterial:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxHipertensionSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxHipertensionNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Dislipidemia:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxDislipidemiaSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxDislipidemiaNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Infarto Agudo al Miocardio:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxInfartoSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxInfartoNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Insuficiencia Cardiaca:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxInsufiCardiSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxInsufiCardiNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Gastritis, úlcera péptica o ERGE:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxGastritisSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxGastritisNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Apnea obstructiva del sueño:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxApneaSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxApneaNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Arritmia:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxArritmiaSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxArritmiaNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Asma bronquial:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxAsmaSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxAsmaNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Osteoporosis:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxOsteoporosisSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxOsteoporosisNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Depresión:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxDepresionSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxDepresionNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Tuberculosis:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxTuberculosisSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxTuberculosisNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Reflujo gastroesofágico:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxReflujoGastroSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxReflujoGastroNo"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Otro, ¿cuál?:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <input class="form-control input-md" type="text" id="TextOtroCual" name="Cancer" placeholder="Especifique" runat="server" />
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </fieldset>
                                                        </form>
                                                    </div>
                                                </div>
                                                <!-- end widget content -->
           
                                            <!-- end widget -->
                                        </article>
                                        <!-- WIDGET END -->
                                    </div>
        
                                    <!-- end row -->
                                </section>
							</div>
							<!-- end widget div -->
                                				
						</div>
						<!-- end widget -->

					    </article>
						<!-- WIDGET END -->

				    </div>
				
					<!-- end row -->


                        <!-- row -->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<%--<article class="col-sm-12 col-md-12 col-lg-6">--%>
						<article class="col-lg-12">
						
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="DivSignosVitales" 
                                data-widget-colorbutton="false" 
                                data-widget-editbutton="false" 
                                data-widget-deletebutton="false"
                                 visible="True"
                                runat="server">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-eye-slash"></i> </span>
									<h2>IV. Signos Vitales</h2>
								</header>
				
								<!-- widget div-->
								<div>
								
                                <section id="widget-grid" class="">
                                    <!-- row -->
                                    <div class="row">
                                        <!-- NEW WIDGET START -->
                                        <article class="col-sm-12 col-md-12 col-lg-12">
                                            <!-- Widget ID (each widget will need unique ID)-->
                
                                                <div>
                                                    <div class="row">
                                                        <form id="filtrosBusquedaForm3">
                                                            <fieldset>
                                                                <div id="bootstrap-wizard-4" class="col-sm-12">
                                                                    <div class="row">                                                                            
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Peso:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <input class="form-control input-md signos-vitales" type="text" id="TextPeso" name="Peso" placeholder="Peso" runat="server" onKeyPress="return fnKeyPress (event,1)" onclick="return fnKeyPress(event, 1)" maxlength="3"/>
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>Kg</strong> (No menos de 30 Kg ni más de 200 Kg)
													                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Talla:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextTalla" name="Talla" placeholder="Talla" runat="server" onKeyPress="return fnKeyPress (event,2)" onclick="return fnKeyPress(event, 2)" maxlength="4"/>
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>cms</strong>
													                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>IMC:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <input class="form-control input-md" type="text" id="TextIMCSignos" name="IMC" placeholder="IMC" runat="server" disabled="disabled" />
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong style="color:white">cms</strong>
													                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Saturación sin O2:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextSaturacion" name="Saturación" placeholder="Saturación" runat="server" onKeyPress="return fnKeyPress (event,4)" onclick="return fnKeyPress(event, 4)" maxlength="3"/>
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>%</strong> (No menos de 50%)
													                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>FC:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextFC" name="FC" placeholder="FC" runat="server" onKeyPress="return fnKeyPress (event,5)" onclick="return fnKeyPress(event, 5)" maxlength="3"/>
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>X min.</strong> (No menos de 40)
													                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>FR:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextFR" name="FR" placeholder="FR" runat="server" onKeyPress="return fnKeyPress (event,6)" onclick="return fnKeyPress(event, 6)" maxlength="2"/>
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>X min.</strong>
													                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Presión Arterial (mmHg) Sistólica:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextSistolica" name="Sistolica" placeholder="Sistolica" runat="server" onKeyPress="return fnKeyPress (event,7)" onclick="return fnKeyPress(event, 7)" maxlength="3"/>
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>mmHg</strong>
													                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Presión Arterial (mmHg) Diastólica:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextDiastolica" name="Diastolica" placeholder="Diastolica" runat="server" onKeyPress="return fnKeyPress (event,8)" onclick="return fnKeyPress(event, 8)" maxlength="3"/>
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>mmHg</strong>
													                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Cintura:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextCintura" name="Cintura" placeholder="Cintura" runat="server" onKeyPress="return fnKeyPress (event,9)" onclick="return fnKeyPress(event, 9)" maxlength="3"/>
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>cms</strong>
													                                        </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                                                                                                        
                                                                    </div>
                                                                </div>                                                                
                                                        </fieldset>
                                                    </form>
                                                </div>
                                            </div>
                                                <!-- end widget content -->
                                        
                                            <!-- end widget -->
                                        </article>
                                        <!-- WIDGET END -->
                                    </div>
                                </section>

                                </div>
                            </div>
                        </article>
                    </div>
        
                    <!-- end row -->

                    <!-- row  VI-->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<%--<article class="col-sm-12 col-md-12 col-lg-6">--%>
						<article class="col-lg-12">
						
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="EvaluacionEPOC" 
                                data-widget-colorbutton="false" 
                                data-widget-editbutton="false" 
                                data-widget-deletebutton="false"
                                 visible="True"
                                runat="server">
								<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
								<header>
									<span class="widget-icon"> <i class="fa fa-eye-slash"></i> </span>
									<h2>V. Evaluación integral de la EPOC</h2>
								</header>
				
								<!-- widget div-->
								<div>
								
                                <section id="widget-grid55" class="">
                                    <!-- row -->
                                    <div class="row">
                                        <!-- NEW WIDGET START -->
                                        <article class="col-sm-12 col-md-12 col-lg-12">
                                            <!-- Widget ID (each widget will need unique ID)-->
                
                                                <div>
                                                    <div class="row">
                                                        <form id="filtrosBusquedaForm33">
                                                            <fieldset>
                                                                <div id="bootstrap-wizard-44" class="col-sm-12">

                                                                    <div class="row">

                                                                        <div class="col-sm-12">
                                                                            <div class="alert alert-success fade in">
								                                                <i class="fa-fw fa fa-check"></i>
								                                                <strong>A) Indice de riesgo de muerte (Indice BODE):</strong>
							                                                </div>
                                                                            <div class="smart-form">
                                                                                <div class="widget-body no-padding ">
                                                                                    <header>
                                                                                        Espirometría Post-BD
                                                                                    </header>                                                                                    
                                                                                </div>
                                                                            </div>                                                                              
                                                                            <div class="col-sm-2">
                                                                                 <div class="form-group">													                              
													                                <label class="col-md-9 control-label">1.VEF1 ml</label>
                                                                                     <div class="col-md-4">
														                                <input class="form-control input-md" type="text" id="Text1VEF" name="1VEF" placeholder="" runat="server" style="width:56px" maxlength="4" onKeyPress="return fnKeyPress2 (event,1)" onclick="return fnKeyPress2(event, 1)"/>
													                                </div>                                                                                     
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-2">
                                                                                 <div class="form-group">
													                                <label class="col-md-9 control-label">2.VEF1 %</label>
													                                <div class="col-md-4">
														                                <input class="form-control input-md" type="text" id="Text2VEF" name="2VEF" placeholder="" runat="server" style="width:50px" maxlength="3" onKeyPress="return fnKeyPress2 (event,2)" onclick="return fnKeyPress2(event, 2)"/>
													                                </div>                                                                                                                                                                          
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-2">
                                                                                 <div class="form-group">
													                                <label class="col-md-12 control-label">3.FVC/CVF ml</label>
													                                <div class="col-md-4">
														                                <input class="form-control input-md" type="text" id="Text3FVC" name="3FVC" placeholder="" runat="server" style="width:56px" maxlength="4" onKeyPress="return fnKeyPress2 (event,3)" onclick="return fnKeyPress2(event, 3)"/>
													                                </div>                                                                                                                                                                          
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-2">
                                                                                 <div class="form-group">
													                                <label class="col-md-12 control-label">4.FVC/CVF %</label>
													                                <div class="col-md-4">
														                                <input class="form-control input-md" type="text" id="Text4FVC" name="4FVC" placeholder="" runat="server" style="width:50px" maxlength="3" onKeyPress="return fnKeyPress2 (event,4)" onclick="return fnKeyPress2(event, 4)"/>
													                                </div>                                                                                                                                                                          
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                 <div class="form-group">
													                                <label class="col-md-12 control-label">5.VEF1/CVF (Máx. 69%)</label>
													                                <div class="col-md-4">
														                                <input class="form-control input-md" type="text" id="Text5Rel" name="5Rel" placeholder="" runat="server" style="width:56px" maxlength="4" onKeyPress="return fnKeyPress2 (event,5)" onclick="return fnKeyPress2(event, 5)"/>
													                                </div>                                                                                                                                                                          
												                                </div>
                                                                            </div>                                                                            
                                                                         </div>
                                                                        <div class="col-sm-12" style="margin: 20px 0 0 0">
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>IMC:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextIMC" name="IMC" placeholder="IMC" runat="server" disabled="disabled" />
                                                                                            </div>                                                                                            
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                        
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Caminata de 6 minutos</label>                                                                                            
                                                                                            <div class="note">
														                                        ¿Pudo realizar la prueba?
													                                        </div>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxPruebaSi" runat="server"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxPruebaNo"><i></i>No</label>
                                                                                            </div>
                                                                                            <div class="note">
														                                        En caso de NO indique porqué
													                                        </div>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <asp:DropDownList ID="DropDownListPruebaNo" runat="server" class="select2">
                                                                                                        <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                        <asp:ListItem Value="1">Disnea</asp:ListItem>
                                                                                                        <asp:ListItem Value="2">Ya no camina</asp:ListItem>
                                                                                                        <asp:ListItem Value="3">Fractura</asp:ListItem>
                                                                                                        <asp:ListItem Value="4">Otro</asp:ListItem>                                                                                                        
                                                                                                    </asp:DropDownList>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Metros caminados:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <input class="form-control input-md" type="text" id="TextMetrosCami" name="FC" placeholder="Metros Caminados" runat="server" disabled="disabled" />
                                                                                                </div>                                                                                            
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                        </div>
                                                                    
                                                                        <div class="col-sm-12">                                                                        
                                                                            <div class="alert alert-info alert-block">								                                                
								                                                <h4 class="alert-heading">Info!</h4>
								                                                <strong>Grado 0:</strong> - No sufro de falta de aire excepto cuando hago ejercicio intenso.
                                                                                <br />
                                                                                <br />
                                                                                <strong>Grado 1:</strong> - Me siento agitado o con falta de aire cuando apresuro el paso o camino subiendo una pendiente suave.
                                                                                <br />
                                                                                <br />
                                                                                <strong>Grado 2:</strong> - Camino más despacio que la gente de mi edad debido a la falta de aire, 
                                                                                 o tengo que parar a tomar aire cuando camino a mi propio ritmo.
                                                                                <br />
                                                                                <br />
                                                                                <strong>Grado 3:</strong> - Me detengo a respirar cuando camino más de 100 metros después de haber caminado algunos minutos.
                                                                                <br />
                                                                                <br />
                                                                                <strong>Grado 4:</strong> - No puedo salir de la casa porque me falta el aire, o me falta el aire cuando me visto o desvisto.
							                                                </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Escala de sensación de falta de aire (disnea) de mMRC:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <asp:DropDownList ID="DropDownListDisnea" runat="server" class="select2">
                                                                                                    <asp:ListItem Value="0">--SELECCIONE EL GRADO--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Grado 0</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Grado 1</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Grado 2</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Grado 3</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">Grado 4</asp:ListItem>                                                                                                    
                                                                                                </asp:DropDownList>
                                                                                        </div>                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Indice BODE:</label>
                                                                                        <label style="color:white">Escala de sensación de falta de aire</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <input class="form-control input-md" type="text" id="TextIndiceBODE" name="IndiceBODE" placeholder="Indice BODE" runat="server" disabled="disabled"/>
                                                                                        </div>
                                                                                        <%--<div class="note">
														                                    <button class="btn btn-primary" type="submit">
															                                    <i class="fa fa-search"></i>
															                                    Calcular índice BODE
														                                    </button>
													                                    </div>--%>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Su paciente se despierta durante la noche por falta de aire:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxFaltaAireSi" runat="server"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxFaltaAireNo"><i></i>No</label>
                                                                                                <label>Cuáles:</label>                                                                                                                                                                                          
                                                                                                <asp:DropDownList ID="DropDownList1" runat="server" class="select2">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Al menos 1 noche a la semana</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">De 2 a 3 noches a la semana</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Mas de 3 noches a la semana</asp:ListItem>
                                                                                                </asp:DropDownList>                                                                                           
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        <div class="col-sm-12">   
                                                                            <p class="alert alert-info">
											                                    <strong>Cuestionario CAT Calidad de Vida</strong>
										                                    </p>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Nunca Toso</label>                                                                                                                                                                                                                                                                            
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                     
                                                                                            <input type="checkbox" name="checkbox" id="checkboxToso0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxToso1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxToso2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxToso3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxToso4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxToso5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxToso6" value="6" runat="server">
																                            <i></i>6 
                                                                                      
																                                                                                                                                                                                                                                                                                                
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">                                                                                        
                                                                                        <label>Siempre estoy tosiendo</label>                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Nunca tengo flema (mucosidad) en el pecho</label>                                                                                                                                                                                                                                                                            
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                     
                                                                                            <input type="checkbox" name="checkbox" id="checkboxFlemaPecho0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxFlemaPecho1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxFlemaPecho2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxFlemaPecho3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxFlemaPecho4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxFlemaPecho5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxFlemaPecho6" value="6" runat="server">
																                            <i></i>6 
                                                                                      
																                                                                                                                                                                                                                                                                                                
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">                                                                                        
                                                                                        <label>Tengo el pecho completamente lleno de flema (mucosidad)</label>                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>No siento ninguna opresión en el pecho</label>                                                                                                                                                                                                                                                                            
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                     
                                                                                            <input type="checkbox" name="checkbox" id="checkboxOpresionPecho0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxOpresionPecho1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxOpresionPecho2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxOpresionPecho3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxOpresionPecho4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxOpresionPecho5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxOpresionPecho6" value="6" runat="server">
																                            <i></i>6 
                                                                                      
																                                                                                                                                                                                                                                                                                                
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">                                                                                        
                                                                                        <label>Siento mucha opresión en el pecho</label>                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Cuando subo una pendiente o un tramo de escalera, no me falta el aire</label>                                                                                                                                                                                                                                                                            
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                     
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSubePendiente0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSubePendiente1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSubePendiente2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSubePendiente3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSubePendiente4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSubePendiente5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSubePendiente6" value="6" runat="server">
																                            <i></i>6 
                                                                                      
																                                                                                                                                                                                                                                                                                                
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">                                                                                        
                                                                                        <label>Cuando subo una pendiente o un tramo de escaleras, me falta mucho el aire</label>                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>No me siento limitado para realizar actividades domésticas</label>                                                                                                                                                                                                                                                                            
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                     
                                                                                            <input type="checkbox" name="checkbox" id="checkboxActiDomes0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxActiDomes1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxActiDomes2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxActiDomes3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxActiDomes4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxActiDomes5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxActiDomes6" value="6" runat="server">
																                            <i></i>6 
                                                                                      
																                                                                                                                                                                                                                                                                                                
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">                                                                                        
                                                                                        <label>Me siento muy limitado para realizar actividades domésticas</label>                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Me siento seguro para salir de casa a pesar de la afección pulmonar que padezco</label>                                                                                                                                                                                                                                                                            
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                     
                                                                                            <input type="checkbox" name="checkbox" id="checkboxAfecPulmo0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxAfecPulmo1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxAfecPulmo2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxAfecPulmo3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxAfecPulmo4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxAfecPulmo5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxAfecPulmo6" value="6" runat="server">
																                            <i></i>6 
                                                                                      
																                                                                                                                                                                                                                                                                                                
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">                                                                                        
                                                                                        <label>No me siento nada seguro al salir de casa debido a la afección pulmonar que padezco</label>                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Duermo sin problemas</label>                                                                                                                                                                                                                                                                            
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                     
                                                                                            <input type="checkbox" name="checkbox" id="checkboxDormir0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxDormir1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxDormir2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxDormir3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxDormir4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxDormir5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxDormir6" value="6" runat="server">
																                            <i></i>6 
                                                                                      
																                                                                                                                                                                                                                                                                                                
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">                                                                                        
                                                                                        <label>Tengo problemas para dormir debido a la afección pulmonar que padezco</label>                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Tengo mucha energía</label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                     
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergia0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergia1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergia2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergia3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergia4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergia5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergia6" value="6" runat="server">
																                            <i></i>6 
                                                                                      
																                                                                                                                                                                                                                                                                                                
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">                                                                                        
                                                                                        <label>No tengo ninguna energía</label>                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>  
                                                                        <div class="col-sm-6">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Total de puntos:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                                <input class="form-control input-md" type="text" id="TextTotalPuntos" name="TotalPuntos" placeholder="" runat="server" disabled="disabled"/>
                                                                                            </div>
                                                                                            <div class="note">
														                                        <button class="btn btn-primary" type="submit">
															                                        <i class="fa fa-save"></i>
															                                        Guardar Cambios
														                                        </button>
													                                    </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                        
                                                                    </div>

                                                                </div>                                                                                           
                                                                                                                                 
                                                            </fieldset>
                                                        </form>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </section>
                                
                                </div>

                            </div>
                                           
                                                <!-- end widget content -->
                                        
                                            <!-- end widget -->
                        </article>
                                        <!-- WIDGET END -->
                    </div>
                                        
                    <!-- end row -->


                 
                    
                </section>								
				
			</div>								
				
		</div>
    	
		<!-- END MAIN PANEL -->

    <script type="text/javascript">
		
		// DO NOT REMOVE : GLOBAL FUNCTIONS!
		
		$(document).ready(function() {
			
			pageSetUp();

			var $checkoutForm = $('#checkout-form').validate({
			// Rules for form validation
				rules : {
					fname : {
						required : true
					},
					lname : {
						required : true
					},
					email : {
						required : true,
						email : true
					},
					phone : {
						required : true
					},
					country : {
						required : true
					},
					city : {
						required : true
					},
					code : {
						required : true,
						digits : true
					},
					address : {
						required : true
					},
					name : {
						required : true
					},
					card : {
						required : true,
						creditcard : true
					},
					cvv : {
						required : true,
						digits : true
					},
					month : {
						required : true
					},
					year : {
						required : true,
						digits : true
					}
				},
		
				// Messages for form validation
				messages : {
					fname : {
						required : 'Please enter your first name'
					},
					lname : {
						required : 'Please enter your last name'
					},
					email : {
						required : 'Please enter your email address',
						email : 'Please enter a VALID email address'
					},
					phone : {
						required : 'Please enter your phone number'
					},
					country : {
						required : 'Please select your country'
					},
					city : {
						required : 'Please enter your city'
					},
					code : {
						required : 'Please enter code',
						digits : 'Digits only please'
					},
					address : {
						required : 'Please enter your full address'
					},
					name : {
						required : 'Please enter name on your card'
					},
					card : {
						required : 'Please enter your card number'
					},
					cvv : {
						required : 'Enter CVV2',
						digits : 'Digits only'
					},
					month : {
						required : 'Select month'
					},
					year : {
						required : 'Enter year',
						digits : 'Digits only please'
					}
				},
		
				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
					
			var $registerForm = $("#smart-form-register").validate({
	
				// Rules for form validation
				rules : {
					username : {
						required : true
					},
					email : {
						required : true,
						email : true
					},
					password : {
						required : true,
						minlength : 3,
						maxlength : 20
					},
					passwordConfirm : {
						required : true,
						minlength : 3,
						maxlength : 20,
						equalTo : '#password'
					},
					firstname : {
						required : true
					},
					lastname : {
						required : true
					},
					gender : {
						required : true
					},
					terms : {
						required : true
					}
				},
	
				// Messages for form validation
				messages : {
					login : {
						required : 'Please enter your login'
					},
					email : {
						required : 'Please enter your email address',
						email : 'Please enter a VALID email address'
					},
					password : {
						required : 'Please enter your password'
					},
					passwordConfirm : {
						required : 'Please enter your password one more time',
						equalTo : 'Please enter the same password as above'
					},
					firstname : {
						required : 'Please select your first name'
					},
					lastname : {
						required : 'Please select your last name'
					},
					gender : {
						required : 'Please select your gender'
					},
					terms : {
						required : 'You must agree with Terms and Conditions'
					}
				},
	
				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
	
			var $reviewForm = $("#review-form").validate({
				// Rules for form validation
				rules : {
					name : {
						required : true
					},
					email : {
						required : true,
						email : true
					},
					review : {
						required : true,
						minlength : 20
					},
					quality : {
						required : true
					},
					reliability : {
						required : true
					},
					overall : {
						required : true
					}
				},
	
				// Messages for form validation
				messages : {
					name : {
						required : 'Please enter your name'
					},
					email : {
						required : 'Please enter your email address',
						email : '<i class="fa fa-warning"></i><strong>Please enter a VALID email addres</strong>'
					},
					review : {
						required : 'Please enter your review'
					},
					quality : {
						required : 'Please rate quality of the product'
					},
					reliability : {
						required : 'Please rate reliability of the product'
					},
					overall : {
						required : 'Please rate the product'
					}
				},
	
				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
			
			var $commentForm = $("#comment-form").validate({
				// Rules for form validation
				rules : {
					name : {
						required : true
					},
					email : {
						required : true,
						email : true
					},
					url : {
						url : true
					},
					comment : {
						required : true
					}
				},
	
				// Messages for form validation
				messages : {
					name : {
						required : 'Enter your name',
					},
					email : {
						required : 'Enter your email address',
						email : 'Enter a VALID email'
					},
					url : {
						email : 'Enter a VALID url'
					},
					comment : {
						required : 'Please enter your comment'
					}
				},
	
				// Ajax form submition
				submitHandler : function(form) {
					$(form).ajaxSubmit({
						success : function() {
							$("#comment-form").addClass('submited');
						}
					});
				},
	
				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
	
			var $contactForm = $("#contact-form").validate({
				// Rules for form validation
				rules : {
					name : {
						required : true
					},
					email : {
						required : true,
						email : true
					},
					message : {
						required : true,
						minlength : 10
					}
				},
	
				// Messages for form validation
				messages : {
					name : {
						required : 'Please enter your name',
					},
					email : {
						required : 'Please enter your email address',
						email : 'Please enter a VALID email address'
					},
					message : {
						required : 'Please enter your message'
					}
				},
	
				// Ajax form submition
				submitHandler : function(form) {
					$(form).ajaxSubmit({
						success : function() {
							$("#contact-form").addClass('submited');
						}
					});
				},
	
				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
	
			var $loginForm = $("#login-form").validate({
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
	
			var $orderForm = $("#order-form").validate({
				// Rules for form validation
				rules : {
					name : {
						required : true
					},
					email : {
						required : true,
						email : true
					},
					phone : {
						required : true
					},
					interested : {
						required : true
					},
					budget : {
						required : true
					}
				},
	
				// Messages for form validation
				messages : {
					name : {
						required : 'Please enter your name'
					},
					email : {
						required : 'Please enter your email address',
						email : 'Please enter a VALID email address'
					},
					phone : {
						required : 'Please enter your phone number'
					},
					interested : {
						required : 'Please select interested service'
					},
					budget : {
						required : 'Please select your budget'
					}
				},
	
				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
	
			// START AND FINISH DATE
			$('#startdate').datepicker({
				dateFormat : 'dd.mm.yy',
				prevText : '<i class="fa fa-chevron-left"></i>',
				nextText : '<i class="fa fa-chevron-right"></i>',
				onSelect : function(selectedDate) {
					$('#finishdate').datepicker('option', 'minDate', selectedDate);
				}
			});
			
			$('#finishdate').datepicker({
				dateFormat : 'dd.mm.yy',
				prevText : '<i class="fa fa-chevron-left"></i>',
				nextText : '<i class="fa fa-chevron-right"></i>',
				onSelect : function(selectedDate) {
					$('#startdate').datepicker('option', 'maxDate', selectedDate);
				}
			});


		
		})

		</script>
</asp:Content>
