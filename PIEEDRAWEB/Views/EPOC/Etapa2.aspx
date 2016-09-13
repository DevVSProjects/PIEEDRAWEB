<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMenu.Master" AutoEventWireup="true" CodeBehind="Etapa2.aspx.cs" Inherits="PIEEDRAWEB.Views.EPOC.Etapa2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

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
						<strong>Estatus Vital</strong> (Tercer mes).
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

                                                                         <div class="col-sm-12">
                                                                            <div class="alert alert-success fade in">
								                                                <i class="fa-fw fa fa-check"></i>
								                                                <strong>Llamada telefónica 1:</strong>
							                                                </div>                                                                             
                                                                             <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Se pudo contactar al paciente:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxContactPacienSi" runat="server"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxContactPacienNo"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Número de llamadas realizadas:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                                <input class="form-control input-md" type="text" id="TextLamadasReali" name="Llamadas" placeholder="Llamadas realizadas" runat="server" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                             
                                                                            <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Continúa en el protocolo:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxProtocoloSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxProtocoloNo"><i></i>No</label>
                                                                                                <input class="form-control input-md" type="text" id="TextProtocolo" name="Protocolo" placeholder="Causa" runat="server" />
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
							<div class="jarviswidget" id="ReporteDefuncion" 
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
									<h2>IV. Reporte de defunción</h2>
								</header>
				
								<!-- widget div-->

                                <div>
                                    <section id="widget-grid" class="">
                                            <!-- row -->
                                            <div class="row">
                                                <!-- NEW WIDGET START -->
                                                <article class="col-sm-12 col-md-12 col-lg-12">
                                                    <!-- Widget ID (each widget will need unique ID)-->                
                                             
                                                            <div class="row">
                                                                <form id="filtrosBusquedaForm2">
                                                                    <fieldset>
                                                                        <div id="bootstrap-wizard-3" class="col-sm-12">
                                                                            <div class="row">
                                                                                    <div class="col-sm-3">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Fecha de defunción:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="icon-append fa fa-calendar"></i></span>
                                                                                                        <input type="text" name="startdate" id="startdate" placeholder="Fecha de defunción" class="form-control input-md">                                                                                            
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-3">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Causa de muerte:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <asp:DropDownList ID="DropDownListCausaMuerte" runat="server" class="select2">
                                                                                                                <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                                <asp:ListItem Value="1">Exacerbación</asp:ListItem>
                                                                                                                <asp:ListItem Value="2">Infarto</asp:ListItem>
                                                                                                                <asp:ListItem Value="3">No especifica</asp:ListItem>                                                                                                                
                                                                                                            </asp:DropDownList>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-3">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Otra Causa:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <input class="form-control input-md" type="text" id="TextOtros" name="Otros" placeholder="Cuales" runat="server" />
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-3">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Notificación de muerte por:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                           <input class="form-control input-md" type="text" id="TextNotideMuerte" name="Notificación" placeholder="Notifi. de muerte" runat="server" /> 
                                                                                                    </div>                                                                                                    
                                                                                                </div>                                                                                                
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="note">
                                                                                        <button class="btn btn-primary" type="submit">
                                                                                            <i class="fa fa-save"></i>
                                                                                            Guardar Cambios
                                                                                        </button>
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
