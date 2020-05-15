-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Name
-- Create date: 
-- Description:	
-- =============================================
CREATE FUNCTION ContarPacientesGenero 
(
	-- Add the parameters for the function here
	@p1 int
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int

	-- Add the T-SQL statements to compute the return value here
	SELECT @Result =	COUNT(NumHistorial)
						FROM [hospital].[Pacientes]
						WHERE Sexo = @p1
	/*Mediante este codigo podremos contar ell numero de pacientes introduciendo 
	si queremos que cuente a los Hombres(H) o a las Mujeres(M)*/
	-- Return the result of the function
	RETURN @Result

END
GO

