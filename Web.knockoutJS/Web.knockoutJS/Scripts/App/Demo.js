//Global Model
var _globalClienteViewModel = new ClienteViewModel();
var _globalEstructurasViewModel = new EstructurasModel();

ko.bindingHandlers.readonly = {
    //update: function (element, valueAccessor) {
    //    if (valueAccessor()) {
    //        $(element).attr("readonly", "readonly");
    //        $(element).addClass("disabled");
    //    } else {
    //        $(element).removeAttr("readonly");
    //        $(element).removeClass("disabled");
    //    }
    //}
};

//View Model
function EstructurasModel() {
    var self = this;

    self.Estructuras = [
       { Nombre: 'Ciudad de México', ID: '001' },
       { Nombre: 'Hidalgo', ID: '002' },
       { Nombre: 'Guerrero', ID: '003' },
       { Nombre: 'Mítica ciudad de Tlaxcala', ID: '004' }
    ];
}

function ClienteViewModel() {
    var self = this;

    self.Estructuras = [
      { Nombre: 'Ciudad de México', ID: '001' },
      { Nombre: 'Hidalgo', ID: '002' },
      { Nombre: 'Guerrero', ID: '003' },
      { Nombre: 'Mítica ciudad de Tlaxcala', ID: '004' }
    ];

    //Properties
    self.EstructuraActual = ko.observable();
    self.ClienteSeleccionado = ko.observable(new Cliente('', '', ''));
    self.Clientes = ko.observableArray([]);

    //Methods
    self.agregaCliente = function (cliente) {
        self.Clientes.push(cliente);
    }

    self.cargaClientes = function () {
        self.reiniciaClientes();
        $.clientes.CargaClientesEstructura(self.EstructuraActual());
    }

    self.obtieneCliente = function (ID) {
        var cliente = self.Clientes().find(function (v) { return v['ID']() == ID });
        //return self.Clientes().slice(ID);
        return cliente;
    }

    self.reiniciaClientes = function () {
        self.Clientes.splice(0, self.Clientes().length);
    }

    self.muestraModal = function (modal) {
        $("#" + modal).modal('show');
    }

    self.seleccionarCliente = function (cliente) {
        self.ClienteSeleccionado(cliente);
    }

    self.limpiaDirecciones = function () {
        ko.cleanNode($('#tbBodyDirecciones')[0]);
    }

    self.nuevoCliente = function () {
        var nuevoCliente = new Cliente(generateUUID(), '', '');
        nuevoCliente.agregaDireccion(new Direccion('', '', '', '', '', '', ''));

        nuevoCliente.DatosContacto().agregaEmail(new Correo(''));
        nuevoCliente.DatosContacto().agregaTelefono(new Telefono('', ''));

        //self.agregaCliente(new Cliente('', '', ''));
        self.agregaCliente(nuevoCliente);
    }

    self.guardar = function () {
        $.clientes.GuardaCambios();
    }
}

function Cliente(pID, pNombre, pRFC) {
    var self = this;

    //Properties
    self.ID = ko.observable(pID);
    self.Nombre = ko.observable(pNombre);
    self.RFC = ko.observable(pRFC);
    self.Direcciones = ko.observableArray([]);
    self.DatosContacto = ko.observable(new DatosContacto());
    self.DireccionSeleccionada = ko.observable();

    //Methods
    self.agregaDireccion = function (direccion) {
        self.Direcciones.push(direccion);
    }

    self.nuevaDireccion = function () {
        self.agregaDireccion(new Direccion('', '', '', '', '', '', ''));
    }

    self.seleccionaDireccion = function (direccion) {
        self.DireccionSeleccionada(direccion);
    }
    //Events

}

function Direccion(pCalle, pColonia, pCP, pMunicipio, pEstado, pPais, pTipo) {
    var self = this;

    //Properties
    self.Calle = ko.observable(pCalle);
    self.Colonia = ko.observable(pColonia);
    self.CP = ko.observable(pCP);
    self.Municipio = ko.observable(pMunicipio);
    self.Estado = ko.observable(pEstado);
    self.Pais = ko.observable(pPais);
    self.Tipo = ko.observable(pTipo);

    //Methods


    //Events

}

function DatosContacto() {
    var self = this;

    //Properties
    self.Emails = ko.observableArray([]);
    self.Telefonos = ko.observableArray([]);
    self.ContactoSeleccionado = ko.observable();


    //Methods
    self.agregaEmail = function (email) {
        self.Emails.push(email);
    }
    self.agregaTelefono = function (telefono) {
        self.Telefonos.push(telefono);
    }

    self.nuevoEmail = function () {
        self.agregaEmail(new Correo(''));
    }

    self.nuevoTelefono = function () {
        self.agregaTelefono(new Telefono('', ''));
    }

    self.seleccionaContacto = function (contacto) {
        self.ContactoSeleccionado(contacto);
    }

    //Events
}


function Correo(pDireccion) {
    var self = this;

    //Properties
    self.Direccion = ko.observable(pDireccion);

    //Methods


    //Events

}

function Telefono(pNumero, pTipo) {
    var self = this;

    //Properties
    self.Numero = ko.observable(pNumero);
    self.Tipo = ko.observable(pTipo);

    //Methods


    //Events

}

function generateUUID() {
    var d = new Date();
    var k = d.getTime();
    var str = k.toString(16).slice(1)
    var UUID = 'xxxxxxxx-xxxx-4xxx-yxxx-xzx'.replace(/[xy]/g, function (c) {
        var r = Math.random() * 16 | 0;
        v = c == 'x' ? r : (r & 3 | 8);
        console.log(v.toString(16));
        return v.toString(16);
    });
    var newString = UUID.replace(/[z]/, str)
    console.log(newString);
    return newString.toUpperCase();
}
//var x = generateUUID();
//console.log(x, x.length);

(function ($) {
    $.clientes = {
        CargaClientesEstructura: function (estructura) {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                url: "../Home/ObtieneClientes",
                data: "{ estructura: '" + estructura + "'}",
                success: function (data) {
                    $.each(data, function (index, cliente) {
                        var clienteTmp = new Cliente(cliente.ID, cliente.Nombre, cliente.RFC);
                        $.each(cliente.Direcciones, function (i, direccion) {
                            clienteTmp.agregaDireccion(new Direccion(direccion.Calle, direccion.Colonia, direccion.CP, direccion.Municipio, direccion.Estado, direccion.Pais, direccion.Tipo));
                        });
                        var datos_contacto = new DatosContacto();
                        $.each(cliente.DatosContacto.Emails, function (j, email) {
                            datos_contacto.agregaEmail(new Correo(email.Direccion));
                        });
                        $.each(cliente.DatosContacto.Telefonos, function (k, telefono) {
                            datos_contacto.agregaTelefono(new Telefono(telefono.Numero, telefono.Tipo));
                        });
                        clienteTmp.DatosContacto(datos_contacto);
                        _globalClienteViewModel.agregaCliente(clienteTmp);
                    });

                    ko.cleanNode(document.getElementById('tblClientes'));
                    ko.applyBindings(_globalClienteViewModel, document.getElementById('tblClientes'));
                }
            }); // end ajax call
        },
        GuardaCambios: function () {
            $.ajax({
                type: "POST",
                contentType: "application/json; charset=utf-8",
                dataType: 'json',
                url: "../Home/GuardaClientes",
                data: "{ clientes: " + ko.toJSON(_globalClienteViewModel.Clientes()) + ", estructura: '" + _globalClienteViewModel.EstructuraActual() + "'}",
                success: function (data) {
                    alert('Datos actualizados');
                }
            }); // end ajax call
        },
        CargaEstructuras: function () {

            ko.cleanNode(document.getElementById('ddlEstructuras'));
            ko.applyBindings(_globalClienteViewModel, document.getElementById('ddlEstructuras'));
        }
    }
})(jQuery);