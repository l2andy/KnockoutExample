declare @xml xml = '<?xml version="1.0" encoding="utf-8"?>
<root>
  <Hotel>
    <Floor Level="1" Rooms="4">
      <Rooms>
        <Room Number="101" Capacity="2" Status="Free" Price="550" Type="Basic">
          <Services>
            <Service Name="Bed" Description="Matrimonial"></Service>
            <Service Name="Bathroom" Description="Basic"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
          </Services>
          <Guests>
          </Guests>
        </Room>
        <Room Number="102" Capacity="2" Status="Reserved" Price="550" Type="Basic">
          <Services>
            <Service Name="Bed" Description="Matrimonial"></Service>
            <Service Name="Bathroom" Description="Basic"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
          </Services>
          <Guests>
            <Guest>
              <Name>Leonardo Herrera</Name>
              <Age>27</Age>
            </Guest>
          </Guests>
        </Room>
        <Room Number="103" Capacity="4" Status="Ocupied" Price="900" Type="Double">
          <Services>
            <Service Name="Bed" Description="Matrimonial"></Service>
            <Service Name="Bed" Description="Matrimonial"></Service>
            <Service Name="Bathroom" Description="Basic"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
          </Services>
          <Guests>
            <Guest>
              <Name>Cristina Robledo</Name>
              <Age>35</Age>
            </Guest>
            <Guest>
              <Name>Martin Lopez</Name>
              <Age>38</Age>
            </Guest>
            <Guest>
              <Name>Fernando Lopez</Name>
              <Age>11</Age>
            </Guest>
            <Guest>
              <Name>Cesar Lopez</Name>
              <Age>8</Age>
            </Guest>
          </Guests>
        </Room>
        <Room Number="104" Capacity="4" Status="Free" Price="900" Type="Double">
          <Services>
            <Service Name="Bed" Description="Matrimonial"></Service>
            <Service Name="Bed" Description="Matrimonial"></Service>
            <Service Name="Bathroom" Description="Basic"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
          </Services>
          <Guests>
          </Guests>
        </Room>
      </Rooms>
    </Floor>
    <Floor Level="2" Rooms="4">
      <Rooms>
        <Room Number="201" Capacity="2" Status="Ocupied" Price="1300" Type="Ejecutive">
          <Services>
            <Service Name="Bed" Description="Queen Size"></Service>
            <Service Name="Bathroom" Description="Luxuries"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
            <Service Name="Wifi" Description="Internet Free"></Service>
            <Service Name="Breadfast" Description="at 07:00 - 12:00"></Service>
          </Services>
          <Guests>
            <Guest>
              <Name>Maria Mendez</Name>
              <Age>41</Age>
            </Guest>
          </Guests>
        </Room>
        <Room Number="202" Capacity="2" Status="Free" Price="1300" Type="Ejecutive">
          <Services>
            <Service Name="Bed" Description="Queen Size"></Service>
            <Service Name="Bathroom" Description="Luxuries"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
            <Service Name="Wifi" Description="Internet Free"></Service>
            <Service Name="Breadfast" Description="at 07:00 - 12:00"></Service>
          </Services>
          <Guests>
          </Guests>
        </Room>
        <Room Number="203" Capacity="2" Status="Reserved" Price="3500" Type="Ejecutive Sr">
          <Services>
            <Service Name="Bed" Description="King Size"></Service>
            <Service Name="Bathroom" Description="Maximum Luxury"></Service>
            <Service Name="Jacuzzi" Description="Jacuzzi"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
            <Service Name="Wifi" Description="Internet Free"></Service>
            <Service Name="All Inclusive" Description="at 07:00 - 22:00"></Service>
          </Services>
          <Guests>
            <Guest>
              <Name>Rodrigo Olvera</Name>
              <Age>36</Age>
            </Guest>
          </Guests>
        </Room>
        <Room Number="204" Capacity="2" Status="Ocupied" Price="3500" Type="Ejecutive Sr">
          <Services>
            <Service Name="Bed" Description="King Size"></Service>
            <Service Name="Bathroom" Description="Maximum Luxury"></Service>
            <Service Name="Jacuzzi" Description="Jacuzzi"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
            <Service Name="Wifi" Description="Internet Free"></Service>
            <Service Name="All Inclusive" Description="at 07:00 - 22:00"></Service>
          </Services>
          <Guests>
            <Guest>
              <Name>Rosa Tellez</Name>
              <Age>32</Age>
            </Guest>
          </Guests>
        </Room>
      </Rooms>
    </Floor>
    <Floor Level="3" Rooms="2">
      <Rooms>
        <Room Number="301" Capacity="2" Status="Ocupied" Price="1500" Type="Suite">
          <Services>
            <Service Name="Bed" Description="King Size"></Service>
            <Service Name="Bathroom" Description="Maximum Luxury"></Service>
            <Service Name="Jacuzzi" Description="Jacuzzi"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
            <Service Name="Wifi" Description="Internet Free"></Service>
          </Services>
          <Guests>
            <Guest>
              <Name>Tadeo Avila</Name>
              <Age>29</Age>
            </Guest>
          </Guests>
        </Room>
        <Room Number="302" Capacity="2" Status="Reserved" Price="1500" Type="Suite">
          <Services>
            <Service Name="Bed" Description="King Size"></Service>
            <Service Name="Bathroom" Description="Maximum Luxury"></Service>
            <Service Name="Jacuzzi" Description="Jacuzzi"></Service>
            <Service Name="RoomService" Description="24 hours"></Service>
            <Service Name="TV" Description="cable"></Service>
            <Service Name="Wifi" Description="Internet Free"></Service>
          </Services>
          <Guests>
            <Guest>
              <Name>Valeria Soto</Name>
              <Age>37</Age>
            </Guest>
            <Guest>
              <Name>Javier Solis</Name>
              <Age>35</Age>
            </Guest>
          </Guests>
        </Room>
      </Rooms>
    </Floor>
  </Hotel>
</root>
'

select @xml

--	OBTENER LOS NODOS Guest

--	OBTENER EL NOMBRE DEL HUÉSPED DE LA HABITACIÓN 204

--  OBTENER LAS HABITACIONES DEL PISO 3

--	OBTENER LAS HABITACIONES CON JACUZZI

--	ARGREGAR UN NUEVO NIVEL CON 2 HABITACIONES

--	CAMBIAR EL PRECIO DE LA HABITACION SUITE POR $2500

--	CAMBIAR LA EDAD DE Maria Mendez POR 40

--	ELIMINAR LOS HUESPEDES DE LA HABITACION 103
