declare @xml xml;

--<?xml version="1.0" encoding="utf-8" ?>
select @xml = '
<ts:Estructuras xmlns:cl="http://clientes.org" xmlns:ts="http://estructuras.org">
  <ts:Estructura ID="001" Nombre="Ciudad de México">
    <cl:Clientes>
      <cl:Cliente ID="84f220af-7d03-5b32-e054-2c27d784fca8" Nombre="TECNOLOGIA DE MEXICO S.A.P.I." RFC="XXX071221BBB">
        <cl:Direcciones>
          <cl:Direccion Calle="Cerrado Apodaca" Colonia="Antigua Argentina" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principal" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="5512457896" Tipo="Oficina" />
            <cl:Telefono Numero="5548785212" Tipo="Celular" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="tec1@TM.org" />
            <cl:Correo Direccion="tec2@TM.org" />
            <cl:Correo Direccion="tec3@TM.org" />
            <cl:Correo Direccion="tec4@TM.org" />
            <cl:Correo Direccion="text@email1.mx" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="84f220af-7d04-5b32-e054-2c27d784fca7" Nombre="Everardo Martinez Martinez" RFC="XXXX650215000">
        <cl:Direcciones>
          <cl:Direccion Calle="Cerrado Apodaca" Colonia="Antigua Argentina" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Cerrado Apodaca2" Colonia="Antigua Argentina2" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Calle 1" Colonia="Colonia 1" CP="11000" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Trabajo" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="5512457896" Tipo="Oficina" />
            <cl:Telefono Numero="5548785212" Tipo="Celular" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="tec1@TM.org" />
            <cl:Correo Direccion="tec2@TM.org" />
            <cl:Correo Direccion="tec3@TM.org" />
            <cl:Correo Direccion="tec4@TM.org" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="2214ac87-8b30-4a5d-81e4-26b52cfcf5a2" Nombre="Berenice Perez" RFC="PEBE950101">
        <cl:Direcciones>
          <cl:Direccion Calle="Cerrado Apodaca3" Colonia="Antigua Argentina3" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Cerrado Apodaca4" Colonia="Antigua Argentina4" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Calle 7" Colonia="Colonia 7" CP="11000" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Trabajo" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="5500000001" Tipo="Oficina" />
            <cl:Telefono Numero="5500000002" Tipo="Celular" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="tec5@TM.org" />
            <cl:Correo Direccion="tec6@TM.org" />
            <cl:Correo Direccion="tec7@TM.org" />
            <cl:Correo Direccion="tec8@TM.org" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="13804361-8634-4b61-8e44-b6b52cfd01ab" Nombre="Angel Gutierrez" RFC="GUAN740829">
        <cl:Direcciones>
          <cl:Direccion Calle="Cerrado Apodaca5" Colonia="Antigua Argentina5" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Cerrado Apodaca6" Colonia="Antigua Argentina6" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Calle 8" Colonia="Colonia 8" CP="11000" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Trabajo" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="5500000003" Tipo="Oficina" />
            <cl:Telefono Numero="5500000004" Tipo="Celular" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="tec9@TM.org" />
            <cl:Correo Direccion="tec10@TM.org" />
            <cl:Correo Direccion="tec11@TM.org" />
            <cl:Correo Direccion="tec12@TM.org" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="52b6aa32-567b-4c81-87be-06b52cfd0d1d" Nombre="Nicolas Arrieta" RFC="ARNI560131">
        <cl:Direcciones>
          <cl:Direccion Calle="Cerrado Apodaca7" Colonia="Antigua Argentina7" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Cerrado Apodaca8" Colonia="Antigua Argentina8" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Calle 9" Colonia="Colonia 9" CP="11000" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Trabajo" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="5500000005" Tipo="Oficina" />
            <cl:Telefono Numero="5500000006" Tipo="Celular" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="tec13@TM.org" />
            <cl:Correo Direccion="tec14@TM.org" />
            <cl:Correo Direccion="tec15@TM.org" />
            <cl:Correo Direccion="tec16@TM.org" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="49acf159-d820-4bb4-b9c6-26b52cfd2b9a" Nombre="Gabriel Barrera" RFC="BAGA850510">
        <cl:Direcciones>
          <cl:Direccion Calle="Cerrado Apodaca9" Colonia="Antigua Argentina9" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Cerrado Apodaca10" Colonia="Antigua Argentina10" CP="11400" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Principaal" />
          <cl:Direccion Calle="Calle 10" Colonia="Colonia 10" CP="11000" Municipio="Miguel Hidalgo" Estado="Ciudad de México" Pais="México" Tipo="Trabajo" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="5500000007" Tipo="Oficina" />
            <cl:Telefono Numero="5500000008" Tipo="Celular" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="tec17@TM.org" />
            <cl:Correo Direccion="tec18@TM.org" />
            <cl:Correo Direccion="tec19@TM.org" />
            <cl:Correo Direccion="tec20@TM.org" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
    </cl:Clientes>
  </ts:Estructura>
  <ts:Estructura ID="002" Nombre="Hidalgo">
    <cl:Clientes>
      <cl:Cliente ID="4dc86c41-dab1-43fc-8b54-46a46b9413d0" Nombre="Nombre1" RFC="RFC">
        <cl:Direcciones>
          <cl:Direccion Calle="Calle Zapata" Colonia="Obrera" CP="11201" Municipio="Benito Juárez" Estado="Ciudad de México" Pais="México" Tipo="Referencia Personal" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="55545454" Tipo="Casa" />
            <cl:Telefono Numero="4454554" Tipo="Casa chica" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="miemail@mail.mx" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="c698fd4a-fa82-4ef3-93fd-76b528db06ce" Nombre="Miguel Mendoza" RFC="MMHO591221">
        <cl:Direcciones>
          <cl:Direccion Calle="Calle 1" Colonia="Colonia 1" CP="00001" Municipio="Municipio 1" Estado="Estado 1" Pais="Pais 1" Tipo="Personal" />
          <cl:Direccion Calle="Calle 2" Colonia="Colonia 2" CP="00002" Municipio="Municipio 2" Estado="Estado 2" Pais="Pais 2" Tipo="Trabajo" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="Miguel@Mendoza.mx" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="87ff6ee1-aeb5-4353-bbf5-c6b52e1ee195" Nombre="Manuel Camacho" RFC="CAMA660606">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="8a649813-e8fa-4f15-846d-f6b52e1eecfb" Nombre="Miriam Acevedo" RFC="ACMI550505">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="8ebfbc70-06ad-4cf2-937b-66b52e1ef7f8" Nombre="Rene Barcena" RFC="BARE440404">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="0f7d3b77-506d-4acd-bebc-a6b52e1f027a" Nombre="Armando Tellez" RFC="TEAR770707">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
    </cl:Clientes>
  </ts:Estructura>
  <ts:Estructura ID="003" Nombre="Guerrero">
    <cl:Clientes>
      <cl:Cliente ID="7191d122-3ead-4394-9292-16b529083ca0" Nombre="Rosa Munguia" RFC="RMNA890431">
        <cl:Direcciones>
          <cl:Direccion Calle="Calle 3" Colonia="Colonia 3" CP="00003" Municipio="Municipio 3" Estado="Estado 3" Pais="Pais 3" Tipo="Personal" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="5512398745" Tipo="Celular" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="Rosa@Munguia.mx" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="edaa772d-d901-443b-92eb-26b52e3acdea" Nombre="Luisa Mendiola" RFC="MELU880808">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="209593ac-a405-4154-b2c2-36b52e3ad9e7" Nombre="Perla Zavala" RFC="ZAPE990909">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="250355b4-233e-4f16-ba27-16b52e3ae4ef" Nombre="Hugo Nava" RFC="NAHU781010">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="bd757338-2c40-4e4f-a318-86b52e3aeee2" Nombre="Yoselin Nuñez" RFC="NUYO871111">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
    </cl:Clientes>
  </ts:Estructura>
  <ts:Estructura ID="004" Nombre="Mítica ciudad de Tlaxcala">
    <cl:Clientes>
      <cl:Cliente ID="f59881bc-1cd2-4cdb-add1-a6b529353d7d" Nombre="Antonio Morales" RFC="MOAN910503">
        <cl:Direcciones>
          <cl:Direccion Calle="Calle 4" Colonia="Colonia 4" CP="00004" Municipio="Municipio 4" Estado="Estado 4" Pais="Pais 4" Tipo="Personal" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="5578912345" Tipo="Celular" />
            <cl:Telefono Numero="4755236589" Tipo="Casa" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="Antonio@Morales.mx" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="da3d5bfc-3445-446d-9a9f-66b529602d0a" Nombre="Griselda Martinez" RFC="MAGR781001MM2">
        <cl:Direcciones>
          <cl:Direccion Calle="Calle 5" Colonia="Colonia 5" CP="00005" Municipio="Municipio 5" Estado="Estado 5" Pais="Pais 5" Tipo="Personal" />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono Numero="7752145177" Tipo="Casa" />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo Direccion="Griselda@Martinez.mx" />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="5091e5f4-2c8c-460c-8152-96b52e63a954" Nombre="Gloria Suarez" RFC="SUGL941212">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
      <cl:Cliente ID="f43299cf-06fe-4cf1-9bc8-96b52e63b4d3" Nombre="Viviana Pensado" RFC="PEVI820102">
        <cl:Direcciones>
          <cl:Direccion />
        </cl:Direcciones>
        <cl:DatosContacto>
          <cl:Telefonos>
            <cl:Telefono />
          </cl:Telefonos>
          <cl:Emails>
            <cl:Correo />
          </cl:Emails>
        </cl:DatosContacto>
      </cl:Cliente>
    </cl:Clientes>
  </ts:Estructura>
</ts:Estructuras>';

select @xml

--EJERCICIOS

--OBTENER  TODAS LAS ESTRUCTURAS

--OBTENER TODOS LOS CLIENTES (NOMBRE, RFC, ESTRUCTURA) DE TODAS LAS ESTRUCTURAS

--OBTENER TODOS LOS CLIENTES DE UNA ESTRUCTURA (a elegir)

--OBTENER TODOS LOS DATOS DE CONTACTO DE 'ANTONIO MORALES'

--OBTENER TODOS LOS DATOS DE CONTACTO DE 'MIGUEL MENDOZA'

--OBTENER TODOS LOS TELEFONOS

--OBTENER LOS DIFERENTES TIPOS DE TELEFONO
