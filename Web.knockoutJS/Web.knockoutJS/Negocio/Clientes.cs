using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web.knockoutJS.Data.Helper;

namespace Web.knockoutJS.Negocio
{
    public class Clientes
    {
        public List<Models.Cliente> ObtieneClientesPorEstructura(string estructura)
        {
            Models.Estructuras objEstructuras = new Models.Estructuras();
            var xml = new System.Xml.XmlDocument();
            xml.Load(@"C:\Users\rahern3\Documents\Visual Studio 2013\Projects\KnockoutJS\Web.knockoutJS\Web.knockoutJS\Data\Clientes\Clientes.xml");
            objEstructuras = XmlUtilities.ToObject<Models.Estructuras>(xml.InnerXml);

            var listaClientes = new List<Models.Cliente>();

            if (objEstructuras.ListaEstructura.Exists(x => x.ID == estructura))
            {
                listaClientes = objEstructuras.ListaEstructura.First(x => x.ID == estructura).Clientes;
            }

            return listaClientes;
        }

        public void GuardaClientes(List<Models.Cliente> clientes, string estructura)
        {
            Models.Estructuras objEstructuras = new Models.Estructuras();
            var xml = new System.Xml.XmlDocument();
            xml.Load(@"C:\Users\rahern3\Documents\Visual Studio 2013\Projects\KnockoutJS\Web.knockoutJS\Web.knockoutJS\Data\Clientes\Clientes.xml");
            objEstructuras = XmlUtilities.ToObject<Models.Estructuras>(xml.InnerXml);

            if (objEstructuras.ListaEstructura.Exists(x => x.ID == estructura))
            {
                objEstructuras.ListaEstructura.First(x => x.ID == estructura).Clientes = clientes;
            }


            string xmlEstructuras = XmlUtilities.ToXml(objEstructuras, new Models.xmlNS() { Prefix = "ts", Uri = "http://estructuras.org" }, new Models.xmlNS() { Prefix = "cl", Uri = "http://clientes.org" });

            System.IO.File.WriteAllText(@"C:\Users\rahern3\Documents\Visual Studio 2013\Projects\KnockoutJS\Web.knockoutJS\Web.knockoutJS\Data\Clientes\Clientes.xml", xmlEstructuras);
        }

    }
}