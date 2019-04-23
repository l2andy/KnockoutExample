using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace Web.knockoutJS.Models
{
    [XmlRoot(Namespace = "http://estructuras.org")]
    [XmlType(Namespace = "http://estructuras.org", AnonymousType = true)]
    public class Estructuras
    {
        [XmlElement("Estructura")]
        public List<Estructura> ListaEstructura { get; set; }
    }

    [XmlType(Namespace = "http://clientes.org", AnonymousType = true)]
    public class Estructura
    {
        [XmlAttribute]
        public string ID { get; set; }
        [XmlAttribute]
        public string Nombre { get; set; }

        //[XmlArray(Namespace = "http://clientes.org")]
        [XmlArrayItem("Cliente")]
        public List<Cliente> Clientes { get; set; }
    }
}