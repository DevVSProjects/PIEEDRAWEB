<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMenu.Master" AutoEventWireup="true" CodeBehind="Etapa5.aspx.cs" Inherits="PIEEDRAWEB.Views.EPOC.Etapa5" %>

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
						<strong>Información sobre la tercera visita</strong> (Doceavo mes).                        
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
                                                <asp:ListItem Value="1">Caso 1</asp:ListItem>
                                                <asp:ListItem Value="2">Caso 2</asp:ListItem>
                                                <asp:ListItem Value="3">Caso 3</asp:ListItem>
                                                <asp:ListItem Value="4">Caso 4</asp:ListItem>
                                                <asp:ListItem Value="5">Caso 5</asp:ListItem>
                                                <asp:ListItem Value="6">Caso 6</asp:ListItem>
                                                <asp:ListItem Value="7">Caso 7</asp:ListItem>
                                                <asp:ListItem Value="8">Caso 8</asp:ListItem>
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
                                    <label>Si el tipo de visita es distinto a "En Persona", anote la causa:</label>
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
                                                                                              <dt>¿requirió cortisona con o sin antibiótico, sin ameritar hospitalización, en el año previo?.</dt>
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
                                                                                                    <input class="form-control input-md" type="text" id="TextExacerModeradas" name="Edad" placeholder="¿Cuántas?" runat="server" />
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
                                                                                                    <input class="form-control input-md" type="text" id="TextExacerbaGraves" name="Edad" placeholder="¿Cuántas?" runat="server" />
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
                                                                                                    <input class="form-control input-md" type="text" id="TextExacerbaMuyGraves" name="Edad" placeholder="¿Cuántas?" runat="server" />
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
                                                                                                    <input class="form-control input-md" type="text" id="TextPeso" name="Peso" placeholder="Peso" runat="server" />
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
                                                                                            <label>Saturación sin O2:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextSaturacion" name="Saturación" placeholder="Saturación" runat="server" />
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
                                                                                                    <input class="form-control input-md" type="text" id="TextFC" name="FC" placeholder="FC" runat="server" />
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
                                                                                                    <input class="form-control input-md" type="text" id="TextFR" name="FR" placeholder="FR" runat="server" />
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
                                                                                                    <input class="form-control input-md" type="text" id="TextSistolica" name="Sistolica" placeholder="Sistolica" runat="server" />
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
                                                                                                    <input class="form-control input-md" type="text" id="TextDiastolica" name="Diastolica" placeholder="Diastolica" runat="server" />
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
                                                                                                    <input class="form-control input-md" type="text" id="TextCintura" name="Cintura" placeholder="Cintura" runat="server" />
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>cm</strong>
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
                                                                                                    <input class="form-control input-md" type="text" id="TextTalla" name="Talla" placeholder="Talla" runat="server" />
                                                                                            </div>
                                                                                            <div class="note">
														                                        <strong>cm</strong>
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

                     <!-- row -->
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
                                                                                        Si no tiene EPOC, favor de no continuar
                                                                                    </header>                                                                                    
                                                                                </div>
                                                                            </div>
                                                                            <header style="margin-bottom:15px">
                                                                                Espirometría Post-BD
                                                                            </header>
                                                                            <div class="col-sm-2">
                                                                                 <div class="form-group">
													                                <label class="col-md-2 control-label">1. VEF</label>
													                                <div class="col-md-6">
														                                <input class="form-control input-md" type="text" id="Text1VEF" name="1VEF" placeholder="" runat="server" />
													                                </div>
                                                                                     <label class="col-md-2 control-label">ml</label>                                                                                     
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-2">
                                                                                 <div class="form-group">
													                                <label class="col-md-2 control-label">2. VEF</label>
													                                <div class="col-md-6">
														                                <input class="form-control input-md" type="text" id="Text2VEF" name="2VEF" placeholder="" runat="server" />
													                                </div>
                                                                                     <label class="col-md-2 control-label">%</label>                                                                                     
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-2">
                                                                                 <div class="form-group">
													                                <label class="col-md-2 control-label">3. FVC</label>
													                                <div class="col-md-6">
														                                <input class="form-control input-md" type="text" id="Text3FVC" name="3FVC" placeholder="" runat="server" />
													                                </div>
                                                                                     <label class="col-md-2 control-label">ml</label>                                                                                     
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-2">
                                                                                 <div class="form-group">
													                                <label class="col-md-2 control-label">4. FVC</label>
													                                <div class="col-md-6">
														                                <input class="form-control input-md" type="text" id="Text4FVC" name="4FVC" placeholder="" runat="server" />
													                                </div>
                                                                                     <label class="col-md-2 control-label">%</label>                                                                                     
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                 <div class="form-group">
													                                <label class="col-md-6 control-label">5. Relación (Máximo 69%)</label>
													                                <div class="col-md-4">
														                                <input class="form-control input-md" type="text" id="Text5Rel" name="5Rel" placeholder="" runat="server" />
													                                </div>
                                                                                     <label class="col-md-2 control-label">%</label>                                                                                     
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
                                                                                                    <input class="form-control input-md" type="text" id="TextIMC" name="IMC" placeholder="IMC" runat="server" />
                                                                                            </div>
                                                                                            <div class="note">
														                                        <button class="btn btn-primary" type="submit">
															                                        <i class="fa fa-search"></i>
															                                        Calcular
														                                        </button>
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
                                                                                                        <asp:ListItem Value="1">Caso 1</asp:ListItem>
                                                                                                        <asp:ListItem Value="2">Caso 2</asp:ListItem>
                                                                                                        <asp:ListItem Value="3">Caso 3</asp:ListItem>
                                                                                                        <asp:ListItem Value="4">Caso 4</asp:ListItem>
                                                                                                        <asp:ListItem Value="5">Caso 5</asp:ListItem>
                                                                                                        <asp:ListItem Value="6">Caso 6</asp:ListItem>
                                                                                                        <asp:ListItem Value="7">Caso 7</asp:ListItem>
                                                                                                        <asp:ListItem Value="8">Caso 8</asp:ListItem>
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
                                                                                                        <input class="form-control input-md" type="text" id="TextMetrosCami" name="FC" placeholder="Metros Caminados" runat="server"/>
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
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Escala de sensación de falta de aire (disnea) de mMRC:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <asp:DropDownList ID="DropDownListDisnea" runat="server" class="select2">
                                                                                                    <asp:ListItem Value="0">--SELECCIONE EL GRADO--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Grado 1</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Grado 2</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Grado 3</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Grado 4</asp:ListItem>                                                                                                    
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
                                                                                        <label>Indice BODE:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <input class="form-control input-md" type="text" id="TextIndiceBODE" name="IndiceBODE" placeholder="Indice BODE" runat="server" />
                                                                                        </div>
                                                                                        <div class="note">
														                                    <button class="btn btn-primary" type="submit">
															                                    <i class="fa fa-search"></i>
															                                    Calcular índice BODE
														                                    </button>
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
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Nunca Toso: 
																                            <input type="checkbox" name="checkbox" id="checkboxNuncaToso0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaToso1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaToso2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaToso3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaToso4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaToso5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaToso6" value="6" runat="server">
																                            <i></i>6
                                                                                        </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Siempre estoy tosiendo: 
																                            <input type="checkbox" name="checkbox" id="checkboxSiempreToso0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSiempreToso1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSiempreToso2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSiempreToso3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSiempreToso4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSiempreToso5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSiempreToso6" value="6" runat="server">
																                            <i></i>6
                                                                                        </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Nunca tengo flema (Mucosidad) en el pecho: </label>
																                        <label>    
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaFlema0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaFlema1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaFlema2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaFlema3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaFlema4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaFlema5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNuncaFlema6" value="6" runat="server">
																                            <i></i>6
                                                                                        </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Tengo el pecho completamente lleno de flema (mucosidad): </label>
                                                                                        <label>
																                            <input type="checkbox" name="checkbox" id="checkboxTengoFlema0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxTengoFlema1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxTengoFlema2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxTengoFlema3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxTengoFlema4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxTengoFlema5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxTengoFlema6" value="6" runat="server">
																                            <i></i>6
                                                                                        </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>No siento ninguna opresión en el pecho: </label>
                                                                                            <label>
																                            <input type="checkbox" name="checkbox" id="checkboxSinOpresion0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSinOpresion1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSinOpresion2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSinOpresion3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSinOpresion4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSinOpresion5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxSinOpresion6" value="6" runat="server">
																                            <i></i>6
                                                                                        </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Siento mucha opresión en el pecho: </label> <br />
                                                                                            <label>
																                                <input type="checkbox" name="checkbox" id="checkboxConOpresion0" value="0" runat="server">
																                                <i></i>0
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConOpresion1" value="1" runat="server">
																                                <i></i>1
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConOpresion2" value="2" runat="server">
																                                <i></i>2
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConOpresion3" value="3" runat="server">
																                                <i></i>3
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConOpresion4" value="4" runat="server">
																                                <i></i>4
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConOpresion5" value="5" runat="server">
																                                <i></i>5
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConOpresion6" value="6" runat="server">
																                                <i></i>6
                                                                                            </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Cuando subo una pendiente o un tramo de escaleras, no me falta el aire: </label>
                                                                                            <label>
																                                <input type="checkbox" name="checkbox" id="checkboxConAire0" value="0" runat="server">
																                                <i></i>0
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConAire1" value="1" runat="server">
																                                <i></i>1
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConAire2" value="2" runat="server">
																                                <i></i>2
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConAire3" value="3" runat="server">
																                                <i></i>3
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConAire4" value="4" runat="server">
																                                <i></i>4
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConAire5" value="5" runat="server">
																                                <i></i>5
                                                                                                <input type="checkbox" name="checkbox" id="checkboxConAire6" value="6" runat="server">
																                                <i></i>6
                                                                                            </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Cuando subo una pendiente o un tramo de escaleras, me falta mucho el aire: </label>
                                                                                            <label>
																                                <input type="checkbox" name="checkbox" id="checkboxSinAire0" value="0" runat="server">
																                                <i></i>0
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSinAire1" value="1" runat="server">
																                                <i></i>1
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSinAire2" value="2" runat="server">
																                                <i></i>2
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSinAire3" value="3" runat="server">
																                                <i></i>3
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSinAire4" value="4" runat="server">
																                                <i></i>4
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSinAire5" value="5" runat="server">
																                                <i></i>5
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSinAire6" value="6" runat="server">
																                                <i></i>6
                                                                                            </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>No me siento limitado para realizar actividades domésticas: </label>
                                                                                            <label>
																                                <input type="checkbox" name="checkbox" id="checkboxActiDomessi0" value="0" runat="server">
																                                <i></i>0
                                                                                                <input type="checkbox" name="checkbox" id="checkboxActiDomessi1" value="1" runat="server">
																                                <i></i>1
                                                                                                <input type="checkbox" name="checkbox" id="checkboxActiDomessi2" value="2" runat="server">
																                                <i></i>2
                                                                                                <input type="checkbox" name="checkbox" id="checkboxActiDomessi3" value="3" runat="server">
																                                <i></i>3
                                                                                                <input type="checkbox" name="checkbox" id="checkboxActiDomessi4" value="4" runat="server">
																                                <i></i>4
                                                                                                <input type="checkbox" name="checkbox" id="checkboxActiDomessi5" value="5" runat="server">
																                                <i></i>5
                                                                                                <input type="checkbox" name="checkbox" id="checkboxActiDomessi6" value="6" runat="server">
																                                <i></i>6
                                                                                            </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Me siento muy limitado para realizar actividades domésticas: </label>
                                                                                            <label>
																                                <input type="checkbox" name="checkbox" id="checkboxLimiActiDomes0" value="0" runat="server">
																                                <i></i>0
                                                                                                <input type="checkbox" name="checkbox" id="checkboxLimiActiDomes1" value="1" runat="server">
																                                <i></i>1
                                                                                                <input type="checkbox" name="checkbox" id="checkboxLimiActiDomes2" value="2" runat="server">
																                                <i></i>2
                                                                                                <input type="checkbox" name="checkbox" id="checkboxLimiActiDomes3" value="3" runat="server">
																                                <i></i>3
                                                                                                <input type="checkbox" name="checkbox" id="checkboxLimiActiDomes4" value="4" runat="server">
																                                <i></i>4
                                                                                                <input type="checkbox" name="checkbox" id="checkboxLimiActiDomes5" value="5" runat="server">
																                                <i></i>5
                                                                                                <input type="checkbox" name="checkbox" id="checkboxLimiActiDomes6" value="6" runat="server">
																                                <i></i>6
                                                                                            </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Me siento seguro para salir de casa a pesar de la afección pulmonar que padezco: </label>
                                                                                            <label>
																                                <input type="checkbox" name="checkbox" id="checkboxSeguroAfec0" value="0" runat="server">
																                                <i></i>0
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSeguroAfec1" value="1" runat="server">
																                                <i></i>1
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSeguroAfec2" value="2" runat="server">
																                                <i></i>2
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSeguroAfec3" value="3" runat="server">
																                                <i></i>3
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSeguroAfec4" value="4" runat="server">
																                                <i></i>4
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSeguroAfec5" value="5" runat="server">
																                                <i></i>5
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSeguroAfec6" value="6" runat="server">
																                                <i></i>6
                                                                                            </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>No me siento nada seguro al salir de casa debido a la afección pulmonar que padezco: </label>
                                                                                            <label>
																                                <input type="checkbox" name="checkbox" id="checkboxNadaSeguroAfec0" value="0" runat="server">
																                                <i></i>0
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNadaSeguroAfec1" value="1" runat="server">
																                                <i></i>1
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNadaSeguroAfec2" value="2" runat="server">
																                                <i></i>2
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNadaSeguroAfec3" value="3" runat="server">
																                                <i></i>3
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNadaSeguroAfec4" value="4" runat="server">
																                                <i></i>4
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNadaSeguroAfec5" value="5" runat="server">
																                                <i></i>5
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNadaSeguroAfec6" value="6" runat="server">
																                                <i></i>6
                                                                                            </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Duermo sin problemas: </label> <br /> <br />
                                                                                            <label>
																                                <input type="checkbox" name="checkbox" id="checkboxSleep0" value="0" runat="server">
																                                <i></i>0
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSleep1" value="1" runat="server">
																                                <i></i>1
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSleep2" value="2" runat="server">
																                                <i></i>2
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSleep3" value="3" runat="server">
																                                <i></i>3
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSleep4" value="4" runat="server">
																                                <i></i>4
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSleep5" value="5" runat="server">
																                                <i></i>5
                                                                                                <input type="checkbox" name="checkbox" id="checkboxSleep6" value="6" runat="server">
																                                <i></i>6
                                                                                            </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Tengo problemas para dormir debido a la afección pulmonar que padezco: </label>
                                                                                            <label>
																                                <input type="checkbox" name="checkbox" id="checkboxNoSleep0" value="0" runat="server">
																                                <i></i>0
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNoSleep1" value="1" runat="server">
																                                <i></i>1
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNoSleep2" value="2" runat="server">
																                                <i></i>2
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNoSleep3" value="3" runat="server">
																                                <i></i>3
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNoSleep4" value="4" runat="server">
																                                <i></i>4
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNoSleep5" value="5" runat="server">
																                                <i></i>5
                                                                                                <input type="checkbox" name="checkbox" id="checkboxNoSleep6" value="6" runat="server">
																                                <i></i>6
                                                                                            </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Tengo mucha energía: 
																                            <input type="checkbox" name="checkbox" id="checkboxEnergy0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergy1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergy2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergy3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergy4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergy5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxEnergy6" value="6" runat="server">
																                            <i></i>6
                                                                                        </label>
                                                                                                                                                                                    
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-6">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>No tengo ninguna energía: 
																                            <input type="checkbox" name="checkbox" id="checkboxNoEnergy0" value="0" runat="server">
																                            <i></i>0
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNoEnergy1" value="1" runat="server">
																                            <i></i>1
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNoEnergy2" value="2" runat="server">
																                            <i></i>2
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNoEnergy3" value="3" runat="server">
																                            <i></i>3
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNoEnergy4" value="4" runat="server">
																                            <i></i>4
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNoEnergy5" value="5" runat="server">
																                            <i></i>5
                                                                                            <input type="checkbox" name="checkbox" id="checkboxNoEnergy6" value="6" runat="server">
																                            <i></i>6
                                                                                        </label>
                                                                                                                                                                                    
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
                                                                                                <input class="form-control input-md" type="text" id="TextTotalPuntos" name="TotalPuntos" placeholder="" runat="server" />
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


                    <!-- row -->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<%--<article class="col-sm-12 col-md-12 col-lg-6">--%>
						<article class="col-lg-12">
						
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="ManejoActualEOPC" 
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
									<h2>VI. Manejo actual de la EPOC</h2>
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
                                                                                <div class="col-sm-12">
                                                                                    <div class="alert alert-success fade in">
                                                                                        <i class="fa-fw fa fa-check"></i>
                                                                                        <strong>Verificar si hay manejo previo y si hay algún nuevo medicamento</strong>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Oxígeno suplementario:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxOxigenoSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxOxigenoNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Indacaterol:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxIndacaterolSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxIndacaterolNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Tiotropio:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxTiotropioSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxTiotropioNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Broncodilatador / esteroide inhalado:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxCombinacionSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxCombinacionNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Esteroide inhalado solo:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxEsteroideSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxEsteroideNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Teofilina:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxTeofilinaSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxTeofilinaNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Esteroide sistémico:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxEsteSismeSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxEsteSismeNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Broncodilatador de corta acción:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxBroncoCortoSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxBroncoCortoNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Roflumilast:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxRoflumilastSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxRoflumilastNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Rehabilitación pulmonar:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxRehabiPulmoSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxRehabiPulmoNo"><i></i>No</label>                                                                                                        
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-3">
                                                                                    <div class="form-group">
                                                                                        <div class="input-group">
                                                                                            <div class="select2">
                                                                                                <label>Vacunas al corriente:</label>
                                                                                                <div class="input-group">
                                                                                                    <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                        <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxVacuCorrienteSi" runat="server"><i></i>Sí
                                                                                                        <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxVacuCorrienteNo"><i></i>No</label>                                                                                                        
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
                                                                                                        <input class="form-control input-md" type="text" id="TextOtroManejo" name="Otros" placeholder="Cuales" runat="server" />
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-sm-12">   
                                                                                    <p class="alert alert-info">
                                                                                        <strong>Reporte de defunción</strong>
                                                                                    </p>
                                                                                </div>
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
                                                                                                        <asp:ListItem Value="1">Caso 1</asp:ListItem>
                                                                                                        <asp:ListItem Value="2">Caso 2</asp:ListItem>
                                                                                                        <asp:ListItem Value="3">Caso 3</asp:ListItem>
                                                                                                        <asp:ListItem Value="4">Caso 4</asp:ListItem>
                                                                                                        <asp:ListItem Value="5">Caso 5</asp:ListItem>
                                                                                                        <asp:ListItem Value="6">Caso 6</asp:ListItem>
                                                                                                        <asp:ListItem Value="7">Caso 7</asp:ListItem>
                                                                                                        <asp:ListItem Value="8">Caso 8</asp:ListItem>
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
                                                                                                        <asp:DropDownList ID="DropDownListNotifiMuerte" runat="server" class="select2">
                                                                                                            <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                            <asp:ListItem Value="1">Caso 1</asp:ListItem>
                                                                                                            <asp:ListItem Value="2">Caso 2</asp:ListItem>
                                                                                                            <asp:ListItem Value="3">Caso 3</asp:ListItem>
                                                                                                            <asp:ListItem Value="4">Caso 4</asp:ListItem>
                                                                                                            <asp:ListItem Value="5">Caso 5</asp:ListItem>
                                                                                                            <asp:ListItem Value="6">Caso 6</asp:ListItem>
                                                                                                            <asp:ListItem Value="7">Caso 7</asp:ListItem>
                                                                                                            <asp:ListItem Value="8">Caso 8</asp:ListItem>
                                                                                                        </asp:DropDownList>
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
