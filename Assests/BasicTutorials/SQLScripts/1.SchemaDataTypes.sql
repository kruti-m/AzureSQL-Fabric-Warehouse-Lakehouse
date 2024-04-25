/****** Object:  Schema 
[Sales] 
******/
CREATE SCHEMA [Sales]
GO
/****** Object:  UserDefinedDataType 
[dbo].[AccountNumber]
[dbo].[Flag]
[dbo].[Name]
[dbo].[NameStyle]
[dbo].[OrderNumber]
[dbo].[Phone]  
******/
CREATE TYPE [dbo].[AccountNumber] FROM [nvarchar](15) NULL
GO
CREATE TYPE [dbo].[Flag] FROM [bit] NOT NULL
GO
CREATE TYPE [dbo].[Name] FROM [nvarchar](50) NULL
GO
CREATE TYPE [dbo].[NameStyle] FROM [bit] NOT NULL
GO
CREATE TYPE [dbo].[OrderNumber] FROM [nvarchar](25) NULL
GO
CREATE TYPE [dbo].[Phone] FROM [nvarchar](25) NULL
GO