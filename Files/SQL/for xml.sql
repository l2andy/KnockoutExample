declare @Persona table 
(
	Id				int identity(1,1),
	Nombre			varchar(50),
	ApellidoPaterno	varchar(50),
	ApellidoMaterno	varchar(50),
	Edad			int,
	DomicilioId		int,
	OficinaId		int
)

declare @Empleado table
(
	PersonaId	int,
	JefeId		int,
	Puesto		varchar(50),
	Nivel		int
)

declare @Oficina table
(
	Id				int identity(1000,1),
	Nombre			varchar(100),
	DomicilioId		int
)

declare @Domicilio table 
(
	Id				int identity(10,1),
	Calle			varchar(150),
	Colonia			varchar(150),
	NoExt			varchar(20),
	NoInt			varchar(20),
	EstadoId		int,
	CodigoPostal	varchar(10)
)

declare @Estado table
(
	Id		int identity(1,1),
	Nombre	varchar(50)
)

Insert into @Estado(Nombre)
select 'Aguascalientes' union all
select 'Baja California Norte' union all
select 'Baja California Sur' union all
select 'Estado de México' union all
select 'Ciudad de México' union all
select 'Guadalajara' union all
select 'Nayarit' union all
select 'Veracruz' union all
select 'Michoacan' 

insert into @Domicilio(Calle,Colonia,NoExt,NoInt,EstadoId,CodigoPostal)
select 'Calle 1','Colonia 1','1','101',1,'00001' union all
select 'Calle 2','Colonia 2','2','102',2,'00002' union all
select 'Calle 3','Colonia 3','3','s/n',2,'00003' union all
select 'Calle 4','Colonia 4','4','s/n',3,'00004' union all
select 'Calle 5','Colonia 5','5','103',3,'00005' 

insert into @Persona(Nombre,ApellidoPaterno,ApellidoMaterno,Edad,DomicilioId,OficinaId)
select 'Juan','Perez','Perez',25,10,1000 union all
select 'Manuel','Mejia','Hernandez',35,11,1000 union all
select 'Rosa','Cortes','Miramontes',28,12,1001 union all
select 'Paula','Duran','Morales',45,13,1002 union all
select 'Diana','Cuevas','Lopez',28,14,1000 

insert into @Oficina(Nombre,DomicilioId)
select 'Oficina 1',10 union all
select 'Oficina 2',11 union all
select 'Oficina 3',12 

insert into @Empleado(PersonaId,JefeId,Puesto,Nivel)
select 1,5,'Analista',1 union all
select 2,5,'Analista',1 union all
select 3,5,'Analista',1 union all
select 5,4,'Supervisor',2 union all
select 4,null,'Gerente',3 


--select * from @Persona
--select * from @Oficina
--select * from @Domicilio
--select * from @Estado

--select *
--from @Persona Persona
--for xml auto

--select *
--from @Persona Persona
--inner join @Oficina Oficina on Persona.OficinaId = Oficina.Id
--for xml auto--,elements

--select *
--from @Persona Persona
--inner join @Oficina Oficina on Persona.OficinaId = Oficina.Id
--for xml path('Personas')

