using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Web.knockoutJS.Models;
using Web.knockoutJS.Data.Helper;

namespace Web.knockoutJS.Tests.Controllers
{
    [TestClass]
    public class DemoTest
    {
        [TestMethod]
        public void XmlDeserialize_TM()
        {
            ReciboElectronico objPago = new ReciboElectronico();

            var xml = new System.Xml.XmlDocument();

            xml.Load(@"C:\Users\rahern3\Documents\Visual Studio 2013\Projects\KnockoutJS\Web.knockoutJS\Web.knockoutJS\Data\PagoElectronico.xml");

            objPago = XmlUtilities.ToObject<ReciboElectronico>(xml.InnerXml);
        }

        [TestMethod]
        public void XmlSerialize_TM()
        {
            ReciboElectronico objPago = new ReciboElectronico()
            {
                Complemento = new ComplementoModel()
                {
                    NodoPagos = new Pagos()
                    {
                        PagosList = new System.Collections.Generic.List<Pago>() 
                        { 
                            new Pago()
                            { 
                                FechaPago = DateTime.Now,
                                FormaDePagoP = "03",
                                MonedaP = "MXN",
                                Monto = 5204.05M
                            }
                       }
                    }
                }
            };

            string xml = XmlUtilities.ToXml(objPago, new xmlNS() { Prefix = "cfdi", Uri = "http://www.sat.gob.mx/cfd/3" }, new xmlNS() { Prefix = "pago10", Uri = "http://www.sat.gob.mx/Pagos" });
        }

        [TestMethod]
        public void Cliente_XmlSerialize_TM()
        {
            Estructuras objEstructuras = new Estructuras()
            {
                ListaEstructura = new System.Collections.Generic.List<Estructura>() 
                {
                    new Estructura()
                    {
                        ID = "001", Nombre = "Test1",
                        Clientes = new System.Collections.Generic.List<Cliente>() 
                        {
                            new Cliente() 
                            {
                                ID = Guid.NewGuid(), Nombre = "Nombre1", RFC = "XXXX000000123",
                                Direcciones = new System.Collections.Generic.List<Direccion>() 
                                {
                                    new Direccion() 
                                    {
                                        Calle = "Calle 1", Colonia="Colonia 1", CP="00000", Estado="México", Pais="México", Municipio="Municipio 1", Tipo="Principal1"
                                    },
                                    new Direccion() 
                                    {
                                        Calle = "Calle 2", Colonia="Colonia 2", CP="00000", Estado="México", Pais="México", Municipio="Municipio 2", Tipo="Principal2"
                                    }
                                },
                                DatosContacto = new Contacto() 
                                {
                                    Emails = new System.Collections.Generic.List<Correo>() 
                                    {
                                        new Correo() { Direccion = "email1@email.com"},
                                        new Correo() { Direccion = "email2@email.com"},
                                        new Correo() { Direccion = "email3@email.com"},
                                        new Correo() { Direccion = "email4@email.com"}
                                    },
                                    Telefonos = new System.Collections.Generic.List<Telefono>() 
                                    {
                                        new Telefono() { Numero="1234567890", Tipo="Casa"},
                                        new Telefono() { Numero="1234567891", Tipo="Oficina"},
                                        new Telefono() { Numero="1234567892", Tipo="Atención a clientes"}
                                    }
                                }
                            }
                        }
                    }
                }
            };

            string xml = XmlUtilities.ToXml(objEstructuras, new xmlNS() { Prefix = "ts", Uri = "http://estructuras.org" }, new xmlNS() { Prefix = "cl", Uri = "http://clientes.org" });
        }

        [TestMethod]
        public void Baja_TM()
        {
            var boletines = new BajaBoletines()
            {
                ListaBoletines = new System.Collections.Generic.List<BajaBoletin>() 
                {
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"},
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"},
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"},
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"},
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"},
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"},
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"},
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"},
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"},
                    new BajaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="BAJA"}
                }
            };
            string xml = XmlUtilities.ToXml(boletines);
        }

        [TestMethod]
        public void Alta_TM()
        {
            var boletines = new AltaBoletines ()
            {
                ListaBoletines = new System.Collections.Generic.List<AltaBoletin>() 
                {
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" },
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" },
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" },
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" },
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" },
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" },
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" },
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" },
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" },
                    new AltaBoletin(){ Fecha = DateTime.Now.ToShortDateString(), Nombre = "Nombre", Rfc ="XXX000000123", Situacion="ALTA", Clave="1", Direccion="Dir1", Observaciones="Prueba", OS="123456" }
                }
            };
            string xml = XmlUtilities.ToXml(boletines);
        }

        [TestMethod]
        public void Cliente_XmlDeserialize_TM()
        {
            Estructuras objEstructuras = new Estructuras();
            var xml = new System.Xml.XmlDocument();

            xml.Load(@"C:\Users\rahern3\Documents\Visual Studio 2013\Projects\KnockoutJS\Web.knockoutJS\Web.knockoutJS\Data\Clientes.xml");

            objEstructuras = XmlUtilities.ToObject<Estructuras>(xml.InnerXml);
        }
    }
}
