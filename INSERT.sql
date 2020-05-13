INSERT INTO [hospital].[Medicos] (CodID,Medico_Nombre,Medico_Apellido,Especialidad,Fecha_Ingreso,Cargo,Num_Colegiado,Observaciones)
VALUES	('AJH','Antonio','Jaén Hernández','Pediatría','12-08-82','Adjunto',2113,'Está próxima su retirada'),
		('CEM','Carmen','Esterill Manrique','Psiquiatría','13-02-92','Jefe de sección',1231,null),
		('RLQ','Rocio','López Quijada','Médico de familia','23-09-94','Titular',1331,null)

INSERT INTO [hospital].[Pacientes] (N_SeguridadSocial,Nombre,Apellidos,Domicilio,Población,Provincia,CodPostal,Teléfono,NumHistorial,Sexo)
VALUES	('08/7888888','José Eduardo','Romerales Pinto','C/ Azorín, 34 3o','Móstoles','Madrid',28935,'91-345-87-45','10203-F','H'),
		('08/7234823','Ángel','Ruíz Picasso','C/ Salmerón, 212','Madrid','Madrid',28028,'91-565-34-33','11454-L','H'),
		('08/7333333','Mercedes','Romero Carvajal','C/ Malaga, 13','Móstoles','Madrid',28935,'91-455-67-45','14546-E','M'),
		('08/7555555','Martín','Fernández López','C/ Sastres, 21','Madrid','Madrid',28028,'91-333-33-33','15413-S','H')

/*	Tuve que utilizar este comanto para comprobar el error 207 en el segundo insert,
	lo consegui arreglar actualizando el nombre de una columna;
	SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('hospital.Pacientes');*/

INSERT INTO [hospital].[Ingresos] (NumHistorial,Fecha_Ingreso,CodID,NumPlanta,NumCama,Alergico,Observaciones)
VALUES	('10203-F','23/01/2009','AJH',5,121,'No','Epiléptico'),
		('15413-S','13/03/2009','RLQ',2,5,'Sí','Alérgico a la pericilina'),
		('11454-L','25/05/2009','RLQ',3,31,'No',null),
		('15413-S','29/01/2010','CEM',2,13,'No',null),
		('14546-E','24/02/2010','AJH',1,5,'Sí','Alérgico a la Paidoterín')
