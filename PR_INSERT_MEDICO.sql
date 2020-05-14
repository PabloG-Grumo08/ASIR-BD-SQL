/* Codigo de Ejecucion*/
DECLARE @v_error INT
EXEC hospital.pr_Insert_Medico 'PGZ','Pablo','Garbizu Zabal','Cardiologo','04-06-2000','Adjunto',888,null,@v_error OUTPUT;
PRINT @v_error

SELECT * FROM [hospital].[Medicos]

/***************************************************/
CREATE PROCEDURE hospital.pr_Insert_Medico
	@p_codID char(4),
	@p_MedNombre varchar(15),
	@p_MedApellido varchar(30),
	@p_Especialidad nchar(25),
	@p_FechaIngreso date,
	@p_Cargo nchar(25),
	@p_NumColegiado numeric(6,0),
	@p_Observaciones nvarchar(50),
	@p_salida INT OUTPUT
AS

BEGIN
-- Si existe ID (-1)
	IF NOT EXISTS (SELECT *
					FROM [hospital].[Medicos]
					WHERE CodID=@p_codID)
		BEGIN
			SET @p_salida = -1
			RETURN
		END

-- Si el NumColegiados esta entre 0 y 999 (-2)
	IF @p_NumColegiado BETWEEN 0 AND 999
		BEGIN
			SET @p_salida = -2
			RETURN
		END

-- Actualizar precio (1)
	BEGIN TRY
		INSERT INTO [hospital].[Medicos] (CodID,Medico_Nombre,Medico_Apellido,Especialidad,Fecha_Ingreso,Cargo,Num_Colegiado,Observaciones)
		VALUES	(@p_codID,@p_MedNombre,@p_MedApellido,@p_Especialidad,@p_FechaIngreso,@p_Cargo,@p_NumColegiado,@p_Observaciones)
	END TRY
	BEGIN CATCH
		SET @p_salida = @@ERROR
		RETURN
	END CATCH
	
	SET @p_salida = 0
	RETURN
END