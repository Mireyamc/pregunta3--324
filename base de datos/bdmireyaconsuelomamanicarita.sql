USE [master]
GO
/****** Object:  Database [bdmireyaconsuelomamanicarita]    Script Date: 22/04/2024 20:43:31 ******/
CREATE DATABASE [bdmireyaconsuelomamanicarita]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bdmireyaconsuelomamanicarita', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bdmireyaconsuelomamanicarita.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bdmireyaconsuelomamanicarita_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bdmireyaconsuelomamanicarita_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bdmireyaconsuelomamanicarita].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET ARITHABORT OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET RECOVERY FULL 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET  MULTI_USER 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bdmireyaconsuelomamanicarita', N'ON'
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET QUERY_STORE = OFF
GO
USE [bdmireyaconsuelomamanicarita]
GO
/****** Object:  Table [dbo].[cuenta]    Script Date: 22/04/2024 20:43:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuenta](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](255) NOT NULL,
	[saldo] [int] NOT NULL,
	[fecha_cre] [datetime] NOT NULL,
	[id_us] [int] NOT NULL,
	[activo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaccion]    Script Date: 22/04/2024 20:43:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_cuenta] [int] NOT NULL,
	[id_us] [int] NOT NULL,
	[fecha_h] [datetime] NOT NULL,
	[tipo] [varchar](255) NOT NULL,
	[monto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 22/04/2024 20:43:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](1000) NOT NULL,
	[tipo_us] [varchar](255) NOT NULL,
	[ci] [varchar](255) NOT NULL,
	[fecha] [date] NOT NULL,
	[telefono] [int] NOT NULL,
	[pwd] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cuenta] ADD  DEFAULT ((0)) FOR [saldo]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT ('cliente') FOR [tipo_us]
GO
ALTER TABLE [dbo].[cuenta]  WITH CHECK ADD  CONSTRAINT [FK_usuario_id_us_cuenta] FOREIGN KEY([id_us])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[cuenta] CHECK CONSTRAINT [FK_usuario_id_us_cuenta]
GO
ALTER TABLE [dbo].[transaccion]  WITH CHECK ADD  CONSTRAINT [FK_cuenta_id_cuenta_transaccion] FOREIGN KEY([id_cuenta])
REFERENCES [dbo].[cuenta] ([id])
GO
ALTER TABLE [dbo].[transaccion] CHECK CONSTRAINT [FK_cuenta_id_cuenta_transaccion]
GO
ALTER TABLE [dbo].[transaccion]  WITH CHECK ADD  CONSTRAINT [FK_usuario_id_us_transaccion] FOREIGN KEY([id_us])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[transaccion] CHECK CONSTRAINT [FK_usuario_id_us_transaccion]
GO
USE [master]
GO
ALTER DATABASE [bdmireyaconsuelomamanicarita] SET  READ_WRITE 
GO
