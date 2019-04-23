using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace Web.knockoutJS.Models
{
    [XmlRoot]
    [XmlType]
    public class BajaBoletines
    {
        [XmlElement("Boletin")]
        public List<BajaBoletin> ListaBoletines { get; set; }
    }

    [XmlType]
    public class BajaBoletin
    {
        [XmlAttribute]
        public string Situacion { get; set; }
        [XmlAttribute]
        public string Fecha { get; set; }
        [XmlAttribute]
        public string Nombre { get; set; }
        [XmlAttribute]
        public string Rfc { get; set; }
    }
}