﻿create table Presupuestos(
PresupuestoId int identity(1,1) primary key,
Fecha datetime,
Descripcion varchar(150),
Monto float
);