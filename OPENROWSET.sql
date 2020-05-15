INSERT INTO [hospital].[Pacientes] (N_SeguridadSocial,Nombre,Apellidos,Domicilio,Población,Provincia,Teléfono,NumHistorial,Sexo)
VALUES ('08/7666666','Pablo','Garbizu Zabal', 'Donostia','Guipuzkoa',20009,'91-458-26-99','16789-G','H') 

BULK INSERT [hospital].[Pacientes].[FotoPaciente]
   FROM 'D:\3.IMAGENES\Fotos\DNI foto.jpeg' AS Foto
-- No se como guardarlo como Foto para el select ^
SELECT Foto
FROM hospital.Pacientes
WHERE N_SeguridadSocial = '08/7666666'
FOR XML RAW, BINARY BASE64

SELECT * FROM [hospital].[Pacientes]