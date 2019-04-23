using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace Web.knockoutJS.Models
{
    [XmlRoot(ElementName = "Comprobante", Namespace = "http://www.sat.gob.mx/cfd/3")]
    [XmlType(Namespace = "http://www.sat.gob.mx/cfd/3")]
    public class ReciboElectronico
    {
        [XmlAttribute]
        public string Version { get; set; }

        [XmlAttribute]
        public string Serie { get; set; }

        [XmlAttribute]
        public DateTime Fecha { get; set; }

        [XmlAttribute]
        public string Sello { get; set; }

        [XmlAttribute]
        public decimal SubTotal { get; set; }

        [XmlAttribute]
        public string Moneda { get; set; }



        [XmlElement("Emisor")]
        public Emisor PropEmisor { get; set; }

        [XmlElement("Receptor")]
        public NodoReceptor PropReceptor { get; set; }

        [XmlArray("Conceptos")]
        [XmlArrayItem(ElementName = "Concepto")]
        public List<NodoConcepto> ConceptoList { get; set; }

        //[XmlElement(ElementName = "Complemento")]
        public ComplementoModel Complemento { get; set; }
    }

    [XmlType(Namespace = "http://www.sat.gob.mx/cfd/3")]
    public class Emisor
    {
        [XmlAttribute("Rfc")]
        public string RFC { get; set; }

        [XmlAttribute()]
        public string Nombre { get; set; }

        [XmlAttribute(AttributeName = "RegimenFiscal")]
        public string AtributoRegimenFiscal { get; set; }

        [XmlAttribute]
        public string DatoAdicional { get; set; }
    }

    [XmlType(Namespace = "http://www.sat.gob.mx/cfd/3")]
    public class NodoReceptor
    {
        [XmlAttribute]
        public string Rfc { get; set; }
        [XmlAttribute]
        public string Nombre { get; set; }
        [XmlAttribute]
        public string UsoCFDI { get; set; }
    }

    [XmlType(Namespace = "http://www.sat.gob.mx/cfd/3")]
    public class NodoConcepto
    {
        [XmlAttribute]
        public string ClaveProdServ { get; set; }
        [XmlAttribute]
        public int Cantidad { get; set; }
        [XmlAttribute]
        public string ClaveUnidad { get; set; }
        [XmlAttribute]
        public string Descripcion { get; set; }
        [XmlAttribute]
        public decimal ValorUnitario { get; set; }
        [XmlAttribute]
        public decimal Importe { get; set; }
    }

    //[XmlType(Namespace = "http://www.sat.gob.mx/cfd/3")]
    [XmlType(Namespace = "http://www.sat.gob.mx/Pagos", AnonymousType = true)]
    public class ComplementoModel
    {
        //[XmlElement(ElementName = "Pagos", Namespace = "http://www.sat.gob.mx/Pagos")]
        [XmlElement(ElementName = "Pagos")]
        public Pagos NodoPagos { get; set; }
    }

    [XmlType(Namespace = "http://www.sat.gob.mx/Pagos")]
    public class Pagos
    {
        [XmlAttribute]
        public string Version { get; set; }

        [XmlElement("Pago")]
        public List<Pago> PagosList { get; set; }
    }

    [XmlType(Namespace = "http://www.sat.gob.mx/Pagos")]
    public class Pago
    {
        [XmlAttribute]
        public DateTime FechaPago { get; set; }

        [XmlAttribute]
        public string FormaDePagoP { get; set; }

        [XmlAttribute]
        public string MonedaP { get; set; }

        [XmlAttribute]
        public decimal Monto { get; set; }

    }

    [XmlType(Namespace = "http://www.sat.gob.mx/Pagos")]
    public class DoctoRelacionado
    {
        [XmlAttribute("IdDocumento")]
        public Guid ID { get; set; }

        [XmlAttribute]
        public string Serie { get; set; }

        [XmlAttribute]
        public string Folio { get; set; }

        [XmlAttribute]
        public string MonedaDR { get; set; }

        [XmlAttribute]
        public string MetodoDePagoDR { get; set; }

        [XmlAttribute]
        public string NumParcialidad { get; set; }

        [XmlAttribute]
        public decimal ImpSaldoAnt { get; set; }

        [XmlAttribute]
        public decimal ImpPagado { get; set; }

        [XmlAttribute]
        public decimal ImpSaldoInsoluto { get; set; }


    }
}