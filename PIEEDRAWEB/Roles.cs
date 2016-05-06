using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SIAS
{
    public class Roles
    {
        public bool Valida(string tUser, string  transacc, string bandera) {
            

            if (tUser.Equals("F"))
            {
                if (transacc.Equals("AtMed"))
                {
                    return false;
                }
                if (transacc.Equals("GestMed"))
                {
                    return false;
                }
                if (transacc.Equals("MiCuenta"))
                {
                    return false;
                }
                if (transacc.Equals("ExpeClini"))
                {
                    return false;
                }
                if (transacc.Equals("GestFarm"))
                {
                    return true;
                }
                if (transacc.Equals("ModFarm"))
                {
                    return true;
                }
                if (transacc.Equals("NotaClinic"))
                {
                    return false;
                }
                if (transacc.Equals("RecetaMed"))
                {
                    return false;
                }
                if (transacc.Equals("SignosVit"))
                {
                    return false;
                }
                if (transacc.Equals("SolServ"))
                {
                    return false;
                }
                if (transacc.Equals("ReportInca"))
                {
                    return false;
                }
                if (transacc.Equals("Gen_Folio"))
                {
                    return false;
                }
                if (transacc.Equals("Cat_Usuarios"))
                {
                    return false;
                }
                if (transacc.Equals("ReportConsul"))
                {
                    return false;
                }
                if (transacc.Equals("Asig_Recep"))
                {
                    return false;
                }
            } 
            
            if (tUser.Equals("M"))
            {

                if (transacc.Equals("AtMed"))
                {
                    return true;
                }
                if (transacc.Equals("GestMed"))
                {
                    return true;
                }
                if (transacc.Equals("MiCuenta"))
                {
                    return false;
                }
                if (transacc.Equals("ExpeClini"))
                {
                    return true;
                }
                if (transacc.Equals("GestFarm"))
                {
                    return false;
                }
                if (transacc.Equals("ModFarm"))
                {
                    return false;
                }
                if (transacc.Equals("NotaClinic"))
                {
                    return true;
                }
                if (transacc.Equals("RecetaMed"))
                {
                    return true;
                }
                if (transacc.Equals("SignosVit"))
                {
                    return true;
                }
                if (transacc.Equals("SolServ"))
                {
                    return true;
                }
                if (transacc.Equals("ReportInca"))
                {
                    return false;
                }
                if (transacc.Equals("Gen_Folio"))
                {
                    return false;
                }
                if (transacc.Equals("Cat_Usuarios"))
                {
                    return false;
                }
                if (transacc.Equals("ReportConsul"))
                {
                    return false;
                }
                if (transacc.Equals("Asig_Recep"))
                {
                    return true;
                }
            } 
            
            if (tUser.Equals("A"))
            {

                if (transacc.Equals("AtMed"))
                {
                    return true;
                }
                if (transacc.Equals("GestMed"))
                {
                    return true;
                }
                if (transacc.Equals("MiCuenta"))
                {
                    return true;
                }
                if (transacc.Equals("ExpeClini") && bandera.Equals(""))
                {
                    return true;
                }
                if (transacc.Equals("ExpeClini") && bandera.Equals("1"))
                {
                    return true;
                }

                if (transacc.Equals("GestFarm"))
                {
                    return true;
                }
                if (transacc.Equals("ModFarm"))
                {
                    return true;
                }
                if (transacc.Equals("NotaClinic"))
                {
                    return true;
                }
                if (transacc.Equals("RecetaMed"))
                {
                    return true;
                }
                if (transacc.Equals("SignosVit"))
                {
                    return true;
                }
                if (transacc.Equals("SolServ"))
                {
                    return true;
                }
                if (transacc.Equals("ReportInca"))
                {
                    return true;
                }
                if (transacc.Equals("Gen_Folio"))
                {
                    return true;
                }
                if (transacc.Equals("Cat_Usuarios"))
                {
                    return true;
                }
                if (transacc.Equals("ReportConsul"))
                {
                    return true;
                }
                if (transacc.Equals("Asig_Recep"))
                {
                    return true;
                }
            }

            if (tUser.Equals("V"))
            {

                if (transacc.Equals("AtMed"))
                {
                    return false;
                }
                if (transacc.Equals("GestMed"))
                {
                    return false;
                }
                if (transacc.Equals("MiCuenta"))
                {
                    return false;
                }
                if (transacc.Equals("ExpeClini"))
                {
                    return false;
                }
                if (transacc.Equals("GestFarm"))
                {
                    return false;
                }
                if (transacc.Equals("ModFarm"))
                {
                    return false;
                }
                if (transacc.Equals("NotaClinic"))
                {
                    return false;
                }
                if (transacc.Equals("RecetaMed"))
                {
                    return false;
                }
                if (transacc.Equals("SignosVit"))
                {
                    return false;
                }
                if (transacc.Equals("SolServ"))
                {
                    return false;
                }
                if (transacc.Equals("ReportInca"))
                {
                    return false;
                }
                if (transacc.Equals("Gen_Folio"))
                {
                    return false;
                }
                if (transacc.Equals("Cat_Usuarios"))
                {
                    return false;
                }
                if (transacc.Equals("ReportConsul"))
                {
                    return false;
                }
                if (transacc.Equals("Asig_Recep"))
                {
                    return false;
                }
            }

            if (tUser.Equals("R"))
            {

                if (transacc.Equals("AtMed"))
                {
                    return true;
                }
                if (transacc.Equals("GestMed"))
                {
                    return false;
                }
                if (transacc.Equals("MiCuenta"))
                {
                    return false;
                }
                if (transacc.Equals("ExpeClini"))
                {
                    return false;
                }
                if (transacc.Equals("GestFarm"))
                {
                    return false;
                }
                if (transacc.Equals("ModFarm"))
                {
                    return false;
                }
                if (transacc.Equals("NotaClinic"))
                {
                    return false;
                }
                if (transacc.Equals("RecetaMed"))
                {
                    return false;
                }
                if (transacc.Equals("SignosVit"))
                {
                    return false;
                }
                if (transacc.Equals("SolServ"))
                {
                    return false;
                }
                if (transacc.Equals("ReportInca"))
                {
                    return false;
                }
                if (transacc.Equals("Gen_Folio"))
                {
                    return false;
                }
                if (transacc.Equals("Cat_Usuarios"))
                {
                    return false;
                }
                if (transacc.Equals("ReportConsul"))
                {
                    return false;
                }
                if (transacc.Equals("Asig_Recep"))
                {
                    return false;
                }
            }
            if (tUser.Equals("G"))
            {

                if (transacc.Equals("AtMed"))
                {
                    return false;
                }
                if (transacc.Equals("GestMed"))
                {
                    return false;
                }
                if (transacc.Equals("MiCuenta"))
                {
                    return false;
                }
                if (transacc.Equals("ExpeClini"))
                {
                    return false;
                }
                if (transacc.Equals("GestFarm"))
                {
                    return false;
                }
                if (transacc.Equals("ModFarm"))
                {
                    return false;
                }
                if (transacc.Equals("NotaClinic"))
                {
                    return false;
                }
                if (transacc.Equals("RecetaMed"))
                {
                    return false;
                }
                if (transacc.Equals("SignosVit"))
                {
                    return false;
                }
                if (transacc.Equals("SolServ"))
                {
                    return false;
                }
                if (transacc.Equals("ReportInca"))
                {
                    return false;
                }
                if (transacc.Equals("Gen_Folio"))
                {
                    return true;
                }
                if (transacc.Equals("Cat_Usuarios"))
                {
                    return false;
                }
                if (transacc.Equals("ReportConsul"))
                {
                    return false;
                }
                if (transacc.Equals("Asig_Recep"))
                {
                    return false;
                }
            }
            return false;
        }
    }
}