USE [master]
GO
/****** Object:  Database [CashRegisterDB]    Script Date: 8/30/2018 11:56:25 AM ******/
CREATE DATABASE [CashRegisterDB]
 CONTAINMENT = NONE


GO
ALTER DATABASE [CashRegisterDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CashRegisterDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CashRegisterDB] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [CashRegisterDB] SET ANSI_NULLS ON 
GO
ALTER DATABASE [CashRegisterDB] SET ANSI_PADDING ON 
GO
ALTER DATABASE [CashRegisterDB] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [CashRegisterDB] SET ARITHABORT ON 
GO
ALTER DATABASE [CashRegisterDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CashRegisterDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CashRegisterDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CashRegisterDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CashRegisterDB] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [CashRegisterDB] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [CashRegisterDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CashRegisterDB] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [CashRegisterDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CashRegisterDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CashRegisterDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CashRegisterDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CashRegisterDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CashRegisterDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CashRegisterDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CashRegisterDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CashRegisterDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CashRegisterDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CashRegisterDB] SET  MULTI_USER 
GO
ALTER DATABASE [CashRegisterDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CashRegisterDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CashRegisterDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CashRegisterDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CashRegisterDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CashRegisterDB] SET QUERY_STORE = OFF
GO
USE [CashRegisterDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [CashRegisterDB]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 8/30/2018 11:56:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[IsWeight] [bit] NOT NULL,
	[Price] [float] NOT NULL,
	[QuantityCoupon] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([Id], [Name], [IsWeight], [Price], [QuantityCoupon]) VALUES (1, N'item1                                             ', 0, 1, 3)
INSERT [dbo].[Item] ([Id], [Name], [IsWeight], [Price], [QuantityCoupon]) VALUES (2, N'item2                                             ', 1, 1.3, 0)
INSERT [dbo].[Item] ([Id], [Name], [IsWeight], [Price], [QuantityCoupon]) VALUES (3, N'item3                                             ', 1, 2.5, 0)
INSERT [dbo].[Item] ([Id], [Name], [IsWeight], [Price], [QuantityCoupon]) VALUES (4, N'item4                                             ', 0, 3.2, 5)
SET IDENTITY_INSERT [dbo].[Item] OFF
USE [master]
GO
ALTER DATABASE [CashRegisterDB] SET  READ_WRITE 
GO
