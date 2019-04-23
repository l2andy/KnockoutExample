using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Xml;
using System.Xml.Serialization;
using Web.knockoutJS.Models;

namespace Web.knockoutJS.Data.Helper
{
    public class XmlUtilities
    {
        public static T ToObject<T>(string xmlString)
        {
            XmlSerializer xmlSerializer = new XmlSerializer(typeof(T));
            StringReader stringReader = new StringReader(xmlString);
            return (T)xmlSerializer.Deserialize(stringReader);
        }

        public static string ToXml<T>(T xmlObject, params xmlNS[] xmlNamespaces)
        {
            StringBuilder xmlString = new StringBuilder();

            XmlSerializer serializer = new XmlSerializer(typeof(T));

            XmlSerializerNamespaces namespaces = new XmlSerializerNamespaces();

            xmlNamespaces.ToList().ForEach(x =>
            {
                namespaces.Add(x.Prefix, x.Uri);
            });

            XmlWriterSettings settings = new XmlWriterSettings();
            settings.Encoding = Encoding.UTF8;
            settings.Indent = true;

            using (StringWriter stringWriter = new Utf8StringWriter(xmlString))
            {
                using (XmlWriter xmlWriter = XmlWriter.Create(stringWriter, settings))
                {
                    serializer.Serialize(xmlWriter, xmlObject, namespaces);
                }
            }

            return xmlString.ToString();
        }
    }

    public sealed class Utf8StringWriter : StringWriter
    {
        public Utf8StringWriter(StringBuilder sb) : base(sb) { }
        public override Encoding Encoding { get { return Encoding.UTF8; } }
    }
}