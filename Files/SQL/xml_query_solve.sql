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

--select @xml

--	OBTENER LOS NODOS Guest




--select 
--	hotel.guest.query('*')
--from @xml.nodes('//Floor/Rooms/Room/Guests') as hotel(guest)







--	OBTENER EL NOMBRE DEL HUÉSPED DE LA HABITACIÓN 204
--select 
--	hotel.guest.query('Name/text()')
--from @xml.nodes('//Floor/Rooms/Room[@Number="204"]/Guests/Guest') as hotel(guest)









--  OBTENER LAS HABITACIONES DEL PISO 3
--select 
--	hotel.guest.query('*')
--from @xml.nodes('//Floor[@Level="3"]/Rooms') as hotel(guest)












--	OBTENER LAS HABITACIONES CON JACUZZI

--select 
--	hotel.guest.query('../..')
--from @xml.nodes('//Floor/Rooms/Room/Services/Service[@Name="Jacuzzi"]') as hotel(guest)


--select 
--	hotel.guest.query('.')
--from @xml.nodes('//Floor/Rooms/Room') as hotel(guest)
--where hotel.guest.exist('Services/Service[@Name="Jacuzzi"]') = 1








--select @xml.query('
--for $room in root/Hotel/Floor/Rooms/Room[@Type="Suite" and @Price="1500"]
-- return $room
	
--')







--	ARGREGAR UN NUEVO NIVEL CON 2 HABITACIONES





set @xml.modify('
insert <Floor Level="4" Rooms="2">
  <Rooms>
    <Room Number="301" Capacity="2" Status="Ocupied" Price="1500" Type="Suite">
      <Services>
        <Service Name="Bed" Description="King Size" />
        <Service Name="Bathroom" Description="Maximum Luxury" />
        <Service Name="Jacuzzi" Description="Jacuzzi" />
        <Service Name="RoomService" Description="24 hours" />
        <Service Name="TV" Description="cable" />
        <Service Name="Wifi" Description="Internet Free" />
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
        <Service Name="Bed" Description="King Size" />
        <Service Name="Bathroom" Description="Maximum Luxury" />
        <Service Name="Jacuzzi" Description="Jacuzzi" />
        <Service Name="RoomService" Description="24 hours" />
        <Service Name="TV" Description="cable" />
        <Service Name="Wifi" Description="Internet Free" />
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
as last into (root/Hotel)[1]
')














declare @nuevoPiso xml 

set @nuevoPiso = @xml.query('//Floor[@Rooms="2"]')

set @nuevoPiso.modify('
replace value of (Floor/@Level)[1]
with "5"
')

set @nuevoPiso.modify('
replace value of (Floor/@Level)[2]
with "6"
')

set @xml.modify('
insert sql:variable("@nuevoPiso")
as last into (root/Hotel)[1]
')
















--	CAMBIAR EL PRECIO DE LA HABITACION SUITE POR $2500

--set @xml.modify('
--replace value of (root/Hotel/Floor/Rooms/Room[@Type="Suite" and @Price="1500"]/@Price)[1]
--with "2500"
--')

--set @xml.modify('
--replace value of (root/Hotel/Floor/Rooms/Room[@Type="Suite" and @Price="1500"]/@Price)[1]
--with "2500"
--')













select @xml



while exists(select 1 where (select @xml.exist('root/Hotel/Floor/Rooms/Room[@Type="Suite" and @Price="1500"]'))= 1 )
begin
set @xml.modify('
replace value of (root/Hotel/Floor/Rooms/Room[@Type="Suite" and @Price="1500"]/@Price)[1]
with "2500"
')
end 


















--	CAMBIAR LA EDAD DE Maria Mendez POR 40

--select  @xml.query('(//Guest/Name[text()="Maria Mendez"]/..)')

--set @xml.modify('
--replace value of (//Guest/Name[text()="Maria Mendez"]/../Age/text())[1]
--with "40"
--')










--	ELIMINAR LOS HUESPEDES DE LA HABITACION 103

--select @xml.query('//Room[@Number="103"]/Guests')

--set @xml.modify('
--delete //Room[@Number="103"]/Guests/Guest
--')

select @xml


