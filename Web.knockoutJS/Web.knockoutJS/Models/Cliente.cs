using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace Web.knockoutJS.Models
{
    [XmlRoot(Namespace = "http://clientes.org")]
    [XmlType(Namespace = "http://clientes.org", AnonymousType = true)]
    public class Cliente
    {
        [XmlAttribute]
        public Guid ID { get; set; }
        [XmlAttribute]
        public string Nombre { get; set; }
        [XmlAttribute]
        public string RFC { get; set; }

        [XmlArrayItem]
        public List<Direccion> Direcciones { get; set; }

        [XmlElement("DatosContacto")]
        public Contacto DatosContacto { get; set; }
    }

    [XmlType(Namespace = "http://clientes.org", AnonymousType = true)]
    public class Direccion
    {
        [XmlAttribute]
        public string Calle { get; set; }
        [XmlAttribute]
        public string Colonia { get; set; }
        [XmlAttribute]
        public string CP { get; set; }
        [XmlAttribute]
        public string Municipio { get; set; }
        [XmlAttribute]
        public string Estado { get; set; }
        [XmlAttribute]
        public string Pais { get; set; }
        [XmlAttribute]
        public string Tipo { get; set; }
    }

    [XmlType(Namespace = "http://clientes.org", AnonymousType = true)]
    public class Contacto
    {
        [XmlArrayItem]
        public List<Telefono> Telefonos { get; set; }
        [XmlArrayItem]
        public List<Correo> Emails { get; set; }
    }

    [XmlType(Namespace = "http://clientes.org", AnonymousType = true)]
    public class Telefono
    {
        [XmlAttribute]
        public string Numero { get; set; }
        [XmlAttribute]
        public string Tipo { get; set; }
    }


    [XmlType(Namespace = "http://clientes.org", AnonymousType = true)]
    public class Correo
    {
        [XmlAttribute]
        public string Direccion { get; set; }
    }
}