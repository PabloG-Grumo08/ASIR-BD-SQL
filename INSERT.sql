INSERT INTO [hospital].[Medicos] (CodID,Medico_Nombre,Medico_Apellido,Especialidad,Fecha_Ingreso,Cargo,Num_Colegiado,Observaciones)
VALUES	('AJH','Antonio','Ja�n Hernandez','Pediatr�a','12-08-82','Adjunto',2113,'Est� pr�xima su retirada'),
		('CEM','Carmen','Esterill Manrique','Psiquiatr�a','13-02-92','Jefe de secci�n',1231,null),
		('RLQ','Rocio','L�pez Quijada','M�dico de familia','23-09-94','Titular',1331,null)

INSERT INTO [hospital].[Pacientes] (N_SeguridadSocial,Nombre,Apellidos,Domicilio,Poblaci�n,Provincia,CodPostal,Tel�fono,NumHistorial,Sexo)
VALUES	('08/7888888','Jos� Eduardo','Romerales Pinto','C/ Azor�n, 34 3o','M�stoles','Madrid',28935,'91-345-87-45','10203-F','H'),
		('08/7234823','�ngel','Ru�z Picasso','C/ Salmer�n, 212','Madrid','Madrid',28028,'91-565-34-33','11454-L','H'),
		('08/7333333','Mercedes','Romero Carvajal','C/ Malaga, 13','M�stoles','Madrid',28935,'91-455-67-45','14546-E','M'),
		('08/7555555','Mart�n','Fern�ndez L�pez','C/ Sastres, 21','Madrid','Madrid',28028,'91-333-33-33','15413-S','H')

/*	Tuve que utilizar este comanto para comprobar el error 207 en el segundo insert,
	lo consegui arreglar actualizando el nombre de una columna;
	SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('hospital.Pacientes');*/

INSERT INTO [hospital].[Ingresos] (NumHistorial,Fecha_Ingreso,CodID,NumPlanta,NumCama,Alergico,Observaciones)
VALUES	('10203-F','23/01/2009','AJH',5,121,'No','Epil�ptico'),
		('15413-S','13/03/2009','RLQ',2,5,'S�','Al�rgico a la pericilina'),
		('11454-L','25/05/2009','RLQ',3,31,'No',null),
		('15413-S','29/01/2010','CEM',2,13,'No',null),
		('14546-E','24/02/2010','AJH',1,5,'S�','Al�rgico a la Paidoter�n')