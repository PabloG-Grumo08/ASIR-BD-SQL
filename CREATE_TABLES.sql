USE [ASIR_PabloGarbizu]
GO
/****** Object:  Schema [hospital]    Script Date: 14/05/2020 0:26:15 ******/
CREATE SCHEMA [hospital]
GO
/****** Object:  Table [hospital].[Ingresos]    Script Date: 14/05/2020 0:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hospital].[Ingresos](
	[NumIngreso] [int] IDENTITY(1,1) NOT NULL,
	[NumHistorial] [varchar](9) NULL,
	[Fecha_Ingreso] [date] NULL,
	[CodID] [char](4) NULL,
	[NumPlanta] [int] NULL,
	[NumCama] [int] NULL,
	[Alergico] [char](2) NULL,
	[Observaciones] [nvarchar](50) NULL,
	[Coste_Tratamiento] [money] NULL,
	[Diagnostico] [varchar](40) NULL,
 CONSTRAINT [PK_Ingresos] PRIMARY KEY CLUSTERED 
(
	[NumIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hospital].[Medicos]    Script Date: 14/05/2020 0:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hospital].[Medicos](
	[CodID] [char](4) NOT NULL,
	[Medico_Nombre] [varchar](15) NULL,
	[Medico_Apellido] [varchar](30) NULL,
	[Especialidad] [nchar](25) NULL,
	[Fecha_Ingreso] [date] NULL,
	[Cargo] [nchar](25) NULL,
	[Num_Colegiado] [numeric](6, 0) NULL,
	[Observaciones] [nvarchar](50) NULL,
 CONSTRAINT [PK_Medicos] PRIMARY KEY CLUSTERED 
(
	[CodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hospital].[Pacientes]    Script Date: 14/05/2020 0:26:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hospital].[Pacientes](
	[N_SeguridadSocial] [varchar](15) NULL,
	[Nombre] [varchar](15) NULL,
	[Apellidos] [varchar](30) NULL,
	[Domicilio] [varchar](30) NULL,
	[Población] [nchar](25) NULL,
	[Provincia] [nchar](15) NULL,
	[CodPostal] [nchar](5) NULL,
	[Teléfono] [varchar](12) NULL,
	[NumHistorial] [varchar](9) NOT NULL,
	[Sexo] [char](1) NULL,
 CONSTRAINT [PK_Pacientes] PRIMARY KEY CLUSTERED 
(
	[NumHistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [hospital].[Ingresos]  WITH CHECK ADD  CONSTRAINT [FK_Ingresos_Medicos] FOREIGN KEY([CodID])
REFERENCES [hospital].[Medicos] ([CodID])
GO
ALTER TABLE [hospital].[Ingresos] CHECK CONSTRAINT [FK_Ingresos_Medicos]
GO
ALTER TABLE [hospital].[Ingresos]  WITH CHECK ADD  CONSTRAINT [FK_Ingresos_Pacientes] FOREIGN KEY([NumHistorial])
REFERENCES [hospital].[Pacientes] ([NumHistorial])
GO
ALTER TABLE [hospital].[Ingresos] CHECK CONSTRAINT [FK_Ingresos_Pacientes]
GO
ALTER TABLE [hospital].[Pacientes]  WITH CHECK ADD  CONSTRAINT [CK_Pacientes] CHECK  (([Sexo]='H' OR [Sexo]='M'))
GO
ALTER TABLE [hospital].[Pacientes] CHECK CONSTRAINT [CK_Pacientes]
GO
