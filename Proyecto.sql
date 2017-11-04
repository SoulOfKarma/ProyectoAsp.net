CREATE TABLE [Usuario] (
[correo] varchar(50) NOT NULL,
[clave] varchar(50) NOT NULL,
[persona_rut] int NOT NULL,
PRIMARY KEY ([correo]) 
)
GO

CREATE TABLE [Persona] (
[rut] int NOT NULL,
[nombre] varchar(50) NOT NULL,
[apellidos] varchar(80) NOT NULL,
[telefono] int NOT NULL,
[fecha_nac] datetime NOT NULL,
[id_genero] int NOT NULL,
[id_direccion] int NOT NULL,
PRIMARY KEY ([rut]) 
)
GO

CREATE TABLE [Proveedor] (
[rut_pro] int NOT NULL,
[nombre_pro] varchar(45) NOT NULL,
[razon_social] varchar(45) NOT NULL,
PRIMARY KEY ([rut_pro]) 
)
GO

CREATE TABLE [Direccion] (
[id] int NOT NULL,
[calle] varchar(45) NOT NULL,
[numero] int NOT NULL,
[id_comuna] int NOT NULL,
PRIMARY KEY ([id]) 
)
GO

CREATE TABLE [Comuna] (
[id_com] int NOT NULL,
[descripcion_com] varchar(60) NOT NULL,
[id_region] int NOT NULL,
PRIMARY KEY ([id_com]) 
)
GO

CREATE TABLE [Region] (
[id_region] int NOT NULL,
[descripcion_region] varchar(60) NOT NULL,
PRIMARY KEY ([id_region]) 
)
GO

CREATE TABLE [Genero] (
[id_gen] int NOT NULL,
[descripcion_genero] varchar(50) NOT NULL,
PRIMARY KEY ([id_gen]) 
)
GO

CREATE TABLE [Orden] (
[id_orden] int NOT NULL,
[id_userOrden] varchar(50) NOT NULL,
PRIMARY KEY ([id_orden]) 
)
GO

CREATE TABLE [Factura] (
[id_factura] int NOT NULL,
[sub_total] int NOT NULL,
[iva] float NOT NULL,
[total] int NOT NULL,
[id_orden] int NOT NULL,
PRIMARY KEY ([id_factura]) 
)
GO

CREATE TABLE [Servicio] (
[id_servicio] int NOT NULL,
[id_tip_serv] int NOT NULL,
[rut_prov] int NOT NULL,
PRIMARY KEY ([id_servicio]) 
)
GO

CREATE TABLE [Lugar] (
[id_lugar] int NOT NULL,
[calle_lugar] varchar(50) NOT NULL,
[numero_lugar] int NOT NULL,
[numero_opera] int NOT NULL,
[id_comuna] int NOT NULL,
[id_servicio] int NOT NULL,
[id_horario] int NOT NULL,
PRIMARY KEY ([id_lugar]) 
)
GO

CREATE TABLE [Horario] (
[id_horario] int NOT NULL,
[fecha_desde] datetime NOT NULL,
[fecha_hasta] datetime NOT NULL
)
GO

CREATE TABLE [Vehiculo] (
[patente] varchar(20) NOT NULL,
[modelo] varchar(50) NOT NULL,
[marca] varchar(50) NOT NULL,
[tipo] varchar(50) NOT NULL,
[anio] int NOT NULL,
[id_servicio] int NOT NULL,
[id_horario] int NOT NULL,
PRIMARY KEY ([patente]) 
)
GO

CREATE TABLE [Tipo_servicio] (
[id_tipo_serv] int NOT NULL,
[desc_tiposervicio] varchar(50) NOT NULL,
PRIMARY KEY ([id_tipo_serv]) 
)
GO

CREATE TABLE [Item_Banquetero] (
[id_precio] int NOT NULL,
[precio] int NOT NULL,
[desc_itemb] varchar(80) NOT NULL,
[id_servicio] int NOT NULL,
PRIMARY KEY ([id_precio]) 
)
GO

CREATE TABLE [Miscelaneo] (
[id_miscelaneo] int NOT NULL,
[desc_misce] varchar(50) NOT NULL,
[precio] int NOT NULL,
[id_servicio] int NOT NULL,
PRIMARY KEY ([id_miscelaneo]) 
)
GO


ALTER TABLE [Usuario] ADD CONSTRAINT [rut] FOREIGN KEY ([persona_rut]) REFERENCES [Persona] ([rut]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Proveedor] ADD CONSTRAINT [id_direccion] FOREIGN KEY () REFERENCES [Direccion] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Comuna] ADD CONSTRAINT [id_region] FOREIGN KEY ([id_region]) REFERENCES [Region] ([id_region]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Direccion] ADD CONSTRAINT [id_comuna] FOREIGN KEY ([id_comuna]) REFERENCES [Comuna] ([id_com]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Persona] ADD CONSTRAINT [id_dir] FOREIGN KEY ([id_direccion]) REFERENCES [Direccion] ([id]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Persona] ADD CONSTRAINT [id_gen] FOREIGN KEY ([id_genero]) REFERENCES [Genero] ([id_gen]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Orden] ADD CONSTRAINT [correo] FOREIGN KEY ([id_userOrden]) REFERENCES [Usuario] ([correo]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Servicio] ADD CONSTRAINT [id_tip_serv] FOREIGN KEY ([id_tip_serv]) REFERENCES [Tipo_servicio] ([id_tipo_serv]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Servicio] ADD CONSTRAINT [id_rut_pro] FOREIGN KEY ([rut_prov]) REFERENCES [Proveedor] ([rut_pro]) ON DELETE NO ACTION ON UPDATE CASCADE
GO
ALTER TABLE [Item_Banquetero] ADD CONSTRAINT [id_serv] FOREIGN KEY ([id_servicio]) REFERENCES [Servicio] ([id_servicio]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Miscelaneo] ADD CONSTRAINT [id_ser] FOREIGN KEY ([id_servicio]) REFERENCES [Servicio] ([id_servicio]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Lugar] ADD CONSTRAINT [id_comu] FOREIGN KEY ([id_comuna]) REFERENCES [Comuna] ([id_com]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Lugar] ADD CONSTRAINT [id_servi] FOREIGN KEY ([id_servicio]) REFERENCES [Servicio] ([id_servicio]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Lugar] ADD CONSTRAINT [id_horario] FOREIGN KEY ([id_horario]) REFERENCES [Horario] ([id_horario]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Vehiculo] ADD CONSTRAINT [id_servic] FOREIGN KEY ([id_servicio]) REFERENCES [Servicio] ([id_servicio]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Vehiculo] ADD CONSTRAINT [id_hora] FOREIGN KEY ([id_horario]) REFERENCES [Horario] ([id_horario]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [Factura] ADD CONSTRAINT [id_orden] FOREIGN KEY ([id_orden]) REFERENCES [Orden] ([id_orden]) ON DELETE CASCADE ON UPDATE CASCADE
GO

