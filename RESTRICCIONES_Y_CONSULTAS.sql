/* RESTRICCIONES
===========================================================*/
-- Restriccion 1
ALTER TABLE [hospital].[Ingresos]  WITH CHECK ADD  CONSTRAINT [CK_Ingresos_1*] CHECK  ([NumPlanta] <= 10)

-- Restriccion 2
ALTER TABLE [hospital].[Ingresos]  WITH CHECK ADD  CONSTRAINT [CK_Ingresos_2*] CHECK  ([NumCama] <= 200)

-- Restriccion 3
ALTER TABLE [hospital].[Pacientes]  WITH CHECK ADD  CONSTRAINT [CK_Pacientes] CHECK  ([Sexo] = 'H' OR [Sexo] = 'M')
ALTER TABLE [hospital].[Pacientes] ADD  CONSTRAINT [DF_Pacientes_Sexo]  DEFAULT ('O') FOR [Sexo]

/* CONSULTAS
===========================================================*/
-- Consulta 1
SELECT Medico_Nombre,Fecha_Ingreso
FROM [hospital].[Medicos]
WHERE Especialidad = 'Pediatría'

-- Consulta 2
SELECT Nombre FROM [hospital].[Pacientes]
WHERE Población = 'Madrid'

--Consulta 3
SELECT M.Medico_Nombre FROM [hospital].[Ingresos] AS I
	INNER JOIN [hospital].[Medicos] AS M
	ON I.CodID = M.CodID
WHERE I.Fecha_Ingreso BETWEEN '2010-01-01' AND '2010-02-01'

-- Consulta 4
SELECT P.Nombre, P.Apellidos FROM [hospital].[Ingresos] AS I
INNER JOIN [hospital].[Pacientes] AS P
ON I.NumHistorial = P.NumHistorial
WHERE Fecha_Ingreso BETWEEN '2009-01-01' AND '2009-05-01'
AND Alergico = 'Sí'

-- Consulta 5
SELECT P.Nombre FROM [hospital].[Ingresos] AS I
	INNER JOIN [hospital].[Pacientes] AS P
	ON I.NumHistorial = P.NumHistorial
	INNER JOIN [hospital].[Medicos] AS M
	ON I.CodID = M.CodID
WHERE M.Medico_Nombre = 'Antonio' AND M.Medico_Apellido = 'Jaén Hernández'


SELECT * FROM [hospital].[Ingresos]
SELECT * FROM [hospital].[Medicos]
SELECT * FROM [hospital].[Pacientes]