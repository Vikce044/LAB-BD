USE [master]
GO
/****** Object:  Database [Tyler1]    Script Date: 13/11/2017 11:35:57 a.m. ******/
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
/****** Object:  Table [dbo].[alergias]    Script Date: 13/11/2017 11:35:57 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[alergias](
	[id_alergia] [int] NOT NULL,
	[es_alergic] [tinyint] NOT NULL,
	[alerg_medicamento] [varchar](50) NOT NULL,
	[id_user] [bigint] NOT NULL,
 CONSTRAINT [PK_alergias] PRIMARY KEY CLUSTERED 
(
	[id_alergia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[consultas]    Script Date: 09/10/2017 09:36:44 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[consultas](
	[id_consultas] [int] NOT NULL,
	[id_paciente] [int] NOT NULL,
	[id_dientes] [int] NOT NULL,
	[diagnostico] [varchar](255) NOT NULL,
	[plan_tratamineto] [varchar](255) NOT NULL,
	[evaluacion] [varchar](255) NOT NULL,
	[costo] [int] NOT NULL,
	[duracion] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[enfermedad_actual]    Script Date: 09/10/2017 09:36:44 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[enfermedad_actual](
	[id_enfermedad_act] [int] NOT NULL,
	[enfermedad_act] [varchar](20) NOT NULL,
	[Medicamento] [varchar](20) NOT NULL,
	[tiempo] [varchar](20) NOT NULL,
	[id_user] [bigint] NOT NULL,
 CONSTRAINT [PK_enfermedad_actual] PRIMARY KEY CLUSTERED 
(
	[id_enfermedad_act] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[enfermedades]    Script Date: 09/10/2017 09:36:44 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[enfermedades](
	[id_enfermedades] [int] NOT NULL,
	[Gastritis] [varchar](3) NOT NULL,
	[Dific_respirar] [varchar](3) NOT NULL,
	[Hepatitis] [varchar](3) NOT NULL,
	[Alta_presion_arterial] [varchar](3) NOT NULL,
	[Diabetes] [varchar](3) NOT NULL,
	[Hemorragias] [varchar](3) NOT NULL,
	[Tiroides] [varchar](3) NOT NULL,
	[Convulsiones] [varchar](3) NOT NULL,
	[Desmayos] [varchar](3) NOT NULL,
	[Anemia] [varchar](3) NOT NULL,
	[regeneracion_herida_lenta] [varchar](3) NOT NULL,
	[VIH] [varchar](3) NOT NULL,
	[enfermedad_del_corazon] [varchar](30) NOT NULL,
	[Baja_presion_arterial] [varchar](3) NOT NULL,
	[Otros] [varchar](30) NOT NULL,
	[id_user] [bigint] NOT NULL,
 CONSTRAINT [PK_enfermedades] PRIMARY KEY CLUSTERED 
(
	[id_enfermedades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[pacientes]    Script Date: 09/10/2017 09:36:44 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[pacientes](
	[Id_paciente] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[ocupacion] [varchar](20) NOT NULL,
	[Edad] [int] NOT NULL,
	[Fecha_nac] [date] NOT NULL,
	[Persona_refiere] [varchar](50) NOT NULL,
	[Id_telefonos] [int] NOT NULL,
	[correo] [varchar](40) NOT NULL,
	[id_enfermedad_act] [int] NOT NULL,
	[id_alergia] [int] NOT NULL,
	[enfermedad_signos] [varchar](15) NOT NULL,
	[toma_aspirinas] [varchar](3) NOT NULL,
	[m_embarazo] [varchar](10) NOT NULL,
 CONSTRAINT [PK_pacientes] PRIMARY KEY CLUSTERED 
(
	[Id_paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[telefonos]    Script Date: 09/10/2017 09:36:44 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telefonos](
	[id_telefonos] [int] NOT NULL,
	[T_casa] [int] NOT NULL,
	[T_celular] [int] NOT NULL,
	[T_familiar] [int] NOT NULL,
	[id_user] [bigint] NOT NULL,
 CONSTRAINT [PK_telefonos] PRIMARY KEY CLUSTERED 
(
	[id_telefonos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 09/10/2017 09:36:44 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [bigint] NOT NULL,
	[nombre] [varchar](255) NOT NULL,
	[login] [varchar](255) NOT NULL,
	[pwd] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[alergias]  WITH CHECK ADD  CONSTRAINT [FK_alergias_pacientes] FOREIGN KEY([id_alergia])
REFERENCES [dbo].[pacientes] ([Id_paciente])
GO
ALTER TABLE [dbo].[alergias] CHECK CONSTRAINT [FK_alergias_pacientes]
GO
ALTER TABLE [dbo].[alergias]  WITH CHECK ADD  CONSTRAINT [FK_alergias_users] FOREIGN KEY([id_user])
REFERENCES [dbo].[users] ([id])
GO
ALTER TABLE [dbo].[alergias] CHECK CONSTRAINT [FK_alergias_users]
GO
ALTER TABLE [dbo].[consultas]  WITH CHECK ADD  CONSTRAINT [FK_consultas_pacientes] FOREIGN KEY([id_consultas])
REFERENCES [dbo].[pacientes] ([Id_paciente])
GO
ALTER TABLE [dbo].[consultas] CHECK CONSTRAINT [FK_consultas_pacientes]
GO
ALTER TABLE [dbo].[enfermedades]  WITH CHECK ADD  CONSTRAINT [FK_enfermedades_enfermedad_actual] FOREIGN KEY([id_enfermedades])
REFERENCES [dbo].[enfermedad_actual] ([id_enfermedad_act])
GO
ALTER TABLE [dbo].[enfermedades] CHECK CONSTRAINT [FK_enfermedades_enfermedad_actual]
GO
ALTER TABLE [dbo].[pacientes]  WITH CHECK ADD  CONSTRAINT [FK_pacientes_alergias] FOREIGN KEY([id_alergia])
REFERENCES [dbo].[alergias] ([id_alergia])
GO
ALTER TABLE [dbo].[pacientes] CHECK CONSTRAINT [FK_pacientes_alergias]
GO
ALTER TABLE [dbo].[pacientes]  WITH CHECK ADD  CONSTRAINT [FK_pacientes_enfermedades] FOREIGN KEY([Id_paciente])
REFERENCES [dbo].[enfermedades] ([id_enfermedades])
GO
ALTER TABLE [dbo].[pacientes] CHECK CONSTRAINT [FK_pacientes_enfermedades]
GO
ALTER TABLE [dbo].[pacientes]  WITH CHECK ADD  CONSTRAINT [FK_pacientes_telefonos] FOREIGN KEY([Id_telefonos])
REFERENCES [dbo].[telefonos] ([id_telefonos])
GO
ALTER TABLE [dbo].[pacientes] CHECK CONSTRAINT [FK_pacientes_telefonos]
GO
USE [master]
GO
ALTER DATABASE [CONSULTORIO] SET  READ_WRITE 
GO