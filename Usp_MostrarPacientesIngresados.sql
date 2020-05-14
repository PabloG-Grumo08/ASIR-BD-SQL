/* Codigo de Ejecucion*/
EXEC hospital.usp_MostrarPacientesIngresados '1/1/2009','1/2/2009';

SELECT * FROM [hospital].[Ingresos]
SELECT * FROM [hospital].[Pacientes]

/***************************************************/
CREATE PROCEDURE hospital.usp_MostrarPacientesIngresados
	@p_Fecha1 date,
	@p_Fecha2 date
AS

BEGIN
-- Select de los datos de los pacientes ingresados
	SELECT * FROM [hospital].[Ingresos] AS I
		INNER JOIN [hospital].[Pacientes] AS P
		ON I.NumHistorial = P.NumHistorial
		WHERE Fecha_Ingreso BETWEEN @p_Fecha1 AND @p_Fecha2
END