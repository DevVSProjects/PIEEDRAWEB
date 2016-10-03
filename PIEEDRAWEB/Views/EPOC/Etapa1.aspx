<%@ Page Title="Visita 1" Language="C#" MasterPageFile="~/SiteMenu.Master" AutoEventWireup="true" CodeBehind="Etapa1.aspx.cs" Inherits="PIEEDRAWEB.Views.EPOC.EPOC" EnableEventValidation="false" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  

    <style type="text/css">
            .RadAutoCompleteBoxPopup
            {
                float:left !important;
            }
            .completionListElement
            {
                visibility : hidden; 
                margin : 0px! important; 
                background-color : inherit; 
                color : black; 
                border : solid 1px gray; 
                cursor : pointer; 
                text-align : left; 
                list-style-type : none; 
                font-family : Arial; 
                font-size: 10px; 
                padding : 0; 
                width: 700px;
            }
            .listItem 
            { 
                background-color: white; 
                padding : 0px; 
            }      
            .highlightedListItem 
            { 
                background-color: #c3ebf9; 
                padding : 0px; 
            }
        </style>

    <script type="text/javascript" language="javascript">
        function fnKeyPress(evt, opc) {	//-- Objetivo : valida que se teclee numeros  
            //-- Variables de entrada : evt = Evento que se ejecuto
            //-- jjveral 02/Jul/2014
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
        //////////////////////////////////////////////////////////////////

        function fnKeyPress3(evt, opc) {	//-- Objetivo : valida que se teclee numeros  
            //-- Variables de entrada : evt = Evento que se ejecuto
            //-- EricZan 02/Jul/2014
            // NOTE:   Enter = 13 

            var _TextApePaterno = document.getElementById('<%=TextApePaterno.ClientID %>')
            var  _TextApeMaterno = document.getElementById('<%=TextApeMaterno.ClientID %>')
            var  _TextNombres = document.getElementById('<%=TextNombres.ClientID %>')
            var _Textstartdate = document.getElementById('<%=Textstartdate.ClientID %>')
            var  _EdadAnios = document.getElementById('<%=EdadAnios.ClientID %>')
            <%--var  _EdoResidencia = document.getElementById('<%=EdoResidencia.ClientID %>')--%>
            var  _CiudadResi = document.getElementById('<%=CiudadResi.ClientID %>')
            var _TextTelContacto = document.getElementById('<%=TextTelContacto.ClientID %>')
            var _TextTelContactoMovil = document.getElementById('<%=TextTelContactoMovil.ClientID %>')
            

            evt = (evt) ? evt : window.event
            var charCode = (evt.which) ? evt.which : evt.keyCode

            if (charCode == 13 || charCode == 1) {

                if (_TextApePaterno.value == '') {
                    _TextApePaterno.focus();
                    _TextApePaterno.value = '';
                    return false;
                }                               
                if (_TextApeMaterno.value == '') {
                    _TextApeMaterno.focus();
                    _TextApeMaterno.value = '';
                    return false;
                }                 
                if (_TextNombres.value == '') {
                    _TextNombres.focus();
                    _TextNombres.value = '';
                    return false;
                }
                //debugger;
                if (_Textstartdate.value == '') {
                    _Textstartdate.focus();
                    _Textstartdate.value = '';
                    _EdadAnios.value = '';
                    return false;
                }                    
                else if (_Textstartdate.value != '')
                {
                    hoy = new Date()                   
                    var array_fecha = _Textstartdate.value.split("/")
                    fecha = new Date(_Textstartdate.value)

                    //si el array no tiene tres partes, la fecha es incorrecta 
                    if (array_fecha.length != 3) {
                        alert('Formato incorrecta de fecha');
                        _EdadAnios.value = '';
                        return false
                    }
                    else
                    {
                        //compruebo que el año, mes, dia son correctos 

                        var anio
                        anio = parseInt(array_fecha[2]);
                        if (isNaN(anio))
                            return false

                        var mes
                        mes = parseInt(array_fecha[1]);
                        if (isNaN(mes))
                            return false

                        var dia
                        dia = parseInt(array_fecha[0]);
                        if (isNaN(dia))
                            return false

                        //si el año de la fecha que recibo solo tiene 2 cifras hay que cambiarlo a 4 
                        if (anio <= 99)
                            anio += 1900

                        ed = parseInt((hoy - fecha) / 365 / 24 / 60 / 60 / 1000)
                        _EdadAnios.value = ed;

                        if (_EdadAnios.value <= 35 )
                        {
                            alert('La edad del paciente tiene que ser mayor de 35 años');                            
                            _Textstartdate.value = '';
                            _Textstartdate.focus();
                            _EdadAnios.value = '';
                            return false;
                        }
                    }
                }
                /*
                if (_EdadAnios.value == '') {
                    _EdadAnios.focus();
                    _EdadAnios.value = '';
                    return false;
                }
                */
                /*if (_EdoResidencia.value == '') {
                    _EdoResidencia.focus();
                    _EdoResidencia.value = '';
                    return false;
                }
                else if (_EdoResidencia.value != '') {
                    _TextBoxFechaNaci


                    _EdoResidencia.focus();
                    _EdoResidencia.value = '';
                    return false;
                }*/
                if (_CiudadResi.value == '') {
                    _CiudadResi.focus();
                    _CiudadResi.value = '';
                    return false;
                }
                if (_TextTelContacto.value == '') {
                    _TextTelContacto.focus();
                    _TextTelContacto.value = '';
                    return false;
                }
                if (_TextTelContactoMovil.value == '') {
                    _TextTelContactoMovil.focus();
                    _TextTelContactoMovil.value = '';
                    return false;
                }                
                else {
                    if (opc == '1') { _TextApeMaterno.focus(); }
                    if (opc == '2') { _TextNombres.focus(); }
                    if (opc == '3') { _Textstartdate.focus(); }
                    //if (opc == '4') { _EdadAnios.focus(); }
                    //if (opc == '4') { _EdoResidencia.focus(); }
                    if (opc == '4') { _CiudadResi.focus(); }
                    if (opc == '7') { _TextTelContacto.focus(); }
                    if (opc == '8') { _TextTelContactoMovil.focus(); }
                    if (opc == '9') { _TextApePaterno.focus(); }

                    return false;
                }
            }
            else if (charCode == 9) {
                alert('Presione la tecla Enter para validar');
            }
        }

        ///////////////////////////////////////////////////////////////////////////////////////////


        function fnKeyPress4(evt, opc) {	//-- Objetivo : valida que se teclee numeros  
            //-- Variables de entrada : evt = Evento que se ejecuto
            //-- EricZan 02/Jul/2014
            // NOTE:   Enter = 13 
            //debugger;
            var _TextHorasXAnio = document.getElementById('<%=TextHorasXAnio.ClientID %>')
            var _TextPaquetesXAnio = document.getElementById('<%=TextPaquetesXAnio.ClientID %>')
            var _TextAniosdeRiesgo = document.getElementById('<%=TextAniosdeRiesgo.ClientID %>')                    

            evt = (evt) ? evt : window.event
            var charCode = (evt.which) ? evt.which : evt.keyCode

            if (charCode == 13 || charCode == 1) {                
                if (_TextHorasXAnio.disabled == true)
                { }
                else
                {
                    if (_TextHorasXAnio.value < 100 || _TextHorasXAnio.value > 1000) {
                        alert('EN LAS HORAS POR AÑO EL VALOR DEBE ESTAR ENTRE 100 Y 1000');
                        _TextHorasXAnio.focus();
                        _TextHorasXAnio.value = '';
                        return false;
                    }
                }
                if (_TextPaquetesXAnio.disabled == true)
                { }
                else
                {
                    if (_TextPaquetesXAnio.value < 10 || _TextPaquetesXAnio.value > 150) {
                        alert('EN LOS PAQUETES POR AÑO EL VALOR DEBE ESTAR ENTRE 10 Y 150');
                        _TextPaquetesXAnio.focus();
                        _TextPaquetesXAnio.value = '';
                        return false;
                    }
                }
                if (_TextAniosdeRiesgo.disabled == true)
                { }
                else
                {
                    if (_TextAniosdeRiesgo.value < 5 || _TextAniosdeRiesgo.value > 80) {
                        alert('EN LOS AÑOS DE EXPOSICION EL VALOR DEBE ESTAR ENTRE 5 Y 80');
                        _TextAniosdeRiesgo.focus();
                        _TextAniosdeRiesgo.value = '';
                        return false;
                    }
                }                
            }
            else if (charCode == 9) {
                alert('Presione la tecla Enter para validar');
            }
        }

        /////////////////////////////////////////////////////////      

        function checkboxZona(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxUrbana = document.getElementById("<%= checkboxUrbana.ClientID %>");
            var _checkboxRural = document.getElementById("<%= checkboxRural.ClientID %>");          

            _checkboxUrbana.checked = false
            _checkboxRural.checked = false
            
            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxAtencion(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxInsPublic = document.getElementById("<%= checkboxInsPublic.ClientID %>");
            var _checkboxInsPriva = document.getElementById("<%= checkboxInsPriva.ClientID %>");
           
            _checkboxInsPublic.checked = false
            _checkboxInsPriva.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxGenero(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxMasculino = document.getElementById("<%= checkboxMasculino.ClientID %>");
            var _checkboxFemenino = document.getElementById("<%= checkboxFemenino.ClientID %>");

           
            _checkboxMasculino.checked = false
            _checkboxFemenino.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxCancer(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxCancerSi = document.getElementById("<%= checkboxCancerSi.ClientID %>");
            var _checkboxCancerNo = document.getElementById("<%= checkboxCancerNo.ClientID %>");

           
            _checkboxCancerSi.checked = false
            _checkboxCancerNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxDiabetes(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxDiabetesSi = document.getElementById("<%= checkboxDiabetesSi.ClientID %>");
            var _checkboxDiabetesNo = document.getElementById("<%= checkboxDiabetesNo.ClientID %>");

           
            _checkboxDiabetesSi.checked = false
            _checkboxDiabetesNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxHipertension(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxHipertensionSi = document.getElementById("<%= checkboxHipertensionSi.ClientID %>");
            var _checkboxHipertensionNo = document.getElementById("<%= checkboxHipertensionNo.ClientID %>");

           
            _checkboxHipertensionSi.checked = false
            _checkboxHipertensionNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxDislipidemia(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxDislipidemiaSi = document.getElementById("<%= checkboxDislipidemiaSi.ClientID %>");
            var _checkboxDislipidemiaNo = document.getElementById("<%= checkboxDislipidemiaNo.ClientID %>");

           
            _checkboxDislipidemiaSi.checked = false
            _checkboxDislipidemiaNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxInfarto(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxInfartoSi = document.getElementById("<%= checkboxInfartoSi.ClientID %>");
            var _checkboxInfartoNo = document.getElementById("<%= checkboxInfartoNo.ClientID %>");

           
            _checkboxInfartoSi.checked = false
            _checkboxInfartoNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxInsufiCardi(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxInsufiCardiSi = document.getElementById("<%= checkboxInsufiCardiSi.ClientID %>");
            var _checkboxInsufiCardiNo = document.getElementById("<%= checkboxInsufiCardiNo.ClientID %>");

           
            _checkboxInsufiCardiSi.checked = false
            _checkboxInsufiCardiNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxGastritis(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxGastritisSi = document.getElementById("<%= checkboxGastritisSi.ClientID %>");
            var _checkboxGastritisNo = document.getElementById("<%= checkboxGastritisNo.ClientID %>");

           
            _checkboxGastritisSi.checked = false
            _checkboxGastritisNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxApnea(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxApneaSi = document.getElementById("<%= checkboxApneaSi.ClientID %>");
            var _checkboxApneaNo = document.getElementById("<%= checkboxApneaNo.ClientID %>");

           
            _checkboxApneaSi.checked = false
            _checkboxApneaNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxArritmia(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxArritmiaSi = document.getElementById("<%= checkboxArritmiaSi.ClientID %>");
            var _checkboxArritmiaNo = document.getElementById("<%= checkboxArritmiaNo.ClientID %>");

           
            _checkboxArritmiaSi.checked = false
            _checkboxArritmiaNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxAsma(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxAsmaSi = document.getElementById("<%= checkboxAsmaSi.ClientID %>");
            var _checkboxAsmaNo = document.getElementById("<%= checkboxAsmaNo.ClientID %>");

           
            _checkboxAsmaSi.checked = false
            _checkboxAsmaNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxOsteoporosis(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxOsteoporosisSi = document.getElementById("<%= checkboxOsteoporosisSi.ClientID %>");
            var _checkboxOsteoporosisNo = document.getElementById("<%= checkboxOsteoporosisNo.ClientID %>");

           
            _checkboxOsteoporosisSi.checked = false
            _checkboxOsteoporosisNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxDepresion(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxDepresionSi = document.getElementById("<%= checkboxDepresionSi.ClientID %>");
            var _checkboxDepresionNo = document.getElementById("<%= checkboxDepresionNo.ClientID %>");

           
            _checkboxDepresionSi.checked = false
            _checkboxDepresionNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxTuberculosis(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxTuberculosisSi = document.getElementById("<%= checkboxTuberculosisSi.ClientID %>");
            var _checkboxTuberculosisNo = document.getElementById("<%= checkboxTuberculosisNo.ClientID %>");

           
            _checkboxTuberculosisSi.checked = false
            _checkboxTuberculosisNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function DropDownOcupacion() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;           
            var _DropDownListOcupacion = document.getElementById("<%= DropDownListOcupacion.ClientID %>");
            var _TextOtraOcupa = document.getElementById("<%= TextOtraOcupa.ClientID %>");

            if (_DropDownListOcupacion.value == 6) {
                _TextOtraOcupa.disabled = false;
                _TextOtraOcupa.value = '';
            }
            else
            {
                _TextOtraOcupa.disabled = true;
                _TextOtraOcupa.value = '';
            }            
        }

        ////////////////////////////////////////////////////

        function AnteAsma(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxAnteAsmaSi = document.getElementById("<%= checkboxAnteAsmaSi.ClientID %>");
            var _checkboxAnteAsmaNo = document.getElementById("<%= checkboxAnteAsmaNo.ClientID %>");
            var _DropDownListAnteAsma = document.getElementById("<%= DropDownListAnteAsma.ClientID %>");
           
         
            _checkboxAnteAsmaSi.checked = false;
            _checkboxAnteAsmaNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxAnteAsmaSi.checked == true) {
                _DropDownListAnteAsma.disabled = false;                
            }
            else
            {
                _DropDownListAnteAsma.value = 0;
                _DropDownListAnteAsma.disabled = true;
            }
        }

        ////////////////////////////////////////////////////

        function checkboxAnteAtopia(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxAnteAtopiaSi = document.getElementById("<%= checkboxAnteAtopiaSi.ClientID %>");
            var _checkboxAnteAtopiaNo = document.getElementById("<%= checkboxAnteAtopiaNo.ClientID %>");

           
            _checkboxAnteAtopiaSi.checked = false
            _checkboxAnteAtopiaNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxeosinofilos(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxeosinofilosSi = document.getElementById("<%= checkboxeosinofilosSi.ClientID %>");
            var _checkboxeosinofilosNo = document.getElementById("<%= checkboxeosinofilosNo.ClientID %>");
            var _checkboxeosinofilosND = document.getElementById("<%= checkboxeosinofilosND.ClientID %>");

           
            _checkboxeosinofilosSi.checked = false
            _checkboxeosinofilosNo.checked = false
            _checkboxeosinofilosND.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxIgE(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxIgESi = document.getElementById("<%= checkboxIgESi.ClientID %>");
            var _checkboxIgENo = document.getElementById("<%= checkboxIgENo.ClientID %>");
            var _checkboxIgEND = document.getElementById("<%= checkboxIgEND.ClientID %>");

           
            _checkboxIgESi.checked = false
            _checkboxIgENo.checked = false
            _checkboxIgEND.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxReverEspiro(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxReverEspiroSi = document.getElementById("<%= checkboxReverEspiroSi.ClientID %>");
            var _checkboxReverEspiroNo = document.getElementById("<%= checkboxReverEspiroNo.ClientID %>");

           
            _checkboxReverEspiroSi.checked = false
            _checkboxReverEspiroNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxExpoHumoLena(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxExpoHumoLenaSi = document.getElementById("<%= checkboxExpoHumoLenaSi.ClientID %>");
            var _checkboxExpoHumoLenaNo = document.getElementById("<%= checkboxExpoHumoLenaNo.ClientID %>");
            var _TextHorasXAnio = document.getElementById("<%= TextHorasXAnio.ClientID %>");
            var _checkboxActualExpoHumoLenaSi = document.getElementById("<%= checkboxActualExpoHumoLenaSi.ClientID %>");
            var _checkboxActualExpoHumoLenaNo = document.getElementById("<%= checkboxActualExpoHumoLenaNo.ClientID %>");
           
         
            _checkboxExpoHumoLenaSi.checked = false;
            _checkboxExpoHumoLenaNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxExpoHumoLenaSi.checked == true) {
                _TextHorasXAnio.disabled = false;
                _checkboxActualExpoHumoLenaSi.disabled = false;
                _checkboxActualExpoHumoLenaNo.disabled = false;
            }
            else
            {
                _TextHorasXAnio.disabled = true;
                _TextHorasXAnio.value = '';
                _checkboxActualExpoHumoLenaSi.disabled = true;
                _checkboxActualExpoHumoLenaNo.disabled = true;
                _checkboxActualExpoHumoLenaSi.checked = false;
                _checkboxActualExpoHumoLenaNo.checked = false;
            }
        }

        ////////////////////////////////////////////////////

        function checkboxActualExpoHumoLena(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxActualExpoHumoLenaSi = document.getElementById("<%= checkboxActualExpoHumoLenaSi.ClientID %>");
            var _checkboxActualExpoHumoLenaNo = document.getElementById("<%= checkboxActualExpoHumoLenaNo.ClientID %>");

           
            _checkboxActualExpoHumoLenaSi.checked = false
            _checkboxActualExpoHumoLenaNo.checked = false

            _objRbtn.checked = true

            return fnKeyPress4(event, 1);
        }

        ////////////////////////////////////////////////////

        function checkboxTabaquismo(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxTabaquismoSi = document.getElementById("<%= checkboxTabaquismoSi.ClientID %>");
            var _checkboxTabaquismoNo = document.getElementById("<%= checkboxTabaquismoNo.ClientID %>");
            var _TextPaquetesXAnio = document.getElementById("<%= TextPaquetesXAnio.ClientID %>");
            var _checkboxFumaActualSi = document.getElementById("<%= checkboxFumaActualSi.ClientID %>");
            var _checkboxFumaActualNo = document.getElementById("<%= checkboxFumaActualNo.ClientID %>");
           
         
            _checkboxTabaquismoSi.checked = false;
            _checkboxTabaquismoNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxTabaquismoSi.checked == true) {
                _TextPaquetesXAnio.disabled = false;
                _checkboxFumaActualSi.disabled = false;
                _checkboxFumaActualNo.disabled = false;
            }
            else
            {
                _TextPaquetesXAnio.disabled = true;
                _TextPaquetesXAnio.value = '';
                _checkboxFumaActualSi.disabled = true;
                _checkboxFumaActualNo.disabled = true;
                _checkboxFumaActualSi.checked = false;
                _checkboxFumaActualNo.checked = false;
            }
        }

        ////////////////////////////////////////////////////

        function checkboxFumaActual(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxFumaActualSi = document.getElementById("<%= checkboxFumaActualSi.ClientID %>");
            var _checkboxFumaActualNo = document.getElementById("<%= checkboxFumaActualNo.ClientID %>");
            var _TextTiempoNoFumar = document.getElementById("<%= TextTiempoNoFumar.ClientID %>");
            
            _checkboxFumaActualSi.checked = false
            _checkboxFumaActualNo.checked = false

            _objRbtn.checked = true

            if (_checkboxFumaActualNo.checked == true) {
                _TextTiempoNoFumar.disabled = false;
                _TextTiempoNoFumar.focus();                
            }
            else
            {
                _TextTiempoNoFumar.disabled = true;
                _TextTiempoNoFumar.value = '';                
            }

            return fnKeyPress4(event, 1);
        }

////////////////////////////////////////////////////

        function checkboxRiesgos(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxRiesgosSi = document.getElementById("<%= checkboxRiesgosSi.ClientID %>");
            var _checkboxRiesgosNo = document.getElementById("<%= checkboxRiesgosNo.ClientID %>");
            var _TextAniosdeRiesgo = document.getElementById("<%= TextAniosdeRiesgo.ClientID %>");
            var _TextCualRiesgo = document.getElementById("<%= TextCualRiesgo.ClientID %>");
           
         
            _checkboxRiesgosSi.checked = false;
            _checkboxRiesgosNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxRiesgosSi.checked == true) {
                _TextAniosdeRiesgo.disabled = false;
                _TextCualRiesgo.disabled = false;
            }
            else
            {
                _TextAniosdeRiesgo.disabled = true;
                _TextAniosdeRiesgo.value = '';
                _TextCualRiesgo.disabled = true;
                _TextCualRiesgo.value = '';
            }
        }

        ////////////////////////////////////////////////////

        function checkboxExacerModeradas(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxExacerModeradasSi = document.getElementById("<%= checkboxExacerModeradasSi.ClientID %>");
            var _checkboxExacerModeradasNo = document.getElementById("<%= checkboxExacerModeradasNo.ClientID %>");
            var _TextExacerModeradas = document.getElementById("<%= TextExacerModeradas.ClientID %>");            
           
         
            _checkboxExacerModeradasSi.checked = false;
            _checkboxExacerModeradasNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxExacerModeradasSi.checked == true) {
                _TextExacerModeradas.disabled = false;
                _TextExacerModeradas.value ='';
            }
            else
            {
                _TextExacerModeradas.disabled = true;
                _TextExacerModeradas.value = 0;
            }
        }

        ////////////////////////////////////////////////////

        function checkboxExacerbaGraves(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxExacerbaGravesSi = document.getElementById("<%= checkboxExacerbaGravesSi.ClientID %>");
            var _checkboxExacerbaGravesNo = document.getElementById("<%= checkboxExacerbaGravesNo.ClientID %>");
            var _TextExacerbaGraves = document.getElementById("<%= TextExacerbaGraves.ClientID %>");
           
         
            _checkboxExacerbaGravesSi.checked = false;
            _checkboxExacerbaGravesNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxExacerbaGravesSi.checked == true) {
                _TextExacerbaGraves.disabled = false;
                _TextExacerbaGraves.value = '';
            }
            else
            {
                _TextExacerbaGraves.disabled = true;
                _TextExacerbaGraves.value = 0;
            }
        }

        ////////////////////////////////////////////////////

        function checkboxExacerbaMuyGraves(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxExacerbaMuyGravesSi = document.getElementById("<%= checkboxExacerbaMuyGravesSi.ClientID %>");
            var _checkboxExacerbaMuyGravesNo = document.getElementById("<%= checkboxExacerbaMuyGravesNo.ClientID %>");
            var _TextExacerbaMuyGraves = document.getElementById("<%= TextExacerbaMuyGraves.ClientID %>");
           
         
            _checkboxExacerbaMuyGravesSi.checked = false;
            _checkboxExacerbaMuyGravesNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxExacerbaMuyGravesSi.checked == true) {
                _TextExacerbaMuyGraves.disabled = false;
                _TextExacerbaMuyGraves.value = '';
            }
            else
            {
                _TextExacerbaMuyGraves.disabled = true;
                _TextExacerbaMuyGraves.value = 0;
            }
        }

        ////////////////////////////////////////////////////

        function checkboxCeseTaba(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            <%--var _checkboxCeseTabaSi = document.getElementById("<%= checkboxCeseTabaSi.ClientID %>");
            var _checkboxCeseTabaNo = document.getElementById("<%= checkboxCeseTabaNo.ClientID %>");--%>

           
            _checkboxCeseTabaSi.checked = false
            _checkboxCeseTabaNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxOxiSuple(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxOxiSupleSi = document.getElementById("<%= checkboxOxiSupleSi.ClientID %>");
            var _checkboxOxiSupleNo = document.getElementById("<%= checkboxOxiSupleNo.ClientID %>");

           
            _checkboxOxiSupleSi.checked = false
            _checkboxOxiSupleNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxRehabilitacion(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxRehabilitacionSi = document.getElementById("<%= checkboxRehabilitacionSi.ClientID %>");
            var _checkboxRehabilitacionNo = document.getElementById("<%= checkboxRehabilitacionNo.ClientID %>");

           
            _checkboxRehabilitacionSi.checked = false
            _checkboxRehabilitacionNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxVacunasInfluen(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxVacunasInfluenSi = document.getElementById("<%= checkboxVacunasInfluenSi.ClientID %>");
            var _checkboxVacunasInfluenNo = document.getElementById("<%= checkboxVacunasInfluenNo.ClientID %>");

           
            _checkboxVacunasInfluenSi.checked = false
            _checkboxVacunasInfluenNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxVacunasNeumo(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxVacunasNeumoSi = document.getElementById("<%= checkboxVacunasNeumoSi.ClientID %>");
            var _checkboxVacunasNeumoNo = document.getElementById("<%= checkboxVacunasNeumoNo.ClientID %>");

           
            _checkboxVacunasNeumoSi.checked = false
            _checkboxVacunasNeumoNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxTeofilina(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxTeofilinaSi = document.getElementById("<%= checkboxTeofilinaSi.ClientID %>");
            var _checkboxTeofilinaNo = document.getElementById("<%= checkboxTeofilinaNo.ClientID %>");

           
            _checkboxTeofilinaSi.checked = false
            _checkboxTeofilinaNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxRoflumilast(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxRoflumilastSi = document.getElementById("<%= checkboxRoflumilastSi.ClientID %>");
            var _checkboxRoflumilastNo = document.getElementById("<%= checkboxRoflumilastNo.ClientID %>");

           
            _checkboxRoflumilastSi.checked = false
            _checkboxRoflumilastNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxMucoliticos(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxMucoliticosSi = document.getElementById("<%= checkboxMucoliticosSi.ClientID %>");
            var _checkboxMucoliticosNo = document.getElementById("<%= checkboxMucoliticosNo.ClientID %>");

           
            _checkboxMucoliticosSi.checked = false
            _checkboxMucoliticosNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxMorfina(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxMorfinaSi = document.getElementById("<%= checkboxMorfinaSi.ClientID %>");
            var _checkboxMorfinaNo = document.getElementById("<%= checkboxMorfinaNo.ClientID %>");

           
            _checkboxMorfinaSi.checked = false
            _checkboxMorfinaNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxSaba(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxSabaHorario = document.getElementById("<%= checkboxSabaHorario.ClientID %>");
            var _checkboxSabaNo = document.getElementById("<%= checkboxSabaNo.ClientID %>");
            var _checkboxSabaPRN = document.getElementById("<%= checkboxSabaPRN.ClientID %>");            
            var _DropDownListSaba = document.getElementById("<%= DropDownListSaba.ClientID %>");
           
         
            _checkboxSabaHorario.checked = false;
            _checkboxSabaNo.checked = false;
            _checkboxSabaPRN.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxSabaHorario.checked == true || _checkboxSabaPRN.checked == true) {
                _DropDownListSaba.disabled = false;
            }
            else
            {
                _DropDownListSaba.disabled = true;
                _DropDownListSaba.value = 0;
            }

            TipoTerapia();
        }

        ////////////////////////////////////////////////////

        function checkboxLaba(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxLabaSi = document.getElementById("<%= checkboxLabaSi.ClientID %>");
            var _checkboxLabaNo = document.getElementById("<%= checkboxLabaNo.ClientID %>");
            var _DropDownListLaba = document.getElementById("<%= DropDownListLaba.ClientID %>");
           
         
            _checkboxLabaSi.checked = false;
            _checkboxLabaNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxLabaSi.checked == true) {
                _DropDownListLaba.disabled = false;
            }
            else
            {
                _DropDownListLaba.disabled = true;
                _DropDownListLaba.value = 0;
            }

            TipoTerapia();
        }

        ////////////////////////////////////////////////////

        function checkboxLama(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxLamaSi = document.getElementById("<%= checkboxLamaSi.ClientID %>");
            var _checkboxLamaNo = document.getElementById("<%= checkboxLamaNo.ClientID %>");
            var _DropDownListLama = document.getElementById("<%= DropDownListLama.ClientID %>");
           
         
            _checkboxLamaSi.checked = false;
            _checkboxLamaNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxLamaSi.checked == true) {
                _DropDownListLama.disabled = false;
            }
            else
            {
                _DropDownListLama.disabled = true;
                _DropDownListLama.value = 0;
            }

            TipoTerapia();
        }

        ////////////////////////////////////////////////////

        function checkboxEsteroide(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxEsteroideSi = document.getElementById("<%= checkboxEsteroideSi.ClientID %>");
            var _checkboxEsteroideNo = document.getElementById("<%= checkboxEsteroideNo.ClientID %>");
            var _DropDownListEsteroide = document.getElementById("<%= DropDownListEsteroide.ClientID %>");
            var _DropDownListDosisEsteroide = document.getElementById("<%= DropDownListDosisEsteroide.ClientID %>");
           
         
            _checkboxEsteroideSi.checked = false;
            _checkboxEsteroideNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxEsteroideSi.checked == true) {
                _DropDownListEsteroide.disabled = false;
            }
            else
            {
                _DropDownListEsteroide.disabled = true;
                _DropDownListEsteroide.value = 0;
                _DropDownListDosisEsteroide.disabled = true;
                _DropDownListDosisEsteroide.value = 0;
            }

            TipoTerapia();
        }

        ////////////////////////////////////////////////////

        function DropDownListEsteroide(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _DropDownListEsteroide = document.getElementById("<%= DropDownListEsteroide.ClientID %>");
            var _DropDownListDosisEsteroide = document.getElementById("<%= DropDownListDosisEsteroide.ClientID %>");        

            if (_DropDownListEsteroide.value == 0) {
                _DropDownListDosisEsteroide.disabled = true;
            }
            else
            {
                _DropDownListDosisEsteroide.disabled = false;
            }
        }

        ////////////////////////////////////////////////////

        function TipoTerapia() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            var _checkboxSabaHorario = document.getElementById("<%= checkboxSabaHorario.ClientID %>");
            var _checkboxSabaPRN = document.getElementById("<%= checkboxSabaPRN.ClientID %>");
            var _checkboxLabaSi = document.getElementById("<%= checkboxLabaSi.ClientID %>");
            var _checkboxLamaSi = document.getElementById("<%= checkboxLamaSi.ClientID %>");
            var _checkboxEsteroideSi = document.getElementById("<%= checkboxEsteroideSi.ClientID %>");

            var _TextTipoTerapia = document.getElementById("<%= TextTipoTerapia.ClientID %>");


            //Combinación de Monoterapia

            if ((_checkboxSabaHorario.checked == false || _checkboxSabaPRN.checked == false) && _checkboxLabaSi.checked == false && _checkboxLamaSi.checked == false && _checkboxEsteroideSi.checked == false)
            { _TextTipoTerapia.value = ''; }
            if ((_checkboxSabaHorario.checked == true || _checkboxSabaPRN.checked == true) && _checkboxLabaSi.checked == false && _checkboxLamaSi.checked == false && _checkboxEsteroideSi.checked == false)
            { _TextTipoTerapia.value = 'Monoterapia'; }
            if ((_checkboxSabaHorario.checked == true || _checkboxSabaPRN.checked == true) && _checkboxLabaSi.checked == true && _checkboxLamaSi.checked == false && _checkboxEsteroideSi.checked == false)
            { _TextTipoTerapia.value = 'Monoterapia'; }
            if ((_checkboxSabaHorario.checked == true || _checkboxSabaPRN.checked == true) && _checkboxLabaSi.checked == false && _checkboxLamaSi.checked == true && _checkboxEsteroideSi.checked == false)
            { _TextTipoTerapia.value = 'Monoterapia'; }
            if ((_checkboxSabaHorario.checked == true || _checkboxSabaPRN.checked == true) && _checkboxLabaSi.checked == false && _checkboxLamaSi.checked == false && _checkboxEsteroideSi.checked == true)
            { _TextTipoTerapia.value = 'Monoterapia'; }

            if ((_checkboxSabaHorario.checked == false || _checkboxSabaPRN.checked == false) && _checkboxLabaSi.checked == true && _checkboxLamaSi.checked == false && _checkboxEsteroideSi.checked == false)
            { _TextTipoTerapia.value = 'Monoterapia'; }

            if ((_checkboxSabaHorario.checked == false || _checkboxSabaPRN.checked == false) && _checkboxLabaSi.checked == false && _checkboxLamaSi.checked == true && _checkboxEsteroideSi.checked == false)
            { _TextTipoTerapia.value = 'Monoterapia'; }

            if ((_checkboxSabaHorario.checked == false || _checkboxSabaPRN.checked == false) && _checkboxLabaSi.checked == false && _checkboxLamaSi.checked == false && _checkboxEsteroideSi.checked == true)
            { _TextTipoTerapia.value = 'Monoterapia'; }

            
            //Combinación de Terapia Doble

            if ((_checkboxSabaHorario.checked == false || _checkboxSabaPRN.checked == false) && _checkboxLabaSi.checked == true && _checkboxLamaSi.checked == true && _checkboxEsteroideSi.checked == false)
            { _TextTipoTerapia.value = 'Terapia Doble'; }
            if ((_checkboxSabaHorario.checked == false || _checkboxSabaPRN.checked == false) && _checkboxLabaSi.checked == true && _checkboxLamaSi.checked == false && _checkboxEsteroideSi.checked == true)
            { _TextTipoTerapia.value = 'Terapia Doble'; }
            if ((_checkboxSabaHorario.checked == false || _checkboxSabaPRN.checked == false) && _checkboxLabaSi.checked == false && _checkboxLamaSi.checked == true && _checkboxEsteroideSi.checked == true)
            { _TextTipoTerapia.value = 'Terapia Doble'; }
            if ((_checkboxSabaHorario.checked == true || _checkboxSabaPRN.checked == true) && _checkboxLabaSi.checked == true && _checkboxLamaSi.checked == true && _checkboxEsteroideSi.checked == false)
            { _TextTipoTerapia.value = 'Terapia Doble'; }
            if ((_checkboxSabaHorario.checked == true || _checkboxSabaPRN.checked == true) && _checkboxLabaSi.checked == true && _checkboxLamaSi.checked == false && _checkboxEsteroideSi.checked == true)
            { _TextTipoTerapia.value = 'Terapia Doble'; }
            if ((_checkboxSabaHorario.checked == true || _checkboxSabaPRN.checked == true) && _checkboxLabaSi.checked == false && _checkboxLamaSi.checked == true && _checkboxEsteroideSi.checked == true)
            { _TextTipoTerapia.value = 'Terapia Doble'; }


            //debugger;
            //Combinación de Terapia Triple

            if ((_checkboxSabaHorario.checked == false || _checkboxSabaPRN.checked == false) && _checkboxLabaSi.checked == true && _checkboxLamaSi.checked == true && _checkboxEsteroideSi.checked == true)
            { _TextTipoTerapia.value = 'Terapia Triple'; }           
            if ((_checkboxSabaHorario.checked == true || _checkboxSabaPRN.checked == true) && _checkboxLabaSi.checked == true && _checkboxLamaSi.checked == true && _checkboxEsteroideSi.checked == true)
            { _TextTipoTerapia.value = 'Terapia Triple'; }
        }

         ////////////////////////////////////////////////////

        function checkboxAntihipertensivo(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxAntihipertensivoSi = document.getElementById("<%= checkboxAntihipertensivoSi.ClientID %>");
            var _checkboxAntihipertensivoNo = document.getElementById("<%= checkboxAntihipertensivoNo.ClientID %>");

           
            _checkboxAntihipertensivoSi.checked = false
            _checkboxAntihipertensivoNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxDiuretico(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxDiureticoSi = document.getElementById("<%= checkboxDiureticoSi.ClientID %>");
            var _checkboxDiureticoNo = document.getElementById("<%= checkboxDiureticoNo.ClientID %>");

           
            _checkboxDiureticoSi.checked = false
            _checkboxDiureticoNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxHipoglucemiante(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxHipoglucemianteSi = document.getElementById("<%= checkboxHipoglucemianteSi.ClientID %>");
            var _checkboxHipoglucemianteNo = document.getElementById("<%= checkboxHipoglucemianteNo.ClientID %>");

           
            _checkboxHipoglucemianteSi.checked = false
            _checkboxHipoglucemianteNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxEstatina(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxEstatina = document.getElementById("<%= checkboxEstatinaSi.ClientID %>");
            var _checkboxEstatinaNo = document.getElementById("<%= checkboxEstatinaNo.ClientID %>");

           
            _checkboxEstatina.checked = false
            _checkboxEstatinaNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxMediParaDormir(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxMediParaDormirSi = document.getElementById("<%= checkboxMediParaDormirSi.ClientID %>");
            var _checkboxMediParaDormirNo = document.getElementById("<%= checkboxMediParaDormirNo.ClientID %>");

           
            _checkboxMediParaDormirSi.checked = false
            _checkboxMediParaDormirNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxAntidepresivo(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxAntidepresivoSi = document.getElementById("<%= checkboxAntidepresivoSi.ClientID %>");
            var _checkboxAntidepresivoNo = document.getElementById("<%= checkboxAntidepresivoNo.ClientID %>");

           
            _checkboxAntidepresivoSi.checked = false
            _checkboxAntidepresivoNo.checked = false

            _objRbtn.checked = true
        }

         ////////////////////////////////////////////////////

        function checkboxacetilsalicilico(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;
            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxacetilsalicilicoSi = document.getElementById("<%= checkboxacetilsalicilicoSi.ClientID %>");
            var _checkboxacetilsalicilicoNo = document.getElementById("<%= checkboxacetilsalicilicoNo.ClientID %>");

           
            _checkboxacetilsalicilicoSi.checked = false
            _checkboxacetilsalicilicoNo.checked = false

            _objRbtn.checked = true
        }

        ////////////////////////////////////////////////////

        function checkboxPrueba(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxPruebaSi = document.getElementById("<%= checkboxPruebaSi.ClientID %>");
            var _checkboxPruebaNo = document.getElementById("<%= checkboxPruebaNo.ClientID %>");
            var _DropDownListPruebaNo = document.getElementById("<%= DropDownListPruebaNo.ClientID %>");
            var _TextMetrosCami = document.getElementById("<%= TextMetrosCami.ClientID %>");
           
         
            _checkboxPruebaSi.checked = false;
            _checkboxPruebaNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxPruebaNo.checked == true) {
                _DropDownListPruebaNo.disabled = false;
                _TextMetrosCami.disabled = true;
                _TextMetrosCami.value = '';
            }
            else
            {
                _DropDownListPruebaNo.disabled = true;
                _DropDownListPruebaNo.value = 0;
                _TextMetrosCami.disabled = false;                
            }
        }

        ////////////////////////////////////////////////////

        function checkboxFaltaAire(_obj) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- jjveral 25/Jun/2014

            //debugger;

            var _objRbtn = document.getElementById(_obj.id)

            var _checkboxFaltaAireSi = document.getElementById("<%= checkboxFaltaAireSi.ClientID %>");
            var _checkboxFaltaAireNo = document.getElementById("<%= checkboxFaltaAireNo.ClientID %>");
            var _DropDownListFaltaAire = document.getElementById("<%= DropDownListFaltaAire.ClientID %>");
           
         
            _checkboxFaltaAireSi.checked = false;
            _checkboxFaltaAireNo.checked = false;
            _objRbtn.checked = true;
        

            if (_checkboxFaltaAireSi.checked == true) {
                _DropDownListFaltaAire.disabled = false;
            }
            else
            {
                _DropDownListFaltaAire.disabled = true;
                _DropDownListFaltaAire.value = 0;
            }
        }

        ////////////////////////////////////////////////////

        function NuncaTosoSlider() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _TextNuncaToso = document.getElementById("<%= TextNuncaToso.ClientID %>");
            var _NuncaTosoSlider = document.getElementById("<%= NuncaTosoSlider.ClientID %>");

            _TextNuncaToso.value = _NuncaTosoSlider.value;
            SumaPuntos();
        }

        ////////////////////////////////////////////////////

        function RangeNuncaFlema() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _TextNuncaFlema = document.getElementById("<%= TextNuncaFlema.ClientID %>");
            var _RangeNuncaFlema = document.getElementById("<%= RangeNuncaFlema.ClientID %>");

            _TextNuncaFlema.value = _RangeNuncaFlema.value;
            SumaPuntos();
        }

        ////////////////////////////////////////////////////

        function RangeOpresionPecho() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _TextOpresionPecho = document.getElementById("<%= TextOpresionPecho.ClientID %>");
            var _RangeOpresionPecho = document.getElementById("<%= RangeOpresionPecho.ClientID %>");

            _TextOpresionPecho.value = _RangeOpresionPecho.value;
            SumaPuntos();
        }

        ////////////////////////////////////////////////////

        function RangeFaltaAire() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _TextFaltaAire = document.getElementById("<%= TextFaltaAire.ClientID %>");
            var _RangeFaltaAire = document.getElementById("<%= RangeFaltaAire.ClientID %>");

            _TextFaltaAire.value = _RangeFaltaAire.value;
            SumaPuntos();
        }

        ////////////////////////////////////////////////////

        function RangeActividadDomestica() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _TextActividadDomestica = document.getElementById("<%= TextActividadDomestica.ClientID %>");
            var _RangeActividadDomestica = document.getElementById("<%= RangeActividadDomestica.ClientID %>");

            _TextActividadDomestica.value = _RangeActividadDomestica.value;
            SumaPuntos();
        }


        ////////////////////////////////////////////////////

        function RangeAfeccionPulmonar() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _TextAfeccionPulmonar = document.getElementById("<%= TextAfeccionPulmonar.ClientID %>");
            var _RangeAfeccionPulmonar = document.getElementById("<%= RangeAfeccionPulmonar.ClientID %>");

            _TextAfeccionPulmonar.value = _RangeAfeccionPulmonar.value;
            SumaPuntos();
        }

        ////////////////////////////////////////////////////

        function RangeDormir() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _TextDormir = document.getElementById("<%= TextDormir.ClientID %>");
            var _RangeDormir = document.getElementById("<%= RangeDormir.ClientID %>");

            _TextDormir.value = _RangeDormir.value;
            SumaPuntos();
        }

        ////////////////////////////////////////////////////

        function RangeEnergia() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger;

            var _TextEnergia = document.getElementById("<%= TextEnergia.ClientID %>");
            var _RangeEnergia = document.getElementById("<%= RangeEnergia.ClientID %>");

            _TextEnergia.value = _RangeEnergia.value;
            SumaPuntos();
        }

        ////////////////////////////////////////////////////

        function SumaPuntos() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger; 

            var _TextTotalPuntos = document.getElementById("<%= TextTotalPuntos.ClientID %>");
            var _NuncaTosoSlider = document.getElementById("<%= NuncaTosoSlider.ClientID %>");
            var _RangeNuncaFlema = document.getElementById("<%= RangeNuncaFlema.ClientID %>");
            var _RangeOpresionPecho = document.getElementById("<%= RangeOpresionPecho.ClientID %>");
            var _RangeFaltaAire = document.getElementById("<%= RangeFaltaAire.ClientID %>");
            var _RangeActividadDomestica = document.getElementById("<%= RangeActividadDomestica.ClientID %>");
            var _RangeAfeccionPulmonar = document.getElementById("<%= RangeAfeccionPulmonar.ClientID %>");
            var _RangeDormir = document.getElementById("<%= RangeDormir.ClientID %>");
            var _RangeEnergia = document.getElementById("<%= RangeEnergia.ClientID %>");

            _TextTotalPuntos.value = parseInt(_NuncaTosoSlider.value) + parseInt(_RangeNuncaFlema.value) + parseInt(_RangeOpresionPecho.value) + parseInt(_RangeFaltaAire.value) + parseInt(_RangeActividadDomestica.value) + parseInt(_RangeAfeccionPulmonar.value) + parseInt(_RangeDormir.value) + parseInt(_RangeEnergia.value);
            //_TextTotalPuntos.value = parseFloat(result.toFixed(0));
        }

        ////////////////////////////////////////////////////

        function IndiceBodex() {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014
            
            var _Text2VEF = document.getElementById("<%= Text2VEF.ClientID %>");
            var _TextIMC = document.getElementById("<%= TextIMC.ClientID %>");
            var _TextMetrosCami = document.getElementById("<%= TextMetrosCami.ClientID %>");
            var _DropDownListDisnea = document.getElementById("<%= DropDownListDisnea.ClientID %>");
            var _TextIndiceBODE = document.getElementById("<%= TextIndiceBODE.ClientID %>");
            var _TextIndiceBODEx = document.getElementById("<%= TextIndiceBODEx.ClientID %>");
            var _TextExacerbaGraves = document.getElementById("<%= TextExacerbaGraves.ClientID %>");
            var _TextExacerbaMuyGraves = document.getElementById("<%= TextExacerbaMuyGraves.ClientID %>");
            var _checkboxExacerbaGravesSi = document.getElementById("<%= checkboxExacerbaGravesSi.ClientID %>");
            var _checkboxExacerbaMuyGravesSi = document.getElementById("<%= checkboxExacerbaMuyGravesSi.ClientID %>");


            if (_TextIMC.value <= 21)
            {
                var IMC = 1;
            }
            else if (_TextIMC.value > 21)
            {
                var IMC = 0;
            }

            //////////////////////
           
            if (_Text2VEF.value <= 35) {
                var VEF1 = 3;
            }
            else if (_Text2VEF.value <= 49 || _Text2VEF.value >= 36) {
                var VEF1 = 2;
            }
            else if (_Text2VEF.value <= 64 || _Text2VEF.value >= 50) {
                var VEF1 = 1;
            }
            else if (_Text2VEF.value >= 65) {
                var VEF1 = 0;
            }

            /////////////////////

            if (_DropDownListDisnea.value == 1 || _DropDownListDisnea.value == 2) {
                var DISNEA = 0;
            }
            else if (_DropDownListDisnea.value == 3) {
                var DISNEA = 1;
            }
            else if (_DropDownListDisnea.value == 4) {
                var DISNEA = 2;
            }
            else if (_DropDownListDisnea.value == 5) {
                var DISNEA = 3;
            }

            //////////////////////           

            if (_TextMetrosCami.value == '') {
                var METROSCAMI = 3;
            }
            else if (_TextMetrosCami.value <= 149) {
                var METROSCAMI = 3;
            }
            else if (_TextMetrosCami.value <= 249 || _TextMetrosCami.value >= 150) {
                var METROSCAMI = 2;
            }
            else if (_TextMetrosCami.value <= 349 || _TextMetrosCami.value >= 250) {
                var METROSCAMI = 1;
            }
            else if (_TextMetrosCami.value >= 350) {
                var METROSCAMI = 0;
            }
           
            _TextIndiceBODE.value = parseInt(IMC) + parseInt(VEF1) + parseInt(DISNEA) + parseInt(METROSCAMI);        

            //////////////////////

            if (_checkboxExacerbaGravesSi.checked == true && _checkboxExacerbaMuyGravesSi.checked == true)
            {
                alert('Sólo puedes escoger un tipo de exacerbación');
                return false;
            }

            if (_checkboxExacerbaGravesSi.checked == true) {
                if (_TextExacerbaGraves.value == '') {
                    var EXAGRAVES = 0;
                }
                else if (_TextExacerbaGraves.value == 0) {
                    var EXAGRAVES = 0;
                }
                else if (_TextExacerbaGraves.value == 1 || _TextExacerbaGraves.value == 2) {
                    var EXAGRAVES = 1;
                }
                else if (_TextExacerbaGraves.value >= 3) {
                    var EXAGRAVES = 2;
                }
                _TextIndiceBODEx.value = parseInt(IMC) + parseInt(VEF1) + parseInt(DISNEA) + parseInt(EXAGRAVES);
                return false;
            }
            else {
                _TextIndiceBODEx.value = '';                
            }

            //////////////////////           

            if (_checkboxExacerbaMuyGravesSi.checked == true) {
                if (_TextExacerbaMuyGraves.value == '') {
                    var EXAMUYGRAVES = 0;
                }
                else if (_TextExacerbaMuyGraves.value == 0) {
                    var EXAMUYGRAVES = 0;
                }
                else if (_TextExacerbaMuyGraves.value == 1 || _TextExacerbaMuyGraves.value == 2) {
                    var EXAMUYGRAVES = 1;
                }
                else if (_TextExacerbaMuyGraves.value >= 3) {
                    var EXAMUYGRAVES = 2;
                }
                _TextIndiceBODEx.value = parseInt(IMC) + parseInt(VEF1) + parseInt(DISNEA) + parseInt(EXAMUYGRAVES);
                return false;
            }
            else {
                _TextIndiceBODEx.value = '';                
            }
        }

        ////////////////////////////////////////////////////

        function TextMetrosCamiKeypress(evt) {
            //-- Objetivo : valida Rbtn seleccionado de fisicos
            //--- EricZan 25/Jun/2014

            //debugger; 

            var _TextMetrosCami = document.getElementById("<%= TextMetrosCami.ClientID %>");
            
            
            evt = (evt) ? evt : window.event
            var charCode = (evt.which) ? evt.which : evt.keyCode

            if (charCode == 13) {                
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
                                    <asp:Label ID="LabelNombrePaciente" runat="server" Text="Nombre del Paciente"></asp:Label>
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
						<strong>Información sobre la primera visita.</strong>                        
					</div>
				
					<!-- row -->
					<div class="row">
				
						<!-- NEW WIDGET START -->
						<%--<article class="col-sm-12 col-md-12 col-lg-6">--%>
						<article class="col-lg-12">
						
							<!-- Widget ID (each widget will need unique ID)-->
							<div class="jarviswidget" id="idDatosDemograficos" 
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
									<h2>I. Datos Demográficos</h2>
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
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Apellido Paterno:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                            <input class="form-control input-md" type="text" id="TextApePaterno" name="Apellido Paterno" placeholder="Apellido Paterno" runat="server" onKeyPress="return fnKeyPress3 (event,1)" onclick="return fnKeyPress3(event, 1)"/>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Apellido Materno:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                            <input class="form-control input-md" type="text" id="TextApeMaterno" name="Apellido Materno" placeholder="Apellido Materno" runat="server" onKeyPress="return fnKeyPress3 (event,2)" onclick="return fnKeyPress3(event, 2)"/>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Nombre(s):</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                            <input class="form-control input-md" type="text" id="TextNombres" name="Nombre" placeholder="Nombre(s)" runat="server" onKeyPress="return fnKeyPress3 (event,3)" onclick="return fnKeyPress3(event, 3)"/>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Fecha de Nacimiento (dd/mm/aaaa):</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="icon-append fa fa-calendar"></i></span>
                                                                                            <input type="text" name="Textstartdate" id="Textstartdate" placeholder="Fecha de Nacimiento" class="form-control input-md" runat="server" onKeyPress="return fnKeyPress3 (event,4)" onclick="return fnKeyPress3(event, 4)">                                                                                            
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Edad en años cumplidos:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                            <input class="form-control input-md" type="text" id="EdadAnios" name="Edad" placeholder="Mayores de 35 años" runat="server" disabled="disabled"/>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Estado de Residencia:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                            <%--<input class="form-control input-md" type="text" id="EdoResidencia" name="Estado" placeholder="Estado" runat="server" onKeyPress="return fnKeyPress3 (event,6)" onclick="return fnKeyPress3(event, 6)"/>--%>
                                                                                            <asp:DropDownList ID="DropDownListEdoResidencia" runat="server" class="select2">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Aguascalientes</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Baja California</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Baja California Sur</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Campeche</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">Chiapas</asp:ListItem>
                                                                                                    <asp:ListItem Value="6">Chihuahua</asp:ListItem>
                                                                                                    <asp:ListItem Value="7">Coahuila</asp:ListItem>
                                                                                                    <asp:ListItem Value="8">Colima</asp:ListItem>
                                                                                                    <asp:ListItem Value="9">Ciudad de México</asp:ListItem>
                                                                                                    <asp:ListItem Value="10">Durango</asp:ListItem>
                                                                                                    <asp:ListItem Value="11">Estado de México</asp:ListItem>   
                                                                                                    <asp:ListItem Value="12">Guanajuato</asp:ListItem>
                                                                                                    <asp:ListItem Value="13">Guerrero</asp:ListItem>
                                                                                                    <asp:ListItem Value="14">Hidalgo</asp:ListItem>
                                                                                                    <asp:ListItem Value="15">Jalisco</asp:ListItem>
                                                                                                    <asp:ListItem Value="16">Michoacán</asp:ListItem>
                                                                                                    <asp:ListItem Value="17">Morelos</asp:ListItem>
                                                                                                    <asp:ListItem Value="18">Nayarit</asp:ListItem>
                                                                                                    <asp:ListItem Value="19">Nuevo León</asp:ListItem>
                                                                                                    <asp:ListItem Value="20">Oaxaca</asp:ListItem>
                                                                                                    <asp:ListItem Value="21">Puebla</asp:ListItem>
                                                                                                    <asp:ListItem Value="22">Querétaro</asp:ListItem>
                                                                                                    <asp:ListItem Value="23">Quintana Roo</asp:ListItem>
                                                                                                    <asp:ListItem Value="24">San Luis Potosí</asp:ListItem>
                                                                                                    <asp:ListItem Value="25">Sinaloa</asp:ListItem>
                                                                                                    <asp:ListItem Value="26">Sonora</asp:ListItem>
                                                                                                    <asp:ListItem Value="27">Tabasco</asp:ListItem>
                                                                                                    <asp:ListItem Value="28">Tamaulipas</asp:ListItem>
                                                                                                    <asp:ListItem Value="29">Tlaxcala</asp:ListItem>
                                                                                                    <asp:ListItem Value="30">Veracruz</asp:ListItem>
                                                                                                    <asp:ListItem Value="31">Yucatan</asp:ListItem>
                                                                                                    <asp:ListItem Value="32">Zacatecas</asp:ListItem>                                                                                                                                                                                                        
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
                                                                                        <label>Ciudad de Residencia:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                            <input class="form-control input-md" type="text" id="CiudadResi" name="Ciudad" placeholder="Ciudad" runat="server" onKeyPress="return fnKeyPress3 (event,7)" onclick="return fnKeyPress3(event, 7)"/>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Zona:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxUrbana" runat="server" onclick ="checkboxZona(this)"><i></i>Urbana
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxRural" onclick ="checkboxZona(this)"><i></i>Rural</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Se atiende en:</label>
                                                                                        <div class="input-group">
                                                                                           <span class="input-group-addon"><i class="fa fa-sitemap fa-fw"></i></span>
                                                                                            <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxInsPublic" runat="server" onclick ="checkboxAtencion(this)"><i></i>Ins. Pública
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxInsPriva" onclick ="checkboxAtencion(this)"><i></i>Ins. Privada</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Género:</label>
                                                                                        <div class="input-group">
                                                                                           <span class="input-group-addon"><i class="fa fa-female fa-fw"></i><i class="fa fa-male fa-fw"></i></span>
                                                                                           <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxMasculino" runat="server" onclick ="checkboxGenero(this)"><i></i>Masculino
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxFemenino" onclick ="checkboxGenero(this)"><i></i>Femenino</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Escolaridad:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-book"></i></span>
                                                                                                <asp:DropDownList ID="DropDownListEscolaridad" runat="server" class="select2">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Ninguno</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Primaria</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Secundaria</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Preparatoria</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">Carrera Técnica</asp:ListItem>
                                                                                                    <asp:ListItem Value="6">Licenciatura</asp:ListItem>
                                                                                                    <asp:ListItem Value="7">Posgrado</asp:ListItem>
                                                                                                    <asp:ListItem Value="8">Doctorado</asp:ListItem>
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
                                                                                        <label>Estado Civil:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                                <asp:DropDownList ID="DropDownListEdoCivil" runat="server" class="select2">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Soltero/a</asp:ListItem>                                                                                                    
                                                                                                    <asp:ListItem Value="2">Casado/a</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Divorciado/a</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Viudo/a</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">Unión Libre</asp:ListItem>
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
                                                                                        <label>Ocupación:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-search fa-fw"></i></span>
                                                                                                <asp:DropDownList ID="DropDownListOcupacion" runat="server" class="select2" onclick ="DropDownOcupacion()">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Medio Tiempo</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Tiempo Completo</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Desempleado</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Retirado o Pensionado</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">Hogar</asp:ListItem>
                                                                                                    <asp:ListItem Value="6">Otro</asp:ListItem>
                                                                                                </asp:DropDownList>
                                                                                            <input class="form-control input-md" type="text" id="TextOtraOcupa" name="OtraOcupa" placeholder="Otra" runat="server" disabled="disabled" />
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                             <div class="form-group">
                                                                                 <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Ingreso mensual:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                                <asp:DropDownList ID="DropDownListNivelSocio" runat="server" class="select2">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">0 a $1,500</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">$1,500 a $3,000</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">$3,001 a $5,000</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">$5,001 a $8,000</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">$8,001 a $10,000</asp:ListItem>
                                                                                                    <asp:ListItem Value="6">$10,001 a $15,000</asp:ListItem>
                                                                                                    <asp:ListItem Value="7">$15,001 a más</asp:ListItem>
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
                                                                                        <label>Teléfono de contacto:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                            <input class="form-control input-md" type="text" id="TextTelContacto" name="Contacto" placeholder="Teléfono fijo" runat="server" onKeyPress="return fnKeyPress3 (event,8)" onclick="return fnKeyPress3(event, 8)"/>
                                                                                            <input class="form-control input-md" type="text" id="TextTelContactoMovil" name="Contacto" placeholder="Teléfono móvil" runat="server" onKeyPress="return fnKeyPress3 (event,9)" onclick="return fnKeyPress3(event, 9)"/>
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
									<h2>II. Comorbilidades</h2>
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
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Cáncer:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxCancerSi" runat="server" onclick ="checkboxCancer(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxCancerNo" onclick ="checkboxCancer(this)"><i></i>No</label>
                                                                                                <%--<label class="form-control input-md">Con tratamiento <input type="checkbox" name="checkbox-inline" id="checkboxCancerTratSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxCancerTratNo"><i></i>No</label>--%>
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
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxDiabetesSi" runat="server" onclick ="checkboxDiabetes(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxDiabetesNo" onclick ="checkboxDiabetes(this)"><i></i>No</label>
                                                                                                <%--<label class="form-control input-md">Con tratamiento <input type="checkbox" name="checkbox-inline" id="checkboxDiabetesTrataSi" runat="server"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxDiabetesTrataNo"><i></i>No</label>--%>
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
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxHipertensionSi" runat="server" onclick ="checkboxHipertension(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxHipertensionNo" onclick ="checkboxHipertension(this)"><i></i>No</label>
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
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxDislipidemiaSi" runat="server" onclick ="checkboxDislipidemia(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxDislipidemiaNo" onclick ="checkboxDislipidemia(this)"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Historia de Infarto Agudo al Miocardio:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxInfartoSi" runat="server" onclick ="checkboxInfarto(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxInfartoNo" onclick ="checkboxInfarto(this)"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Historia de Insuficiencia Cardiaca:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxInsufiCardiSi" runat="server" onclick ="checkboxInsufiCardi(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxInsufiCardiNo" onclick ="checkboxInsufiCardi(this)"><i></i>No</label>
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
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxGastritisSi" runat="server" onclick ="checkboxGastritis(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxGastritisNo" onclick ="checkboxGastritis(this)"><i></i>No</label>
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
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxApneaSi" runat="server" onclick ="checkboxApnea(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxApneaNo" onclick ="checkboxApnea(this)"><i></i>No</label>
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
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxArritmiaSi" runat="server" onclick ="checkboxArritmia(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxArritmiaNo" onclick ="checkboxArritmia(this)"><i></i>No</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Asma:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxAsmaSi" runat="server" onclick ="checkboxAsma(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxAsmaNo" onclick ="checkboxAsma(this)"><i></i>No</label>
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
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxOsteoporosisSi" runat="server" onclick ="checkboxOsteoporosis(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxOsteoporosisNo" onclick ="checkboxOsteoporosis(this)"><i></i>No</label>
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
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxDepresionSi" runat="server" onclick ="checkboxDepresion(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxDepresionNo" onclick ="checkboxDepresion(this)"><i></i>No</label>
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
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxTuberculosisSi" runat="server" onclick ="checkboxTuberculosis(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxTuberculosisNo" onclick ="checkboxTuberculosis(this)"><i></i>No</label>
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
							<div class="jarviswidget" id="Riesgo_sobre_posición" 
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
									<h2>III. Riesgo de Sobre posición</h2>
								</header>
				
								<!-- widget div-->
								<div>
								
                                <section id="widget-gridSobreposicion" class="">
                                    <!-- row -->
                                    <div class="row">
                                        <!-- NEW WIDGET START -->
                                        <article class="col-sm-12 col-md-12 col-lg-12">
                                            <!-- Widget ID (each widget will need unique ID)-->
                
                                                <div>
                                                    <div class="row">
                                                        <form>
                                                            <fieldset>
                                                                <div id="bootstrap-wizard-11" class="col-sm-12">
                                                                    <div class="row">
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Su paciente tiene el antecedente de ASMA:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md">
                                                                                                    <input type="checkbox" name="checkbox-inline" id="checkboxAnteAsmaSi" runat="server" onclick ="AnteAsma(this)"><i></i>Sí                                                                                                  
                                                                                                    <i></i><i> / </i><i></i>
                                                                                                    <input type="checkbox" name="checkbox-inline" runat="server" id="checkboxAnteAsmaNo" onclick ="AnteAsma(this)"><i></i>No
                                                                                                </label>
                                                                                                <label>Cuando:</label>                                                                                                   
                                                                                                    <asp:DropDownList ID="DropDownListAnteAsma" runat="server" class="select2" disabled="disabled">
                                                                                                        <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                        <asp:ListItem Value="1">Infancia </asp:ListItem>
                                                                                                        <asp:ListItem Value="2">Juventud </asp:ListItem>
                                                                                                        <asp:ListItem Value="3">Adultez</asp:ListItem>                                                                                                    
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
                                                                                        <label>Su paciente tiene antecedente de atopia:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxAnteAtopiaSi" runat="server" onclick ="checkboxAnteAtopia(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxAnteAtopiaNo" onclick ="checkboxAnteAtopia(this)"><i></i>No</label>                                                                                                
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Su paciente tiene un conteo absoluto de eosinófilos mayor a 300 células / mL:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxeosinofilosSi" runat="server" onclick ="checkboxeosinofilos(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxeosinofilosNo" onclick ="checkboxeosinofilos(this)"><i></i>No
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxeosinofilosND" onclick ="checkboxeosinofilos(this)"><i></i>
                                                                                                <a href="javascript:void(0);" rel="tooltip" data-placement="top" data-original-title="<h1><em>No Disponible!</em></h1>" data-html="true">ND</a></label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>                                                                   
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Su paciente tiene niveles elevados de IgE (Mayor a 450UI/mL):</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxIgESi" runat="server" onclick ="checkboxIgE(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxIgENo" onclick ="checkboxIgE(this)"><i></i>No
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxIgEND" onclick ="checkboxIgE(this)"><i></i>
                                                                                                <a href="javascript:void(0);" rel="tooltip" data-placement="top" data-original-title="<h1><em>No Disponible!</em></h1>" data-html="true">ND</a></label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-sm-4">
                                                                            <div class="form-group">
                                                                                <div class="input-group">
                                                                                    <div class="select2">
                                                                                        <label>Su paciente tiene reversibilidad en la espirometría mas de 12% y/o 200 ml:</label>
                                                                                        <div class="input-group">
                                                                                            <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxReverEspiroSi" runat="server" onclick ="checkboxReverEspiro(this)"><i></i>Sí
                                                                                                <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxReverEspiroNo" onclick ="checkboxReverEspiro(this)"><i></i>No</label>
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
							<div class="jarviswidget" id="HistoriaEPOC" 
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
									<h2>IV. Historia de la EPOC</h2>
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
								                                                <strong>A) Factores de riesgo:</strong>
							                                                </div>
                                                                             <div class="smart-form">
                                                                                <div class="widget-body no-padding ">
                                                                                    <header>
                                                                                        Exposición a humo de leña
                                                                                    </header>                                                                                    
                                                                                </div>
                                                                            </div>
                                                                             <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Exposición:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxExpoHumoLenaSi" runat="server" onclick ="checkboxExpoHumoLena(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxExpoHumoLenaNo" onclick ="checkboxExpoHumoLena(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Horas/año:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                                <input class="form-control input-md" type="text" id="TextHorasXAnio" name="Edad" placeholder="Horas de exposición" runat="server" disabled="disabled" maxlength="4"/>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                             <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Se expone actualmente:</label>                                                                                            
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxActualExpoHumoLenaSi" runat="server" disabled="disabled" onclick ="checkboxActualExpoHumoLena(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxActualExpoHumoLenaNo" disabled="disabled" onclick ="checkboxActualExpoHumoLena(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                                                                                                          
                                                                         </div>

                                                                        <div class="col-sm-12">                                                                            
                                                                             <div class="smart-form">
                                                                                <div class="widget-body no-padding ">
                                                                                    <header>
                                                                                        Tabaquismo
                                                                                    </header>                                                                                    
                                                                                </div>
                                                                            </div>
                                                                             <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Exposición:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxTabaquismoSi" runat="server" onclick ="checkboxTabaquismo(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxTabaquismoNo" onclick ="checkboxTabaquismo(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Paquetes por año:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                                <input class="form-control input-md" type="text" id="TextPaquetesXAnio" name="Edad" placeholder="Paquetes fumados" runat="server" disabled="disabled" maxlength="3"/>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                             <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>¿Fuma actualmente?:</label>                                                                                            
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxFumaActualSi" runat="server" disabled="disabled" onclick ="checkboxFumaActual(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxFumaActualNo" disabled="disabled" onclick ="checkboxFumaActual(this)"><i></i>No</label>
                                                                                                    <input class="form-control input-md" type="text" id="TextTiempoNoFumar" name="Edad" placeholder="Años y meses de no fumar" runat="server" disabled="disabled"/>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                                                                                                          
                                                                         </div>
                                                                        <div class="col-sm-12">                                                                            
                                                                             <div class="smart-form">
                                                                                <div class="widget-body no-padding ">
                                                                                    <header>
                                                                                        Exposiciones de riesgo (Polvos, Gases, Humos, Químicos)
                                                                                    </header>                                                                                    
                                                                                </div>
                                                                            </div>
                                                                             <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Exposición:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxRiesgosSi" runat="server" onclick ="checkboxRiesgos(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxRiesgosNo" onclick ="checkboxRiesgos(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Cuantos años:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                                <input class="form-control input-md" type="text" id="TextAniosdeRiesgo" name="Edad" placeholder="Años de riesgo" runat="server" disabled="disabled" maxlength="2"/>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                             <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>¿Cuáles?:</label>                                                                                            
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextCualRiesgo" name="Edad" placeholder="Cuáles riesgos" runat="server" disabled="disabled" onclick="return fnKeyPress4(event, 10)"/>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                                                                                                          
                                                                         </div>

                                                                        <p style="margin: 20px 0 0 0"></p>
                                                                        <div class="col-sm-12">
                                                                            <div class="alert alert-success fade in">
								                                                <i class="fa-fw fa fa-check"></i>
								                                                <strong>B) Historia de exacerbaciones en el año previo: <small>(Para contestar, leer cuidadosamente el recuadro azul.)</small></strong>
							                                                </div>
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
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxExacerModeradasSi" runat="server" onclick ="checkboxExacerModeradas(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxExacerModeradasNo" onclick ="checkboxExacerModeradas(this)"><i></i>No</label>
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
                                                                                                    <input class="form-control input-md" type="text" id="TextExacerModeradas" name="Edad" placeholder="No. de exacerbaciones" runat="server" disabled="disabled"/>
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
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxExacerbaGravesSi" runat="server" onclick ="checkboxExacerbaGraves(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxExacerbaGravesNo" onclick ="checkboxExacerbaGraves(this)"><i></i>No</label>
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
                                                                                                    <input class="form-control input-md" type="text" id="TextExacerbaGraves" name="Edad" placeholder="No. de exacerbaciones" runat="server" disabled="disabled"/>
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
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxExacerbaMuyGravesSi" runat="server" onclick ="checkboxExacerbaMuyGraves(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxExacerbaMuyGravesNo" onclick ="checkboxExacerbaMuyGraves(this)"><i></i>No</label>
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
                                                                                                    <input class="form-control input-md" type="text" id="TextExacerbaMuyGraves" name="Edad" placeholder="No. de exacerbaciones" runat="server" disabled="disabled"/>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            
                                                                            <div class="col-sm-12">
                                                                                <div class="alert alert-success fade in">
								                                                    <i class="fa-fw fa fa-check"></i>
								                                                    <strong>C) Tratamiento de la EPOC:</strong>
							                                                    </div>
                                                                            </div>
                                                                            <div class="col-sm-12">   
                                                                                <p class="alert alert-info">
											                                        <strong>1.- TRATAMIENTO NO FARMACOLOGICO:</strong>
										                                        </p>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <%--<div class="select2">
                                                                                            <label>Cese de tabaquismo:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxCeseTabaSi" runat="server" onclick ="checkboxCeseTaba(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxCeseTabaNo" onclick ="checkboxCeseTaba(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>--%>
                                                                                        <div class="select2">
                                                                                            <label>¿Con qué dejó de fumar?</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                                   
                                                                                                    <asp:DropDownList ID="DropDownListDejodeFumar" runat="server" class="select2">
                                                                                                        <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                        <asp:ListItem Value="1">Sin ningún tratamiento</asp:ListItem>
                                                                                                        <asp:ListItem Value="2">TRN</asp:ListItem>
                                                                                                        <asp:ListItem Value="3">Varenicline</asp:ListItem>
                                                                                                        <asp:ListItem Value="4">Bupropión</asp:ListItem>
                                                                                                        <asp:ListItem Value="5">Terapia congnitivo conductual</asp:ListItem>
                                                                                                        <asp:ListItem Value="6">Combinación</asp:ListItem>
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
                                                                                            <label>Oxígeno suplementario:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxOxiSupleSi" runat="server" onclick ="checkboxOxiSuple(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxOxiSupleNo" onclick ="checkboxOxiSuple(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>¿Ha recibido rehabilitación pulmonar?</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxRehabilitacionSi" runat="server" onclick ="checkboxRehabilitacion(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxRehabilitacionNo" onclick ="checkboxRehabilitacion(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-6">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Vacunación en el último año para Influenza:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxVacunasInfluenSi" runat="server" onclick ="checkboxVacunasInfluen(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxVacunasInfluenNo" onclick ="checkboxVacunasInfluen(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-6">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Vacunación en los últimos 5 años contra neumococo:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxVacunasNeumoSi" runat="server" onclick ="checkboxVacunasNeumo(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxVacunasNeumoNo" onclick ="checkboxVacunasNeumo(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>                                                                            
                                                                            <div class="col-sm-12">   
                                                                                <p class="alert alert-info">
											                                        <strong>2.- TERAPIA INHALADA: <small>(Brocodilatadores y Esteroides)</small></strong>
										                                        </p>
                                                                            </div>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Su paciente usa SABA:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxSabaHorario" runat="server" onclick ="checkboxSaba(this)"><i></i>Con Horario
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxSabaPRN" onclick ="checkboxSaba(this)"><i></i>PRN
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxSabaNo" onclick ="checkboxSaba(this)"><i></i>No</label>
                                                                                                <label>Cuáles:</label>                                                                                                                                                                                          
                                                                                                <asp:DropDownList ID="DropDownListSaba" runat="server" class="select2" disabled="disabled">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Salbutamol</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Ipratropio</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Combinación</asp:ListItem>                                                                                                    
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
                                                                                            <label>Su paciente usa LABA:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxLabaSi" runat="server" onclick ="checkboxLaba(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxLabaNo" onclick ="checkboxLaba(this)"><i></i>No</label>
                                                                                                <label>Cuáles:</label>                                                                                                                                                                                          
                                                                                                <asp:DropDownList ID="DropDownListLaba" runat="server" class="select2" disabled="disabled">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Salmeterol</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Formoterol</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Indacaterol</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Vilanterol</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">Olodaterol</asp:ListItem>
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
                                                                                            <label>Su paciente usa LAMA:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxLamaSi" runat="server" onclick ="checkboxLama(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxLamaNo" onclick ="checkboxLama(this)"><i></i>No</label>
                                                                                                <label>Cuáles:</label>                                                                                                                                                                                          
                                                                                                <asp:DropDownList ID="DropDownListLama" runat="server" class="select2" disabled="disabled">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Tiotropio</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Aclidinio</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Glicopirronio</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Umeclidinio</asp:ListItem>
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
                                                                                            <label>Su Paciente usa Esteroide Inhalado:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxEsteroideSi" runat="server" onclick ="checkboxEsteroide(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxEsteroideNo" onclick ="checkboxEsteroide(this)"><i></i>No</label>
                                                                                                <label>Cuáles:</label>                                                                                                                                                                                          
                                                                                                <asp:DropDownList ID="DropDownListEsteroide" runat="server" class="select2" disabled="disabled" onclick ="DropDownListEsteroide(this)">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Budesonida</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Fluticasona</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Ciclesonida</asp:ListItem>
                                                                                                    <asp:ListItem Value="4">Mometasona</asp:ListItem>
                                                                                                    <asp:ListItem Value="5">Beclometasona</asp:ListItem>
                                                                                                    <asp:ListItem Value="6">Furoato de fluticasona</asp:ListItem>
                                                                                                </asp:DropDownList>
                                                                                                <asp:DropDownList ID="DropDownListDosisEsteroide" runat="server" class="select2" disabled="disabled">
                                                                                                    <asp:ListItem Value="0">--SELECCIONAR--</asp:ListItem>
                                                                                                    <asp:ListItem Value="1">Dosis baja</asp:ListItem>
                                                                                                    <asp:ListItem Value="2">Dosis media</asp:ListItem>
                                                                                                    <asp:ListItem Value="3">Dosis alta</asp:ListItem>                                                                                                    
                                                                                                </asp:DropDownList>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <%--<div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Que dosis de esteroide inhalado usa:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxEsteroideDosisSi" runat="server" onclick ="checkboxEsteroideDosis(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxEsteroideDosisNo" onclick ="checkboxEsteroideDosis(this)"><i></i>No</label>
                                                                                                <label>Cuáles:</label>                                                                                                                                                                                          
                                                                                                                                                                                           
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>--%>
                                                                            <div class="col-sm-4">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Tipo de Terapia:</label>                                                                                            
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <input class="form-control input-md" type="text" id="TextTipoTerapia" name="Terapia" placeholder="Tipo de Terapia" runat="server" disabled="disabled" />
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-12">   
                                                                                <p class="alert alert-info">
											                                        <strong>3.- OTROS FARMACOS</strong>
										                                        </p>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Teofilina:</label>                                                                                            
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxTeofilinaSi" runat="server" onclick ="checkboxTeofilina(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxTeofilinaNo" onclick ="checkboxTeofilina(this)"><i></i>No</label>
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
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxRoflumilastSi" runat="server" onclick ="checkboxRoflumilast(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxRoflumilastNo" onclick ="checkboxRoflumilast(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Mucolíticos:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxMucoliticosSi" runat="server" onclick ="checkboxMucoliticos(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxMucoliticosNo" onclick ="checkboxMucoliticos(this)"><i></i>No</label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Morfina:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxMorfinaSi" runat="server" onclick ="checkboxMorfina(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxMorfinaNo" onclick ="checkboxMorfina(this)"><i></i>No</label>
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
							<div class="jarviswidget" id="DivTratamientoComorbilidades" 
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
									<h2>V. Tratamiento de las comorbilidades de la EPOC</h2>
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
                                                                                    <div class="col-sm-4">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Antihipertensivo:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxAntihipertensivoSi" runat="server" onclick ="checkboxAntihipertensivo(this)"><i></i>Sí
                                                                                                            <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxAntihipertensivoNo" onclick ="checkboxAntihipertensivo(this)"><i></i>No</label>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-4">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Diurético:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxDiureticoSi" runat="server" onclick ="checkboxDiuretico(this)"><i></i>Sí
                                                                                                            <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxDiureticoNo" onclick ="checkboxDiuretico(this)"><i></i>No</label>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-4">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Hipoglucemiante:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxHipoglucemianteSi" runat="server" onclick ="checkboxHipoglucemiante(this)"><i></i>Sí
                                                                                                            <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxHipoglucemianteNo" onclick ="checkboxHipoglucemiante(this)"><i></i>No</label>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-4">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Estatina:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxEstatinaSi" runat="server" onclick ="checkboxEstatina(this)"><i></i>Sí
                                                                                                            <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxEstatinaNo" onclick ="checkboxEstatina(this)"><i></i>No</label>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-4">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Medicamentos para dormir:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxMediParaDormirSi" runat="server" onclick ="checkboxMediParaDormir(this)"><i></i>Sí
                                                                                                            <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxMediParaDormirNo" onclick ="checkboxMediParaDormir(this)"><i></i>No</label>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-4">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Antidepresivo:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxAntidepresivoSi" runat="server" onclick ="checkboxAntidepresivo(this)"><i></i>Sí
                                                                                                            <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxAntidepresivoNo" onclick ="checkboxAntidepresivo(this)"><i></i>No</label>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-4">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Acido acetilsalicilico:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxacetilsalicilicoSi" runat="server" onclick ="checkboxacetilsalicilico(this)"><i></i>Sí
                                                                                                            <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxacetilsalicilicoNo" onclick ="checkboxacetilsalicilico(this)"><i></i>No</label>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-sm-4">
                                                                                        <div class="form-group">
                                                                                            <div class="input-group">
                                                                                                <div class="select2">
                                                                                                    <label>Otros:</label>
                                                                                                    <div class="input-group">
                                                                                                        <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                            <input class="form-control input-md" type="text" id="TextOtros" name="Otros" placeholder="Cuales" runat="server" />
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
									<h2>VI. Signos Vitales</h2>
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
									<h2>VII. Evaluación integral de la EPOC</h2>
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
													                                <label class="col-md-12 control-label">3.CVF ml</label>
													                                <div class="col-md-4">
														                                <input class="form-control input-md" type="text" id="Text3FVC" name="3FVC" placeholder="" runat="server" style="width:56px" maxlength="4" onKeyPress="return fnKeyPress2 (event,3)" onclick="return fnKeyPress2(event, 3)"/>
													                                </div>                                                                                                                                                                          
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-2">
                                                                                 <div class="form-group">
													                                <label class="col-md-12 control-label">4.CVF %</label>
													                                <div class="col-md-4">
														                                <input class="form-control input-md" type="text" id="Text4FVC" name="4FVC" placeholder="" runat="server" style="width:50px" maxlength="3" onKeyPress="return fnKeyPress2 (event,4)" onclick="return fnKeyPress2(event, 4)"/>
													                                </div>                                                                                                                                                                          
												                                </div>
                                                                            </div>
                                                                            <div class="col-sm-3">
                                                                                 <div class="form-group">
													                                <label class="col-md-12 control-label">5.VEF1/CVF (Máx. 69.9%)</label>
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
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxPruebaSi" runat="server" onclick ="checkboxPrueba(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxPruebaNo" onclick ="checkboxPrueba(this)"><i></i>No</label>
                                                                                            </div>
                                                                                            <div class="note">
														                                        En caso de NO indique porqué
													                                        </div>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>                                                                                            
                                                                                                    <asp:DropDownList ID="DropDownListPruebaNo" runat="server" class="select2" disabled="disabled">
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
                                                                                                        <input class="form-control input-md" type="text" id="TextMetrosCami" name="FC" placeholder="Metros Caminados" runat="server" disabled="disabled" onkeypress="TextMetrosCamiKeypress(event)"/>                                                                                                        
                                                                                                </div>                                                                                            
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                        </div>
                                                                    
                                                                        <div class="col-sm-12">                                                                        
                                                                            <div class="alert alert-info alert-block">								                                                
								                                                <h4 class="alert-heading">Escala mMRC <br />Info!</h4>
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
                                                                                                <asp:DropDownList ID="DropDownListDisnea" runat="server" class="select2" onclick="return IndiceBodex()">
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
                                                                                                <input class="form-control input-md" type="text" id="TextIndiceBODEx" name="IndiceBODEx" placeholder="Indice BODEx" runat="server" disabled="disabled"/>
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
                                                                                                    <label class="form-control input-md"><input type="checkbox" name="checkbox-inline" id="checkboxFaltaAireSi" runat="server" onclick ="checkboxFaltaAire(this)"><i></i>Sí
                                                                                                    <i></i><i> / </i><i></i><input type="checkbox" name="checkbox-inline" runat="server" id="checkboxFaltaAireNo" onclick ="checkboxFaltaAire(this)"><i></i>No</label>
                                                                                                <label>Cuántas:</label>                                                                                                                                                                                          
                                                                                                <asp:DropDownList ID="DropDownListFaltaAire" runat="server" class="select2" disabled="disabled">
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
                                                                        <div class="row" style="margin-left:5px">
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
                                                                                    <input class="form-control input-md" type="text" id="TextNuncaToso" name="NuncaToso" placeholder="0" runat="server" disabled="disabled" style="width:20%; text-align:center; margin-left:auto; margin-right:auto"/>                                                                                
                                                                                    <input type="range" name="price-min" id="NuncaTosoSlider"  value="0" min="0" max="6" runat="server" step="1" onclick="NuncaTosoSlider()">
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
                                                                        </div>                                                                        
                                                                        
                                                                        <div class="row" style="margin-left:5px">
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
                                                                                    <input class="form-control input-md" type="text" id="TextNuncaFlema" name="NuncaToso" placeholder="0" runat="server" disabled="disabled" style="width:20%; text-align:center; margin-left:auto; margin-right:auto"/>                                                                                
                                                                                    <input type="range" name="price-min" id="RangeNuncaFlema"  value="0" min="0" max="6" runat="server" step="1" onclick="RangeNuncaFlema()">
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
                                                                        </div>

                                                                        <div class="row" style="margin-left:5px">
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
                                                                                    <input class="form-control input-md" type="text" id="TextOpresionPecho" name="NuncaToso" placeholder="0" runat="server" disabled="disabled" style="width:20%; text-align:center; margin-left:auto; margin-right:auto"/>                                                                                
                                                                                    <input type="range" name="price-min" id="RangeOpresionPecho"  value="0" min="0" max="6" runat="server" step="1" onclick="RangeOpresionPecho()">
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
                                                                        </div>
                                                                        
                                                                        <div class="row" style="margin-left:5px">
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
                                                                                    <input class="form-control input-md" type="text" id="TextFaltaAire" name="NuncaToso" placeholder="0" runat="server" disabled="disabled" style="width:20%; text-align:center; margin-left:auto; margin-right:auto"/>                                                                                
                                                                                    <input type="range" name="price-min" id="RangeFaltaAire"  value="0" min="0" max="6" runat="server" step="1" onclick="RangeFaltaAire()">
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
                                                                        </div>
                                                                        
                                                                        <div class="row" style="margin-left:5px">
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
                                                                                    <input class="form-control input-md" type="text" id="TextActividadDomestica" name="NuncaToso" placeholder="0" runat="server" disabled="disabled" style="width:20%; text-align:center; margin-left:auto; margin-right:auto"/>                                                                                
                                                                                    <input type="range" name="price-min" id="RangeActividadDomestica"  value="0" min="0" max="6" runat="server" step="1" onclick="RangeActividadDomestica()">
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
                                                                        </div>

                                                                        <div class="row" style="margin-left:5px">
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
                                                                                    <input class="form-control input-md" type="text" id="TextAfeccionPulmonar" name="NuncaToso" placeholder="0" runat="server" disabled="disabled" style="width:20%; text-align:center; margin-left:auto; margin-right:auto"/>                                                                                
                                                                                    <input type="range" name="price-min" id="RangeAfeccionPulmonar"  value="0" min="0" max="6" runat="server" step="1" onclick="RangeAfeccionPulmonar()">
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
                                                                        </div>                                                                        

                                                                        <div class="row" style="margin-left:5px">
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
                                                                                    <input class="form-control input-md" type="text" id="TextDormir" name="NuncaToso" placeholder="0" runat="server" disabled="disabled" style="width:20%; text-align:center; margin-left:auto; margin-right:auto"/>                                                                                
                                                                                    <input type="range" name="price-min" id="RangeDormir"  value="0" min="0" max="6" runat="server" step="1" onclick="RangeDormir()">
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
                                                                        </div>                                                                        

                                                                        <div class="row" style="margin-left:5px">
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
                                                                                    <input class="form-control input-md" type="text" id="TextEnergia" name="NuncaToso" placeholder="0" runat="server" disabled="disabled" style="width:20%; text-align:center; margin-left:auto; margin-right:auto"/>                                                                                
                                                                                    <input type="range" name="price-min" id="RangeEnergia"  value="0" min="0" max="6" runat="server" step="1" onclick="RangeEnergia()">
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
                                                                        </div>                                                                        


                                                                        <div class="col-sm-6">
                                                                                <div class="form-group">
                                                                                    <div class="input-group">
                                                                                        <div class="select2">
                                                                                            <label>Total de puntos:</label>
                                                                                            <div class="input-group">
                                                                                                <span class="input-group-addon"><i class="fa fa-list fa-fw"></i></span>
                                                                                                <input class="form-control input-md" type="text" id="TextTotalPuntos" name="TotalPuntos" placeholder="" runat="server" disabled="disabled" value="0"/>
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

    <script src="../../Scripts/js/plugin/ion-slider/ion.rangeSlider.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
    <link href="../../Scripts/js/plugin/rangeslider/rangeslider.css" rel="stylesheet" />
    <script src="../../Scripts/js/plugin/rangeslider/rangeslider.js"></script>
    <script src="../../Scripts/js/plugin/rangeslider/rangeslider.min.js"></script>


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

			var $SignosVitales = $("#signos-vitales").validate({

			    // Rules for form validation
			    rules: {			        
			        TextPeso: {
			            required: true,
			            minlength: 30,
			            maxlength: 150
			        },
			        passwordConfirm: {
			            required: true,
			            minlength: 3,
			            maxlength: 20,
			            equalTo: '#password'
			        }
			    },

			    // Messages for form validation
			    messages: {			        
			        password: {
			            required: 'Please enter your password'
			        },
			        passwordConfirm: {
			            required: 'Please enter your password one more time',
			            equalTo: 'Please enter the same password as above'
			        }			        
			    },

			    // Do not change code below
			    errorPlacement: function (error, element) {
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
			$('#Textstartdate').datepicker({
				dateFormat : 'dd.mm.yy',
				prevText : '<i class="fa fa-chevron-left"></i>',
				nextText: '<i class="fa fa-chevron-right"></i>',
                
				//onSelect : function(selectedDate) {
				//    $('#finishdate').datepicker('option', 'minDate', selectedDate);				    
				//}
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
