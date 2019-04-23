using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Web.knockoutJS.Data.Helper;
using Web.knockoutJS.Models;

namespace Web.knockoutJS.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Modify this template to jump-start your ASP.NET MVC application.";

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your app description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ActionResult DemoKnockout()
        {
            ReciboElectronico objPago = new ReciboElectronico();

            var xml = new System.Xml.XmlDocument();

            xml.Load(@"C:\Users\rahern3\Documents\Visual Studio 2013\Projects\KnockoutJS\Web.knockoutJS\Web.knockoutJS\Data\PagoElectronico.xml");

            objPago = XmlUtilities.ToObject<ReciboElectronico>(xml.InnerXml);
            return View();
        }

        [HttpPost]
        public JsonResult ObtieneClientes(string estructura)
        {
            var clientes = new Negocio.Clientes().ObtieneClientesPorEstructura(estructura);
            return Json(clientes, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult GuardaClientes(List<Cliente> clientes, string estructura)
        {
            new Negocio.Clientes().GuardaClientes(clientes, estructura);
            return Json(null, JsonRequestBehavior.AllowGet);
        }
    }
}
