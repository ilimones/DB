USE [JovenesDelFuturo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tutores]') AND type in (N'U'))
ALTER TABLE [dbo].[Tutores] DROP CONSTRAINT IF EXISTS [relation_tutores_historial]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tutores]') AND type in (N'U'))
ALTER TABLE [dbo].[Tutores] DROP CONSTRAINT IF EXISTS [relation_tutores_empleos]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tutores]') AND type in (N'U'))
ALTER TABLE [dbo].[Tutores] DROP CONSTRAINT IF EXISTS [relation_tutores_domicilio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tutores]') AND type in (N'U'))
ALTER TABLE [dbo].[Tutores] DROP CONSTRAINT IF EXISTS [relation_tutores_datosGen]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PosiblesEstados]') AND type in (N'U'))
ALTER TABLE [dbo].[PosiblesEstados] DROP CONSTRAINT IF EXISTS [relation_PosiblesEstados_estados]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Historial]') AND type in (N'U'))
ALTER TABLE [dbo].[Historial] DROP CONSTRAINT IF EXISTS [relation_historial_tutores]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Historial]') AND type in (N'U'))
ALTER TABLE [dbo].[Historial] DROP CONSTRAINT IF EXISTS [relation_historial_posiblesestados]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Historial]') AND type in (N'U'))
ALTER TABLE [dbo].[Historial] DROP CONSTRAINT IF EXISTS [relation_historial_becarios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleos]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleos] DROP CONSTRAINT IF EXISTS [relation_Empleos_Domicilio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Becarios]') AND type in (N'U'))
ALTER TABLE [dbo].[Becarios] DROP CONSTRAINT IF EXISTS [relation_becarios_nivelEstudios]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Becarios]') AND type in (N'U'))
ALTER TABLE [dbo].[Becarios] DROP CONSTRAINT IF EXISTS [relation_becarios_historial]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Becarios]') AND type in (N'U'))
ALTER TABLE [dbo].[Becarios] DROP CONSTRAINT IF EXISTS [relation_becarios_domicilio]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Becarios]') AND type in (N'U'))
ALTER TABLE [dbo].[Becarios] DROP CONSTRAINT IF EXISTS [relation_becarios_datosGen]
GO
/****** Object:  Index [UQ__Tutores__9AFF8FC6134C510D]    Script Date: 10/11/2019 09:24:54 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tutores]') AND type in (N'U'))
ALTER TABLE [dbo].[Tutores] DROP CONSTRAINT IF EXISTS [UQ__Tutores__9AFF8FC6134C510D]
GO
/****** Object:  Index [UQ__Empleos__CAFFA85E3A7C80BF]    Script Date: 10/11/2019 09:24:54 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleos]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleos] DROP CONSTRAINT IF EXISTS [UQ__Empleos__CAFFA85E3A7C80BF]
GO
/****** Object:  Index [UQ__Empleos__17BADCA0C26FAC20]    Script Date: 10/11/2019 09:24:54 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleos]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleos] DROP CONSTRAINT IF EXISTS [UQ__Empleos__17BADCA0C26FAC20]
GO
/****** Object:  Index [UQ__DatosGen__2CDDD194CF65533E]    Script Date: 10/11/2019 09:24:54 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DatosGen]') AND type in (N'U'))
ALTER TABLE [dbo].[DatosGen] DROP CONSTRAINT IF EXISTS [UQ__DatosGen__2CDDD194CF65533E]
GO
/****** Object:  Index [UQ__Becarios__9AFF8FC61D109997]    Script Date: 10/11/2019 09:24:54 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Becarios]') AND type in (N'U'))
ALTER TABLE [dbo].[Becarios] DROP CONSTRAINT IF EXISTS [UQ__Becarios__9AFF8FC61D109997]
GO
/****** Object:  Table [dbo].[Tutores_No_Disponibles]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Tutores_No_Disponibles]
GO
/****** Object:  Table [dbo].[Tutores_No_Disponible]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Tutores_No_Disponible]
GO
/****** Object:  Table [dbo].[Tutores]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Tutores]
GO
/****** Object:  Table [dbo].[PosiblesEstados]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[PosiblesEstados]
GO
/****** Object:  Table [dbo].[nombres]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[nombres]
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Historial]
GO
/****** Object:  Table [dbo].[Empleos]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Empleos]
GO
/****** Object:  Table [dbo].[Becarios]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Becarios]
GO
/****** Object:  View [dbo].[calles_d_sanPedro]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP VIEW IF EXISTS [dbo].[calles_d_sanPedro]
GO
/****** Object:  View [dbo].[curp_dom]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP VIEW IF EXISTS [dbo].[curp_dom]
GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Domicilio]
GO
/****** Object:  View [dbo].[EstFin_personas]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP VIEW IF EXISTS [dbo].[EstFin_personas]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Estados]
GO
/****** Object:  View [dbo].[Nv_Estudio_Becarios]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP VIEW IF EXISTS [dbo].[Nv_Estudio_Becarios]
GO
/****** Object:  Table [dbo].[NivelEstudio]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[NivelEstudio]
GO
/****** Object:  Table [dbo].[DatosGen]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP TABLE IF EXISTS [dbo].[DatosGen]
GO
USE [master]
GO
/****** Object:  Database [JovenesDelFuturo]    Script Date: 10/11/2019 09:24:54 p. m. ******/
DROP DATABASE IF EXISTS [JovenesDelFuturo]
GO
/****** Object:  Database [JovenesDelFuturo]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
/****** Object:  Table [dbo].[DatosGen]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NivelEstudio]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
/****** Object:  View [dbo].[Nv_Estudio_Becarios]    Script Date: 10/11/2019 09:24:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Nv_Estudio_Becarios] as(
				select ns.gradoDeEstudio, dg.nombre
				from NivelEstudio as ns
				left join DatosGen as dg
				on ns.idnivelEstudio = dg.iddatosGen)
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
/****** Object:  View [dbo].[EstFin_personas]    Script Date: 10/11/2019 09:24:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[EstFin_personas] as(
				select dg.NombreCompleto, est.tipoDeEstado
				from DatosGen as dg
				left join Estados as est
				on dg.iddatosGen = est.idestado)

GO
/****** Object:  Table [dbo].[Domicilio]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
/****** Object:  View [dbo].[curp_dom]    Script Date: 10/11/2019 09:24:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[curp_dom] as(
				select dg.curp, dm.calle, dm.numeroExterior
				from DatosGen as dg
				left join Domicilio  as dm
				on dg.iddatosGen = dm.iddomicilio)
GO
/****** Object:  View [dbo].[calles_d_sanPedro]    Script Date: 10/11/2019 09:24:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	create view [dbo].[calles_d_sanPedro] as(
				select calle
				from Domicilio 
				where colonia = 'San Pedro Garza Garcia')
GO
/****** Object:  Table [dbo].[Becarios]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
	[idhistorial] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idbecario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleos]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Historial]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
/****** Object:  Table [dbo].[nombres]    Script Date: 10/11/2019 09:24:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nombres](
	[nombre] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PosiblesEstados]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
/****** Object:  Table [dbo].[Tutores]    Script Date: 10/11/2019 09:24:54 p. m. ******/
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
	[idhistorial] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idtutores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tutores_No_Disponible]    Script Date: 10/11/2019 09:24:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutores_No_Disponible](
	[estadoFinal] [varchar](255) NOT NULL,
	[usuario] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tutores_No_Disponibles]    Script Date: 10/11/2019 09:24:54 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tutores_No_Disponibles](
	[estadoFinal] [varchar](255) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Becarios] ([idbecario], [usuario], [iddatosGen], [iddomicilio], [idnivelEstudio], [idhistorial]) VALUES (2, N'jerurdm', 2, 2, 2, NULL)
INSERT [dbo].[Becarios] ([idbecario], [usuario], [iddatosGen], [iddomicilio], [idnivelEstudio], [idhistorial]) VALUES (3, N'alawalg', 3, 3, 3, NULL)
INSERT [dbo].[Becarios] ([idbecario], [usuario], [iddatosGen], [iddomicilio], [idnivelEstudio], [idhistorial]) VALUES (7, N'alemorr', 7, 7, 7, NULL)
INSERT [dbo].[Becarios] ([idbecario], [usuario], [iddatosGen], [iddomicilio], [idnivelEstudio], [idhistorial]) VALUES (9, N'anazamm', 9, 9, 9, NULL)
INSERT [dbo].[Becarios] ([idbecario], [usuario], [iddatosGen], [iddomicilio], [idnivelEstudio], [idhistorial]) VALUES (10, N'arygamz', 10, 10, 10, NULL)
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (1, N'Jesus', N'Carrizales', N'Mercedes', N'CAMJ770826HCXRRS14', CAST(N'1978-12-12' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (2, N'Jerson', N'Urdiales', N'Morales', N'UIMJ980911HCXRRR11', CAST(N'1998-09-11' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (3, N'Alan', N'Walker', N'Gonzales', N'WAGA990915HCXLNL24', CAST(N'1999-09-15' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (4, N'Abelardo', N'Sesamo', N'Rodriguez', N'SERA901224HCXSDB16', CAST(N'1990-12-24' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (5, N'Alfonso', N'Cuaron', N'Smith', N'CUSA880612HCXRML54', CAST(N'1988-06-12' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (6, N'Arely', N'Carrillo', N'Hellman', N'CAHA770322HCXRLR28', CAST(N'1977-03-22' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (7, N'Alejandra', N'Morales', N'Rodriguez', N'MORA951228MNTRDL27', CAST(N'1995-12-28' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (8, N'Axel', N'Carrizales', N'Arboles', N'CAAA750222MNTRRX41', CAST(N'1975-02-22' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (9, N'Ana', N'Zamorano', N'Mercedes', N'ZAMA990329MNTMRN79', CAST(N'1999-03-29' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (10, N'Ary', N'Gameplays', N'Zamarripa', N'GAZA000529MNTMMRI6', CAST(N'2000-05-29' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (11, N'Antonio', N'Hernandez', N'Cortes', N'HECA980125HNLRRN47', CAST(N'1998-01-25' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (12, N'Alejandro', N'Lomeli', N'Mellizo', N'LOMA760619MCLMLL59', CAST(N'1976-06-19' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (13, N'Alex', N'Tello', N'Romero', N'TERA720309HCLLML51', CAST(N'1972-04-09' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (14, N'Arely', N'Canchola', N'Moreno', N'CAMA940621MCLNRR89', CAST(N'1994-06-21' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (15, N'Adolfo', N'Castillo', N'Robles', N'CARA860714HCLSBD59', CAST(N'1986-07-14' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (16, N'Adrian', N'Ortega', N'Castro', N'OECA850825HCLRSD39', CAST(N'1985-08-25' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (17, N'Agustin', N'Salazar', N'Martinez', N'SAMA790418HCLLRG67', CAST(N'1979-04-18' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (18, N'Aitor', N'Urelia', N'Rodriguez', N'UERA690420HGTRDT52', CAST(N'1969-04-20' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (19, N'Alberto', N'Salazar', N'Rodriguez', N'SARA720806HNLLDL57', CAST(N'1972-08-06' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (20, N'Alexis', N'Apoell', N'Fernandez', N'AOFA820623HNLPRL31', CAST(N'1982-06-23' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (21, N'Adriana', N'Cantu', N'Garcia', N'CAGA800712MNLNRD34', CAST(N'1980-07-12' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (22, N'Aida', N'Serrato', N'Garza', N'SEGA781122MNLRRD88', CAST(N'1978-11-22' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (23, N'Alicia', N'Keys', N'Hernandez', N'KEHA900605MNLYRL53', CAST(N'1990-06-05' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (24, N'Anabel', N'Pierre', N'Gignac', N'PIGA900911MNLRGN46', CAST(N'1999-09-11' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (25, N'Andrea', N'Granada', N'Tijeras', N'GATA710923MNLRJN58', CAST(N'1971-09-23' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (26, N'Benito', N'Castillo', N'Castillo', N'CACB940217HNLSSN93', CAST(N'1994-02-17' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (27, N'Bastian', N'Rodriguez', N'Hernandez', N'ROHB940720HNLDRS74', CAST(N'1994-07-20' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (28, N'Benjamin', N'Perez', N'Sauceda', N'PESB921010HNLRCN53', CAST(N'1992-10-10' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (29, N'Bruno', N'Lopez', N'Chan', N'', CAST(N'2000-11-15' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (30, N'Brandon', N'Hernandez', N'Hernandez', N'HEHB9936HNLRRR29', CAST(N'1999-03-06' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (31, N'Belen', N'Cruz', N'Espronceda', N'CUEB970623MNLRSL17', CAST(N'1997-06-23' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (32, N'Bella', N'Martinez', N'Gonzalez', N'MAGB980227MNLRNL59', CAST(N'1998-02-27' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (33, N'Belinda', N'Juarez', N'Gutierrez', N'JUGB700527MNLRTL81', CAST(N'1999-08-27' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (34, N'Bibiana', N'Fernandez', N'Fernandez', N'FEFB930517MNLRRB93', CAST(N'1993-05-17' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (35, N'Beatriz', N'Ordaz', N'Lumbrera', N'OALB701123MNLRMT39', CAST(N'1970-11-23' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (36, N'Blanca', N'Monsivais', N'Luna', N'MOLB99124MNLNNL48', CAST(N'1999-12-04' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (37, N'Brenda', N'Bazaldua', N'Rodriguez', N'BARB75725MNLZDR94', CAST(N'1975-07-25' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (38, N'Betty', N'Lopez', N'Gutierrez', N'LOGB80911MNLPTT25', CAST(N'1980-09-11' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (39, N'Berta', N'Tovar', N'Lopez', N'TOLB87620MNLVPR14', CAST(N'1987-06-20' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (40, N'Bernabe', N'Rodriguez', N'Acuña', N'ROAB8999HNLDCR12', CAST(N'1989-09-09' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (41, N'Bernardo', N'Sanchez', N'Hernandez', N'SAHB991010HNLNRR96', CAST(N'1999-10-10' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (42, N'Byron', N'Lumbrera', N'Monsivais', N'LUMB8678HNLMNY71', CAST(N'1986-07-08' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (43, N'Bruce', N'Perez', N'Espronceda', N'PEEB92925HNLRSR15', CAST(N'1992-09-25' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (44, N'Bianca', N'Rodriguez', N'Sampayo', N'ROSB00123MNLDMN4', CAST(N'2000-01-23' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (45, N'Camila', N'Sexto', N'Rodriguez', N'SERC89430MNLXDM77', CAST(N'1989-04-30' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (46, N'Carlos', N'Cornejo', N'Cornejo', N'COCC90720HNLRRR68', CAST(N'1990-07-20' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (47, N'Carla', N'Lopez', N'Orduña', N'LOOC911229MNLPRR66', CAST(N'1991-12-29' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (48, N'Carolina', N'Suarez', N'Salazar', N'SUSC92420MNLRLR83', CAST(N'1992-04-20' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (49, N'Casimiro', N'Gallegos', N'Trejo', N'GATC94618HNLLRS25', CAST(N'1994-06-18' AS Date))
INSERT [dbo].[DatosGen] ([iddatosGen], [nombre], [apPaterno], [apMaterno], [curp], [FechaNacimiento]) VALUES (50, N'Cecilia', N'Torres', N'Cortes', N'TOCC7379MNLRRC39', CAST(N'1973-07-09' AS Date))
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (1, N'Los Rosales', N'Los Cristales', 64982, N'Monterrey', 243)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (2, N'Arroyo gris', N'Los Arroyos', 64932, N'Monterrey', 232)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (3, N'Arroyo rojo', N'Los Arroyos', 64932, N'Monterrey', 321)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (4, N'Tigres UANL', N'Liga Mexicana', 64972, N'Monterrey', 1234)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (5, N'Flor de primavera', N'Las estaciones', 64822, N'Monterrey', 4234)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (6, N'Garza Azul', N'Las Garzas', 64942, N'Monterrey', 4324)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (7, N'Valle bajo', N'Los valles', 64975, N'Monterrey', 1432)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (8, N'Herradura verde', N'Las herraduras', 63915, N'Monterrey', 5254)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (9, N'Italia', N'Las europas', 61945, N'Monterrey', 1343)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (10, N'Guanajuato', N'Independencia', 63215, N'Monterrey', 1353)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (11, N'Sonora', N'Independencia', 63215, N'Monterrey', 4234)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (12, N'Herradura azul', N'Las herraduras', 63915, N'Monterrey', 2434)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (13, N'Azul', N'Los colores', 63455, N'Monterrey', 2214)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (14, N'Platanos', N'Contry', 66215, N'Monterrey', 6341)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (15, N'Paseo del arroyo', N'Del paseo', 65215, N'Monterrey', 2453)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (16, N'Paseo de las bugambilias', N'Del paseo', 65215, N'Monterrey', 8754)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (17, N'Paseo de las rosas', N'Del paseo', 65215, N'Monterrey', 3244)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (18, N'Paseo magnolias', N'Del paseo', 65215, N'Monterrey', 5343)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (19, N'Paseo de los jazmines', N'Del paseo', 65215, N'Monterrey', 7445)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (20, N'Paseo de los geranios', N'Del paseo', 65215, N'Monterrey', 4564)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (21, N'Paseo cardoner', N'Del paseo', 65215, N'Monterrey', 2523)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (22, N'Paseo loyola', N'Del paseo', 65215, N'Monterrey', 5432)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (23, N'Paseo Lazio', N'Del paseo', 65215, N'Monterrey', 4233)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (24, N'Paseo de los canelos', N'Del paseo', 65215, N'Monterrey', 3213)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (25, N'Paseo del acueducto', N'Del paseo', 65215, N'Monterrey', 3243)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (26, N'Paseo Las Palmas', N'Del paseo', 65215, N'Monterrey', 9473)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (27, N'Paseo Orinoco', N'Del paseo', 65215, N'Monterrey', 7261)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (28, N'Paseo Orizaba', N'Del paseo', 65215, N'Monterrey', 8213)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (29, N'Paseo de cumbres', N'Del paseo', 65215, N'Monterrey', 1312)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (30, N'Paseo del Lirio', N'Del paseo', 65215, N'Monterrey', 7623)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (31, N'Ignacio Allende', N'San Pedro Garza Garcia', 61320, N'Monterrey', 2421)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (32, N'Vigo', N'San Pedro Garza Garcia', 61320, N'Monterrey', 4232)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (33, N'Coruña', N'San Pedro Garza Garcia', 61320, N'Monterrey', 9873)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (34, N'Ligo', N'San Pedro Garza Garcia', 61320, N'Monterrey', 3245)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (35, N'2 de Mayo', N'San Pedro Garza Garcia', 61320, N'Monterrey', 6143)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (36, N'2 de abril', N'San Pedro Garza Garcia', 61320, N'Monterrey', 8732)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (37, N'2 de abril', N'San Pedro Garza Garcia', 61320, N'Monterrey', 2432)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (38, N'Los agaves', N'San Pedro Garza Garcia', 61320, N'Monterrey', 9863)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (39, N'Matancillas', N'San Pedro Garza Garcia', 61320, N'Monterrey', 7632)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (40, N'Penas', N'San Pedro Garza Garcia', 61320, N'Monterrey', 8972)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (41, N'Ameca', N'Guadalupe', 60520, N'Monterrey', 9872)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (42, N'Pleamar', N'Guadalupe', 60520, N'Monterrey', 1543)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (43, N'El salto', N'Guadalupe', 60520, N'Monterrey', 8632)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (44, N'Pio X', N'Guadalupe', 60520, N'Monterrey', 8762)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (45, N'Tajamar', N'Guadalupe', 60520, N'Monterrey', 1263)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (46, N'Embarcadero', N'Guadalupe', 60520, N'Monterrey', 9872)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (47, N'Bocana', N'Guadalupe', 60520, N'Monterrey', 9872)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (48, N'Dique', N'Guadalupe', 60520, N'NL', 1322)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (49, N'Diego Diaz', N'Guadalupe', 60520, N'Monterrey', 9873)
INSERT [dbo].[Domicilio] ([iddomicilio], [calle], [colonia], [codigoPostal], [municipio], [numeroExterior]) VALUES (50, N'Torrente', N'Apodaca', 1010101, N'Monterrey', 1010)
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (1, 1, N'LG Electronics', N'CAMJ7812127K7', N'Elaboracion de electrodomesticos')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (4, 4, N'Sams Club', N'SERA901224AU6', N'Venta de productos para el hogar')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (5, 5, N'Hemsa S.A. de C.V.', N'CUSA880612BP4', N'Artículos de papelería, belleza, entretenimiento, hogar y mas')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (6, 6, N'FRP Equipos Industriales, S. de R.L. de C.V.', N'CTBE770312L80', N'Empresa de suministros industriales')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (8, 8, N'Montacargas Galeria', N'CAAA750222V610', N'Empresa de suministros industriales')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (12, 12, N'Servicios Hidraulicos Monterrey', N'LOMA760619VC9', N'Empresa de suministros industriales')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (13, 13, N'Human Staff', N'TERA7204091G4', N'Empresas de Selección y Administración de Personal')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (15, 15, N'Job Fit', N'CARA860714797', N'Líderes innovando soluciones del Capital humano para maximizar los resultados de su empresa con estrategias que identifican, evalúan y motivan a su personal.')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (16, 16, N'Soriana', N'OECA8508257Y6', N'Somos la empresa mexicana líder del sector comercial del país')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (17, 17, N'Femsa', N'SAMA790418B93', N'Creamos Coca-Cola FEMSA, el embotellador público más grande de productos Coca-Cola en el mundo.')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (18, 18, N'Famsa', N'UERA690420QF4', N'Grupo Famsa es una de las empresas mas reconocidas a nivel nacional en la fabricación y comercialización de muebles y articulos para el hogar.')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (19, 19, N'Softtek', N'SARA720806M19', N'Softtek es un proveedor global de servicios orientados a procesos de TI ')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (20, 20, N'Banco Afirme', N'AOFA8206231Y10', N'credito personal, tiene la finalidad de financiar la inversión en capital de trabajo')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (21, 21, N'First Cash', N'CAGA801207JY5', N'Somos una empresa líder internacional de productos financieros al consumidor y ventas al menudeo')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (22, 22, N'Human Quality', N'SEGA7811222I2', N'Una Empresa mexicana dedicada desde hace mas de 20 años a la Administración y Desarrollo del recurso mas importante que posee tu empresa, el Capital Humano.')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (23, 23, N'Keystone Capital Humano', N'KEHA900605I3A', N'Consultoría en Recursos Humanos')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (25, 25, N'Grupo Autofin Monterrey', N'GATA710923UI0', N'Con más de 31 años de experiencia te ofrecemos el mejor sistema de Autofinanciamiento en México con la gama más amplia de marcas de vehículos. ')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (28, 28, N'Innova Sport', N'PESB921010583', N'Innovasport es una empresa regiomontana reconocida como uno de los líderes nacionales en tiendas deportivas en México.')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (34, 34, N'Datazone', N'FEFB930517GV6', N'DataZone es una empresa de AutoZone el giro principal de negocio es el Procesamiento de Información Automotriz')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (35, 35, N'Vallen Proveedora', N'OALB7011235T9', N'El proveedor más grande de Seguridad Industrial en los Estados Unidos y Canadá')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (37, 37, N'The Home Depot', N'BARB750725E98', N'Es la cadena minorista de mejoras para el hogar más grande del mundo')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (38, 38, N'Talento Institucional, S.A. de C.V.', N'LOGB800911PI3', N'Somos una empresa líder en el giro del entretenimiento (Casinos) al rededor de la república mexicana')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (39, 39, N'RAC Mexico Operaciones S de RL de CV', N'TOLB870620749', N'TIENDA LIDER EN RENTA Y VENTA DE MUEBLES Y EQUIPOS ELÉCTRICOS PARA EL HOGAR')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (40, 40, N'Workforce', N'ROAB8909093910', N'Somos una empresa Mexicana con más de 15 años de experiencia y presencia Nacional en el servicio de administración de nómina y selección de personal.')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (42, 42, N'GNC México', N'LUMB860708TW6', N'Empresa líder indiscutible en la comercialización de suplementos nutricionales en México')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (43, 43, N'Casas Javer', N'PEEB9209256N8', N'Construcción y venta de casas')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (45, 45, N'Creciclub', N'SERC890430BF2', N'CREDICLUB es la mejor Micro Financiera en Créditos Grupales de México con mayor crecimiento en su sector')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (46, 46, N'Daltum Systems', N'COCC900720RE4', N'Somos una compañía de consultoría y de TI.')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (47, 47, N'Humantop, S.A. de C.V.', N'LOOC9112295H6', N'Humantop es una empresa de servicios integrales de recursos humanos orientada a desarrollar soluciones y brindar un valor agregado a nuestros clientes en las áreas de administración')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (48, 48, N'Sytecso, S.A. de C.V.', N'SUSC920420NZ3', N'En SYTECSO estamos enfocados a brindar servicios de consultoria en procesos, fábrica de software y desarrollo de aplicaciones')
INSERT [dbo].[Empleos] ([idempleos], [iddomicilio], [razonSocial], [RFC], [giroDeEmpresa]) VALUES (50, 50, N'EARLSA', N'TOCC730709SB5', N'Servicios de Administración, Reclutamiento y Selección del personal, así como la asesoría Fiscal y Contable a otras compañías de la región y país, garantizando siempre un excelente servicio.')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (1, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (2, N'Buscando empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (3, N'Buscando empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (4, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (5, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (6, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (7, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (8, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (9, N'Buscando empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (10, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (11, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (12, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (13, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (14, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (15, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (16, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (17, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (18, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (19, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (20, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (21, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (22, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (23, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (24, N'Buscando empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (25, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (26, N'Buscando empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (27, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (28, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (29, N'Buscando empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (30, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (31, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (32, N'Buscando empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (33, N'Buscando empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (34, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (35, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (36, N'Buscando empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (37, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (38, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (39, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (40, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (41, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (42, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (43, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (44, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (45, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (46, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (47, N'No disponible')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (48, N'Ofreciendo empleo')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (49, N'Actualmente trabajando')
INSERT [dbo].[Estados] ([idestado], [tipoDeEstado]) VALUES (50, N'No disponible')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (2, N'Licenciatura', N'UANL')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (3, N'Licenciatura', N'UNAM')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (7, N'Licenciatura', N'UANL')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (9, N'Licenciatura', N'UDG')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (10, N'Licenciatura', N'Tec de Monterrey')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (11, N'Bachillerato', N'UDEM')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (14, N'Maestria', N'UANL')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (24, N'Licenciatura', N'UVM')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (26, N'Licenciatura', N'UMM')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (27, N'Bachillerato', N'UDEM')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (29, N'Licenciatura', N'Tec de Monterrey')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (30, N'Bachillerato', N'Tec Milenio')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (31, N'Licenciatura', N'Universidad de la Salle')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (32, N'Licenciatura', N'UVM')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (33, N'Bachillerato', N'Universidad Veracruzana')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (36, N'Licenciatura', N'UNAM')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (41, N'Licenciatura', N'UNIDEC')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (44, N'Licenciatura', N'UANL')
INSERT [dbo].[NivelEstudio] ([idnivelEstudio], [gradoDeEstudio], [institucion]) VALUES (49, N'Maestria', N'Tec de Monterrey')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Jesus')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Jerson')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Alan')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Abelardo')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Alfonso')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Arely')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Alejandra')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Axel')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Ana')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Ary')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Antonio')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Alejandro')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Alex')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Arely')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Adolfo')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Adrian')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Agustin')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Aitor')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Alberto')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Alexis')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Adriana')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Aida')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Alicia')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Anabel')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Andrea')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Benito')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Bastian')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Benjamin')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Bruno')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Brandon')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Belen')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Bella')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Belinda')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Bibiana')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Beatriz')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Blanca')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Brenda')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Betty')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Berta')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Bernabe')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Bernardo')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Byron')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Bruce')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Bianca')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Camila')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Carlos')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Carla')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Carolina')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Casimiro')
INSERT [dbo].[nombres] ([nombre]) VALUES (N'Cecilia')
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (1, N'Ofreciendo empleo', N'No disponible', 1)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (2, N'Buscando empleo', N'Actualmente trabajando', 2)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (3, N'Buscando empleo', N'Actualmente trabajando', 3)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (4, N'No disponible', N'Ofreciendo empleo', 4)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (5, N'Ofreciendo empleo', N'No disponible', 5)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (6, N'No disponible', N'Ofreciendo empleo', 6)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (7, N'Actualmente trabajando', N'Buscando empleo', 7)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (8, N'No disponible', N'Ofreciendo empleo', 8)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (9, N'Buscando empleo', N'Actualmente trabajando', 9)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (10, N'Actualmente trabajando', N'Buscando empleo', 10)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (11, N'Actualmente trabajando', N'Buscando empleo', 11)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (12, N'No disponible', N'Ofreciendo empleo', 12)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (13, N'No disponible', N'Ofreciendo empleo', 13)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (14, N'Actualmente trabajando', N'Buscando empleo', 14)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (15, N'Ofreciendo empleo', N'No disponible', 15)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (16, N'Ofreciendo empleo', N'No disponible', 16)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (17, N'Ofreciendo empleo', N'No disponible', 17)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (18, N'Ofreciendo empleo', N'No disponible', 18)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (19, N'No disponible', N'Ofreciendo empleo', 19)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (20, N'Ofreciendo empleo', N'No disponible', 20)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (21, N'No disponible', N'Ofreciendo empleo', 21)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (22, N'No disponible', N'Ofreciendo empleo', 22)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (23, N'Ofreciendo empleo', N'No disponible', 23)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (24, N'Buscando empleo', N'Actualmente trabajando', 24)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (25, N'No disponible', N'Ofreciendo empleo', 25)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (26, N'Buscando empleo', N'Actualmente trabajando', 26)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (27, N'Actualmente trabajando', N'Buscando empleo', 27)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (28, N'Ofreciendo empleo', N'No disponible', 28)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (29, N'Buscando empleo', N'Alctualmente trabajando', 29)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (30, N'Actualmente trabajando', N'Buscando empleo', 30)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (31, N'Actualmente trabajando', N'Buscando empleo', 31)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (32, N'Buscando empleo', N'Actualmente trabajando', 32)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (33, N'Buscando empleo', N'Actualmente trabajando', 33)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (34, N'Ofreciendo empleo', N'No disponible', 34)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (35, N'Ofreciendo empleo', N'No disponible', 35)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (36, N'Buscando empleo', N'Actualmente trabajando', 36)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (37, N'No disponible', N'Ofreciendo empleo', 37)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (38, N'No disponible', N'Ofreciendo empleo', 38)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (39, N'Ofreciendo empleo', N'No disponible', 39)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (40, N'Ofreciendo empleo', N'No disponible', 40)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (41, N'Actualmente trabajando', N'Buscando empleo', 41)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (42, N'Ofreciendo empleo', N'No disponible', 42)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (43, N'No disponible', N'Ofreciendo empleo', 43)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (44, N'Actualmente trabajando', N'Buscando empleo', 44)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (45, N'Ofreciendo empleo', N'No disponible', 45)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (46, N'No disponible', N'Ofreciendo empleo', 46)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (47, N'No disponible', N'Ofreciendo empleo', 47)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (48, N'Ofreciendo empleo', N'No disponible', 48)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (49, N'Actualmente trabajando', N'Buscando empleo', 49)
INSERT [dbo].[PosiblesEstados] ([idPosiblesEstados], [estadoInicial], [estadoFinal], [idestado]) VALUES (50, N'No disponible', N'Ofreciendo empleo', 50)
INSERT [dbo].[Tutores] ([idtutores], [usuario], [iddatosGen], [iddomicilio], [idempleos], [idhistorial]) VALUES (1, N'jescarm', 1, 1, 1, NULL)
INSERT [dbo].[Tutores] ([idtutores], [usuario], [iddatosGen], [iddomicilio], [idempleos], [idhistorial]) VALUES (4, N'abesesr', 4, 4, 4, NULL)
INSERT [dbo].[Tutores] ([idtutores], [usuario], [iddatosGen], [iddomicilio], [idempleos], [idhistorial]) VALUES (5, N'alfcuas', 5, 5, 5, NULL)
INSERT [dbo].[Tutores] ([idtutores], [usuario], [iddatosGen], [iddomicilio], [idempleos], [idhistorial]) VALUES (6, N'arecarh', 6, 6, 6, NULL)
INSERT [dbo].[Tutores] ([idtutores], [usuario], [iddatosGen], [iddomicilio], [idempleos], [idhistorial]) VALUES (8, N'axecara', 8, 8, 8, NULL)
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'abesesr')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'alfcuas')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'arecarh')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'axecara')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponible] ([estadoFinal], [usuario]) VALUES (N'No disponible', N'jescarm')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
INSERT [dbo].[Tutores_No_Disponibles] ([estadoFinal]) VALUES (N'No disponible')
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Becarios__9AFF8FC61D109997]    Script Date: 10/11/2019 09:24:55 p. m. ******/
ALTER TABLE [dbo].[Becarios] ADD UNIQUE NONCLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DatosGen__2CDDD194CF65533E]    Script Date: 10/11/2019 09:24:55 p. m. ******/
ALTER TABLE [dbo].[DatosGen] ADD UNIQUE NONCLUSTERED 
(
	[curp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Empleos__17BADCA0C26FAC20]    Script Date: 10/11/2019 09:24:55 p. m. ******/
ALTER TABLE [dbo].[Empleos] ADD UNIQUE NONCLUSTERED 
(
	[razonSocial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Empleos__CAFFA85E3A7C80BF]    Script Date: 10/11/2019 09:24:55 p. m. ******/
ALTER TABLE [dbo].[Empleos] ADD UNIQUE NONCLUSTERED 
(
	[RFC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Tutores__9AFF8FC6134C510D]    Script Date: 10/11/2019 09:24:55 p. m. ******/
ALTER TABLE [dbo].[Tutores] ADD UNIQUE NONCLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
