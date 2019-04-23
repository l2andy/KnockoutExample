using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace Web.knockoutJS.Models
{
    [XmlRoot]
    [XmlType]
    public class AltaBoletines
    {
        [XmlElement("Boletin")]
        public List<AltaBoletin> ListaBoletines { get; set; }
    }

    [XmlType]
    public class AltaBoletin
    {
        [XmlAttribute]
        public string Situacion { get; set; }
        [XmlAttribute]
        public string Fecha { get; set; }
        [XmlAttribute]
        public string Nombre { get; set; }
        [XmlAttribute]
        public string Rfc { get; set; }
        [XmlAttribute]
        public string Direccion { get; set; }
        [XmlAttribute]
        public string Clave { get; set; }
        [XmlAttribute]
        public string OS { get; set; }
        [XmlAttribute]
        public string Observaciones { get; set; }
    }
}