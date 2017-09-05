USE [master]
GO
/****** Object:  Database [Tyler1]    Script Date: 04/09/2017 09:52:57 p.m. ******/
CREATE DATABASE [Tyler1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tyler1', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Tyler1.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Tyler1_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Tyler1_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Tyler1] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tyler1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tyler1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tyler1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tyler1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tyler1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tyler1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tyler1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tyler1] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Tyler1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tyler1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tyler1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tyler1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tyler1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tyler1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tyler1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tyler1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tyler1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Tyler1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tyler1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tyler1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tyler1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tyler1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tyler1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tyler1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tyler1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tyler1] SET  MULTI_USER 
GO
ALTER DATABASE [Tyler1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tyler1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tyler1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tyler1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Tyler1]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 04/09/2017 09:52:57 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[asdf] [numeric](18, 0) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 04/09/2017 09:52:57 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_2](
	[ID] [uniqueidentifier] NULL,
	[Nombre] [varchar](max) NULL,
	[Apellido Paterno] [varchar](max) NULL,
	[Apellido Materno] [varchar](max) NULL,
	[Nombre_Articulo] [varchar](max) NULL,
	[Monto_Total] [money] NULL,
	[Cantidad_De_Articulos] [nchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_3]    Script Date: 04/09/2017 09:52:57 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_3](
	[ID] [uniqueidentifier] NULL,
	[Nombres] [varchar](50) NULL,
	[Apellido_Paterno] [varchar](50) NULL,
	[Apellido_Materno] [varchar](50) NULL,
	[Numero_Orden] [nchar](10) NULL,
	[Total_Comida] [nchar](10) NULL,
	[Total_Propina] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table_4]    Script Date: 04/09/2017 09:52:57 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_4](
	[ID] [uniqueidentifier] NULL,
	[Nombres] [nvarchar](50) NULL,
	[Apellido_Paterno] [nvarchar](50) NULL,
	[Apellido_Materno] [nvarchar](50) NULL,
	[Numero_Pedido] [int] NULL,
	[Direccion] [text] NULL,
	[Monto_Pagar] [money] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_5]    Script Date: 04/09/2017 09:52:57 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_5](
	[ID] [uniqueidentifier] NULL,
	[Nombres_Empleado] [nvarchar](50) NULL,
	[Apellido_Paterno_Empleado] [nvarchar](50) NULL,
	[Apellido_Materno_Empleado] [nvarchar](50) NULL,
	[Horas_Trabajadas] [float] NULL,
	[Descanso] [timestamp] NULL,
	[Paga] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_6]    Script Date: 04/09/2017 09:52:57 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_6](
	[ID] [uniqueidentifier] NULL,
	[Nombre_Articulo] [nvarchar](50) NULL,
	[Medida_Inferior] [float] NULL,
	[Medida_Superior] [float] NULL,
	[Medida_Lateral] [float] NULL,
	[Precio] [money] NULL,
	[Precio+Iva] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_7]    Script Date: 04/09/2017 09:52:57 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_7](
	[ID] [uniqueidentifier] NULL,
	[Fecha_Compra] [date] NULL,
	[Cantidad_De_Compras] [tinyint] NULL,
	[Cantidad_A_Pagar] [money] NULL,
	[Pagado] [bit] NULL,
	[Deuda] [decimal](18, 0) NULL,
	[Nombres] [nvarchar](50) NULL,
	[Apellidos] [nvarchar](50) NULL
) ON [PRIMARY]

GO
USE [master]
GO
ALTER DATABASE [Tyler1] SET  READ_WRITE 
GO
