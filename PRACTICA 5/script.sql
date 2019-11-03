USE [master]
GO
/****** Object:  Database [JovenesDelFuturo]    Script Date: 02/11/2019 04:17:54 p. m. ******/
CREATE DATABASE [JovenesDelFuturo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JovenesDelFuturo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JovenesDelFuturo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'JovenesDelFuturo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\JovenesDelFuturo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [JovenesDelFuturo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JovenesDelFuturo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JovenesDelFuturo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET ARITHABORT OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [JovenesDelFuturo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JovenesDelFuturo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JovenesDelFuturo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JovenesDelFuturo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JovenesDelFuturo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JovenesDelFuturo] SET  MULTI_USER 
GO
ALTER DATABASE [JovenesDelFuturo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JovenesDelFuturo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JovenesDelFuturo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JovenesDelFuturo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JovenesDelFuturo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JovenesDelFuturo] SET QUERY_STORE = OFF
GO
USE [JovenesDelFuturo]
GO
/****** Object:  Table [dbo].[Becarios]    Script Date: 02/11/2019 04:17:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Becarios](
	[idbecario] [int] NOT NULL,
	[usuario] [varchar](255) NOT NULL,
	[iddatosGen] [int] NOT NULL,
	[iddomicilio] [int] NOT NULL,
	[idnivelEstudio] [int] NULL,
	[idhistorial] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idbecario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosGen]    Script Date: 02/11/2019 04:17:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosGen](
	[iddatosGen] [int] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[apPaterno] [varchar](255) NOT NULL,
	[apMaterno] [varchar](255) NOT NULL,
	[curp] [varchar](255) NOT NULL,
	[NombreCompleto]  AS (((([nombre]+' ')+[apPaterno])+' ')+[apMaterno]),
	[FechaNacimiento] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddatosGen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[curp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 02/11/2019 04:17:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domicilio](
	[iddomicilio] [int] NOT NULL,
	[calle] [varchar](255) NOT NULL,
	[colonia] [varchar](255) NOT NULL,
	[codigoPostal] [int] NOT NULL,
	[municipio] [varchar](255) NOT NULL,
	[numeroExterior] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[iddomicilio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleos]    Script Date: 02/11/2019 04:17:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleos](
	[idempleos] [int] NOT NULL,
	[iddomicilio] [int] NOT NULL,
	[razonSocial] [varchar](255) NOT NULL,
	[RFC] [varchar](255) NOT NULL,
	[giroDeEmpresa] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idempleos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[razonSocial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RFC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 02/11/2019 04:17:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[idestado] [int] NOT NULL,
	[tipoDeEstado] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idestado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 02/11/2019 04:17:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historial](
	[idhistorial] [int] NOT NULL,
	[idbecario] [int] NOT NULL,
	[idtutores] [int] NOT NULL,
	[idPosEstados] [int] NOT NULL,
	[fechaCambioEstado] [date] NOT NULL,
	[horaCambioEstado] [time](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idhistorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelEstudio]    Script Date: 02/11/2019 04:17:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NivelEstudio](
	[idnivelEstudio] [int] NOT NULL,
	[gradoDeEstudio] [varchar](255) NOT NULL,
	[institucion] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idnivelEstudio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PosiblesEstados]    Script Date: 02/11/2019 04:17:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PosiblesEstados](
	[idPosiblesEstados] [int] NOT NULL,
	[estadoInicial] [varchar](255) NOT NULL,
	[estadoFinal] [varchar](255) NOT NULL,
	[idestado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idPosiblesEstados] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tutores]    Script Date: 02/11/2019 04:17:55 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutores](
	[idtutores] [int] NOT NULL,
	[usuario] [varchar](255) NOT NULL,
	[iddatosGen] [int] NOT NULL,
	[iddomicilio] [int] NULL,
	[idempleos] [int] NULL,
	[idhistorial] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idtutores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Becarios]  WITH CHECK ADD  CONSTRAINT [relation_becarios_datosGen] FOREIGN KEY([iddatosGen])
REFERENCES [dbo].[DatosGen] ([iddatosGen])
GO
ALTER TABLE [dbo].[Becarios] CHECK CONSTRAINT [relation_becarios_datosGen]
GO
ALTER TABLE [dbo].[Becarios]  WITH CHECK ADD  CONSTRAINT [relation_becarios_domicilio] FOREIGN KEY([iddomicilio])
REFERENCES [dbo].[Domicilio] ([iddomicilio])
GO
ALTER TABLE [dbo].[Becarios] CHECK CONSTRAINT [relation_becarios_domicilio]
GO
ALTER TABLE [dbo].[Becarios]  WITH CHECK ADD  CONSTRAINT [relation_becarios_historial] FOREIGN KEY([idhistorial])
REFERENCES [dbo].[Historial] ([idhistorial])
GO
ALTER TABLE [dbo].[Becarios] CHECK CONSTRAINT [relation_becarios_historial]
GO
ALTER TABLE [dbo].[Becarios]  WITH CHECK ADD  CONSTRAINT [relation_becarios_nivelEstudios] FOREIGN KEY([idnivelEstudio])
REFERENCES [dbo].[NivelEstudio] ([idnivelEstudio])
GO
ALTER TABLE [dbo].[Becarios] CHECK CONSTRAINT [relation_becarios_nivelEstudios]
GO
ALTER TABLE [dbo].[Empleos]  WITH CHECK ADD  CONSTRAINT [relation_Empleos_Domicilio] FOREIGN KEY([iddomicilio])
REFERENCES [dbo].[Domicilio] ([iddomicilio])
GO
ALTER TABLE [dbo].[Empleos] CHECK CONSTRAINT [relation_Empleos_Domicilio]
GO
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD  CONSTRAINT [relation_historial_becarios] FOREIGN KEY([idbecario])
REFERENCES [dbo].[Becarios] ([idbecario])
GO
ALTER TABLE [dbo].[Historial] CHECK CONSTRAINT [relation_historial_becarios]
GO
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD  CONSTRAINT [relation_historial_posiblesestados] FOREIGN KEY([idPosEstados])
REFERENCES [dbo].[PosiblesEstados] ([idPosiblesEstados])
GO
ALTER TABLE [dbo].[Historial] CHECK CONSTRAINT [relation_historial_posiblesestados]
GO
ALTER TABLE [dbo].[Historial]  WITH CHECK ADD  CONSTRAINT [relation_historial_tutores] FOREIGN KEY([idtutores])
REFERENCES [dbo].[Tutores] ([idtutores])
GO
ALTER TABLE [dbo].[Historial] CHECK CONSTRAINT [relation_historial_tutores]
GO
ALTER TABLE [dbo].[PosiblesEstados]  WITH CHECK ADD  CONSTRAINT [relation_PosiblesEstados_estados] FOREIGN KEY([idestado])
REFERENCES [dbo].[Estados] ([idestado])
GO
ALTER TABLE [dbo].[PosiblesEstados] CHECK CONSTRAINT [relation_PosiblesEstados_estados]
GO
ALTER TABLE [dbo].[Tutores]  WITH CHECK ADD  CONSTRAINT [relation_tutores_datosGen] FOREIGN KEY([iddatosGen])
REFERENCES [dbo].[DatosGen] ([iddatosGen])
GO
ALTER TABLE [dbo].[Tutores] CHECK CONSTRAINT [relation_tutores_datosGen]
GO
ALTER TABLE [dbo].[Tutores]  WITH CHECK ADD  CONSTRAINT [relation_tutores_domicilio] FOREIGN KEY([iddomicilio])
REFERENCES [dbo].[Domicilio] ([iddomicilio])
GO
ALTER TABLE [dbo].[Tutores] CHECK CONSTRAINT [relation_tutores_domicilio]
GO
ALTER TABLE [dbo].[Tutores]  WITH CHECK ADD  CONSTRAINT [relation_tutores_empleos] FOREIGN KEY([idempleos])
REFERENCES [dbo].[Empleos] ([idempleos])
GO
ALTER TABLE [dbo].[Tutores] CHECK CONSTRAINT [relation_tutores_empleos]
GO
ALTER TABLE [dbo].[Tutores]  WITH CHECK ADD  CONSTRAINT [relation_tutores_historial] FOREIGN KEY([idhistorial])
REFERENCES [dbo].[Historial] ([idhistorial])
GO
ALTER TABLE [dbo].[Tutores] CHECK CONSTRAINT [relation_tutores_historial]
GO
USE [master]
GO
ALTER DATABASE [JovenesDelFuturo] SET  READ_WRITE 
GO
