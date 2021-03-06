﻿USE [master]
GO
CREATE DATABASE [SIGEA-PAA] 
GO
USE [SIGEA-PAA]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Carreras](
	[codigoCarrera] [int] IDENTITY(1,1) NOT NULL,
	[nombreCarrera] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Empleados](
	[codigoEmpleado] [int] NOT NULL,
	[nombreEmpleado] [varchar](60) NULL,
	[identidadEmpleado] [varchar](16) NULL,
	[estadoEmpleado] [bit] NULL CONSTRAINT [DF_Empleados_estadoEmpleado]  DEFAULT ((1)),
PRIMARY KEY CLUSTERED 
(
	[codigoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Estudiantes](
	[numeroCuenta] [varchar](13) NOT NULL,
	[nombreEstudiante] [varchar](60) NULL,
	[identidadEstudiante] [varchar](16) NULL,
	[codigoCarrera] [int] NULL,
	[codigoTipoEstado] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[numeroCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Inscripciones](
	[numeroCuenta] [varchar](13) NULL,
	[codigoPAA] [varchar](9) NULL,
	[fechaInscripcion] [date] NULL,
	[estadoInscripcion] [bit] NULL,
	[estadoAprobacion] [int] NULL,
	[codigoUsuario] [varchar](60) NULL
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [PruebasDeAptitud](
	[codigoPAA] [varchar](9) NOT NULL,
	[fechaInicioPAA] [date] NULL,
	[fechaFinalPAA] [date] NOT NULL,
	[estadoPAA] [bit] NULL CONSTRAINT [DF_PruebasDeAptitud_estadoPAA]  DEFAULT ((1)),
	[fechaInicioInscripcionPAA] [date] NULL,
	[fechaFinalInscripcionPAA] [date] NULL,
	[cuposPAA] [int] NULL CONSTRAINT [DF_PruebasDeAptitud_cuposPAA]  DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[codigoPAA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TipoEstado](
	[codigoTipoEstado] [tinyint] NOT NULL,
	[descripcionTipoEstado] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoTipoEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TiposAcceso](
	[codigoTipoAcceso] [tinyint] NOT NULL,
	[descripcionTipoAcceso] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoTipoAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Usuarios](
	[codigoUsuario] [varchar](60) NOT NULL,
	[password] [varchar](60) NULL,
	[codigoEmpleado] [int] NULL,
	[codigoTipoAcceso] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[codigoUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [Carreras] ON 

INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (1, N'MEDICINA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (2, N'ENFERMERIA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (3, N'ODONTOLOGIA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (4, N'INFORMATICA ADMINISTRATIVA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (5, N'INGENIERIA EN SISTEMAS')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (6, N'MATEMATICAS')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (7, N'LETRAS')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (8, N'CONTADURIA PUBLICA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (9, N'ADMINISTRACION DE EMPRESAS')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (10, N'ECONOMIA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (11, N'DERECHO')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (12, N'LENGUAS EXTRANJERAS')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (13, N'PSICOLOGIA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (14, N'QUIMICA Y FARMACIA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (15, N'INGENIERIA MECANICA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (16, N'INGENIERIA INDUSTRIAL')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (17, N'INGENIERIA ELECTRICA')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (18, N'INGENIERIA CIVIL')
INSERT [Carreras] ([codigoCarrera], [nombreCarrera]) VALUES (19, N'PERIODISMO')
SET IDENTITY_INSERT [Carreras] OFF
INSERT [Empleados] ([codigoEmpleado], [nombreEmpleado], [identidadEmpleado], [estadoEmpleado]) VALUES (18714, N'DIEGO ALONSO LOPEZ RAMIREZ', N'1612-1980-00132', 1)
INSERT [Empleados] ([codigoEmpleado], [nombreEmpleado], [identidadEmpleado], [estadoEmpleado]) VALUES (18715, N'EDGARD RENE ORELLANA JUAREZ', N'0501-1992-12132', 1)
INSERT [Empleados] ([codigoEmpleado], [nombreEmpleado], [identidadEmpleado], [estadoEmpleado]) VALUES (18716, N'CINTHYA YOLANI PINEDA SABILLON', N'0508-1994-00536', 1)
INSERT [Empleados] ([codigoEmpleado], [nombreEmpleado], [identidadEmpleado], [estadoEmpleado]) VALUES (18717, N'DAVID RICARDO LANDAVERDE LANDA', N'0501-1990-00234', 1)
INSERT [Empleados] ([codigoEmpleado], [nombreEmpleado], [identidadEmpleado], [estadoEmpleado]) VALUES (18718, N'JESUAR', N'0510-1992-13312', 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2003-2002-100', N'PABLO EMILIO ESCOBAR', N'0501-1980-00100', 8, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2003-2002-101', N'PEDRO PABLO LEON JARAMILLO', N'0501-1981-00101', 6, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2003-2002-102', N'ENRIQUE SEBASTIAN LOPEZ HERNANDEZ', N'0501-1981-00102', 2, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2004-2001-103', N'WILLIAM GERARDO DIAZ LOPEZ', N'1613-1986-00103', 10, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2004-2002-104', N'WILLIAM GERARDO DIAZ LOPEZ', N'1614-1986-00103', 12, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2005-2006-105', N'RITA FLOR ANGELY LOPEZ RAMIREZ', N'0421-1970-00104', 17, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2006-3232-111', N'AXEL FRANCISCO ZAVALA VASQUEZ', N'1991-3232-12122', 8, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2007-3111-301', N'MELVIN ALBERTO VANEGAS GOMEZ', N'1985-2333-19212', 10, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2007-3233-323', N'ROBERTO ANTONIO MELGAR MELGAR', N'0501-1990-00102', 7, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2008-2003-999', N'JAIME ENRIQUE SUAZO VELASQUEZ', N'1993-2212-03033', 18, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2008-3232-332', N'CARLOS ALBERTO PAEZ RIBEIRO', N'0501-1992-00201', 4, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2009-2001-106', N'KATIA VALESKA PINEDA SABILLON', N'0501-1994-00202', 15, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2009-2001-107', N'ADA LOURDES HERNANDEZ ARGUETA', N'1994-3232-32323', 13, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2009-2323-232', N'SINDY ELIETH PINEDA HERNANDEZ PINEDA', N'0501-1992-00344', 2, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2010-2004-196', N'GARY EDGARDO PALMA SANTOS', N'0508-1994-00526', 1, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2010-2233-197', N'CARLOS ALBERTO PAVON PLUMER', N'1212-1994-23232', 3, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2011-2000-177', N'JULIO CESAR HERNANDEZ SANTIAGO', N'1993-1989-22323', 6, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2012-1993-212', N'ENZO GOMEZ', N'1614-1996-29392', 14, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2012-1993-233', N'MARTIN ENRIQUE GONZALES CHAVEZ', N'1997-3232-19399', 2, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2012-2000-176', N'BELKIS NOELIA PEÑA LOPEZ', N'1345-1994-43843', 8, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2012-2000-212', N'OSCAR RICARDO GUTIERREZ SALAZAR', N'2121-1994-12323', 9, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2013-1993-334', N'VANESSA JULIETTE DIAZ LOPEZ', N'1543-1990-43434', 10, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2013-1994-322', N'ERIC LEONEL ORTIZ VELASQUEZ', N'0421-1986-32323', 11, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2013-1995-345', N'AIDA ISABEL LANDAVERRY ', N'1343-1990-23242', 9, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2014-1992-323', N'CORY DANIELA PONCE PONCE', N'1413-1987-32323', 4, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2014-1994-223', N'TELMA JUDITH LOPEZ RAMIREZ', N'1993-1343-23232', 13, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2014-1994-323', N'MILISEN GERALDINA HERNANDEZ PINEDA', N'1993-1838-32322', 19, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2014-1998-384', N'KEVIN GUSTAVO CANACA JAAR', N'2122-1970-32323', 1, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2015-1993-323', N'MILISEN GERALDINA HERNANDEZ PINEDA', N'0501-1992-12132', 3, 1)
INSERT [Estudiantes] ([numeroCuenta], [nombreEstudiante], [identidadEstudiante], [codigoCarrera], [codigoTipoEstado]) VALUES (N'2015-1996-212', N'MILISEN GERALDINA HERNANDEZ PINEDA', N'1234-1990-12111', 16, 1)
INSERT [PruebasDeAptitud] ([codigoPAA], [fechaInicioPAA], [fechaFinalPAA], [estadoPAA], [fechaInicioInscripcionPAA], [fechaFinalInscripcionPAA], [cuposPAA]) VALUES (N'I-2016', CAST(N'2016-03-01' AS Date), CAST(N'2016-03-03' AS Date), 0, CAST(N'2016-02-25' AS Date), CAST(N'2016-02-28' AS Date), 150)
INSERT [PruebasDeAptitud] ([codigoPAA], [fechaInicioPAA], [fechaFinalPAA], [estadoPAA], [fechaInicioInscripcionPAA], [fechaFinalInscripcionPAA], [cuposPAA]) VALUES (N'I-2017', CAST(N'2017-03-17' AS Date), CAST(N'2017-03-19' AS Date), 0, CAST(N'2017-03-14' AS Date), CAST(N'2017-03-16' AS Date), 150)
INSERT [PruebasDeAptitud] ([codigoPAA], [fechaInicioPAA], [fechaFinalPAA], [estadoPAA], [fechaInicioInscripcionPAA], [fechaFinalInscripcionPAA], [cuposPAA]) VALUES (N'I-2018', CAST(N'2018-03-15' AS Date), CAST(N'2018-03-18' AS Date), 0, CAST(N'2018-03-01' AS Date), CAST(N'2018-03-14' AS Date), 105)
INSERT [PruebasDeAptitud] ([codigoPAA], [fechaInicioPAA], [fechaFinalPAA], [estadoPAA], [fechaInicioInscripcionPAA], [fechaFinalInscripcionPAA], [cuposPAA]) VALUES (N'II-2016', CAST(N'2016-06-18' AS Date), CAST(N'2016-06-21' AS Date), 0, CAST(N'2016-06-13' AS Date), CAST(N'2016-06-15' AS Date), 105)
INSERT [PruebasDeAptitud] ([codigoPAA], [fechaInicioPAA], [fechaFinalPAA], [estadoPAA], [fechaInicioInscripcionPAA], [fechaFinalInscripcionPAA], [cuposPAA]) VALUES (N'II-2017', CAST(N'2017-06-07' AS Date), CAST(N'2017-06-09' AS Date), 0, CAST(N'2017-05-31' AS Date), CAST(N'2017-06-02' AS Date), 110)
INSERT [PruebasDeAptitud] ([codigoPAA], [fechaInicioPAA], [fechaFinalPAA], [estadoPAA], [fechaInicioInscripcionPAA], [fechaFinalInscripcionPAA], [cuposPAA]) VALUES (N'III-2016', CAST(N'2016-10-21' AS Date), CAST(N'2016-10-23' AS Date), 0, CAST(N'2016-10-15' AS Date), CAST(N'2016-10-18' AS Date), 100)
INSERT [PruebasDeAptitud] ([codigoPAA], [fechaInicioPAA], [fechaFinalPAA], [estadoPAA], [fechaInicioInscripcionPAA], [fechaFinalInscripcionPAA], [cuposPAA]) VALUES (N'III-2017', CAST(N'2017-10-13' AS Date), CAST(N'2017-10-15' AS Date), 0, CAST(N'2017-10-08' AS Date), CAST(N'2017-10-11' AS Date), 150)
INSERT [TipoEstado] ([codigoTipoEstado], [descripcionTipoEstado]) VALUES (1, N'ACTIVO')
INSERT [TipoEstado] ([codigoTipoEstado], [descripcionTipoEstado]) VALUES (2, N'INACTIVO')
INSERT [TipoEstado] ([codigoTipoEstado], [descripcionTipoEstado]) VALUES (3, N'SUSPENDIDO')
INSERT [TipoEstado] ([codigoTipoEstado], [descripcionTipoEstado]) VALUES (4, N'CONDICIONADO')
INSERT [TiposAcceso] ([codigoTipoAcceso], [descripcionTipoAcceso]) VALUES (1, N'ADMINISTRADOR')
INSERT [TiposAcceso] ([codigoTipoAcceso], [descripcionTipoAcceso]) VALUES (2, N'SUPERVISOR')
INSERT [TiposAcceso] ([codigoTipoAcceso], [descripcionTipoAcceso]) VALUES (3, N'NORMAL')
INSERT [Usuarios] ([codigoUsuario], [password], [codigoEmpleado], [codigoTipoAcceso]) VALUES (N'admin', N'123456', 18716, 1)
INSERT [Usuarios] ([codigoUsuario], [password], [codigoEmpleado], [codigoTipoAcceso]) VALUES (N'usuario1', N'123456', 18715, 2)
INSERT [Usuarios] ([codigoUsuario], [password], [codigoEmpleado], [codigoTipoAcceso]) VALUES (N'usuario2', N'123456', 18718, 3)
ALTER TABLE [Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_codigocarrera] FOREIGN KEY([codigoCarrera])
REFERENCES [Carreras] ([codigoCarrera])
GO
ALTER TABLE [Estudiantes] CHECK CONSTRAINT [FK_codigocarrera]
GO
ALTER TABLE [Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_codigoTipoEstado] FOREIGN KEY([codigoTipoEstado])
REFERENCES [TipoEstado] ([codigoTipoEstado])
GO
ALTER TABLE [Estudiantes] CHECK CONSTRAINT [FK_codigoTipoEstado]
GO
ALTER TABLE [Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_codigoPAA] FOREIGN KEY([codigoPAA])
REFERENCES [PruebasDeAptitud] ([codigoPAA])
GO
ALTER TABLE [Inscripciones] CHECK CONSTRAINT [FK_codigoPAA]
GO
ALTER TABLE [Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_codigoUsuario] FOREIGN KEY([codigoUsuario])
REFERENCES [Usuarios] ([codigoUsuario])
GO
ALTER TABLE [Inscripciones] CHECK CONSTRAINT [FK_codigoUsuario]
GO
ALTER TABLE [Inscripciones]  WITH CHECK ADD  CONSTRAINT [FK_numeroCuenta] FOREIGN KEY([numeroCuenta])
REFERENCES [Estudiantes] ([numeroCuenta])
GO
ALTER TABLE [Inscripciones] CHECK CONSTRAINT [FK_numeroCuenta]
GO
ALTER TABLE [Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_codigoEmpleado] FOREIGN KEY([codigoEmpleado])
REFERENCES [Empleados] ([codigoEmpleado])
GO
ALTER TABLE [Usuarios] CHECK CONSTRAINT [FK_codigoEmpleado]
GO
ALTER TABLE [Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_codigoTipoAcceso] FOREIGN KEY([codigoTipoAcceso])
REFERENCES [TiposAcceso] ([codigoTipoAcceso])
GO
ALTER TABLE [Usuarios] CHECK CONSTRAINT [FK_codigoTipoAcceso]
GO
USE [master]
GO
ALTER DATABASE [SIGEA-PAA] SET  READ_WRITE 
GO
