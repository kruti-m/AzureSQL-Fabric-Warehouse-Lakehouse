
/****** Drop Object if Exists:
Table [Sales].[SalesOrderHeader]    
******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sales].[SalesOrderHeader]') AND type in (N'U'))
DROP TABLE [Sales].[SalesOrderHeader]
GO
/****** Object:  
Table [Sales].[SalesOrderHeader]    
******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SalesOrderHeader](
	[SalesOrderID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NULL,
	[Status] [tinyint] NOT NULL,
	[SalesOrderNumber] [nvarchar](25) NOT NULL,
	[PurchaseOrderNumber] [dbo].[OrderNumber] NULL,
	[AccountNumber] [dbo].[AccountNumber] NULL,
	[CustomerID] [int] NOT NULL,
	[ShipMethod] [nvarchar](50) NOT NULL,
	[SubTotal] [money] NOT NULL,
	[TaxAmt] [money] NOT NULL,
	[Freight] [money] NOT NULL,
	[TotalDue] [money] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[ShipToAddressType] [nvarchar](50) NULL,
 CONSTRAINT [PK_SalesOrderHeader] PRIMARY KEY CLUSTERED 
(
	[SalesOrderID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Insert Scripts:  
Table [Sales].[SalesOrderHeader]
******/
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71774, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71774', N'PO348186287', N'10-4020-000609', 29847, N'CARGO TRANSPORT 5', 880.3484, 70.4279, 22.0087, 972.7850, N'89e42cdc-8506-48a2-b89b-eb3e64e3554e', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71780, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71780', N'PO19604173239', N'10-4020-000340', 30113, N'CARGO TRANSPORT 5', 38418.6895, 3073.4952, 960.4672, 42452.6519, N'a47665d2-7ac9-4cf3-8a8b-2a3883554284', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71782, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71782', N'PO19372114749', N'10-4020-000582', 29485, N'CARGO TRANSPORT 5', 39785.3304, 3182.8264, 994.6333, 43962.7901, N'f1be45a5-5c57-4a50-93c6-5f8be44cb7cb', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71783, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71783', N'PO19343113609', N'10-4020-000024', 29957, N'CARGO TRANSPORT 5', 83858.4261, 6708.6741, 2096.4607, 92663.5609, N'7db2329e-6446-42a8-8915-9c8370b68ed8', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71784, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71784', N'PO19285135919', N'10-4020-000448', 29736, N'CARGO TRANSPORT 5', 108561.8317, 8684.9465, 2714.0458, 119960.8240, N'ca31f324-2c32-4f8d-95eb-596e7f343027', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71796, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71796', N'PO17052159664', N'10-4020-000420', 29660, N'CARGO TRANSPORT 5', 57634.6342, 4610.7707, 1440.8659, 63686.2708, N'917ef5ba-f32d-4563-8588-66db0bcdc846', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71797, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71797', N'PO16501134889', N'10-4020-000142', 29796, N'CARGO TRANSPORT 5', 78029.6898, 6242.3752, 1950.7422, 86222.8072, N'bb3fee84-c8bf-4dd2-bcca-675ab6a11c38', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71815, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71815', N'PO13021155785', N'10-4020-000276', 30089, N'CARGO TRANSPORT 5', 1141.5782, 91.3263, 28.5395, 1261.4440, N'2aa5f39b-1096-4a4b-b17b-f10504a397ce', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71816, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71816', N'PO12992180445', N'10-4020-000295', 30027, N'CARGO TRANSPORT 5', 3398.1659, 271.8533, 84.9541, 3754.9733, N'e3c189e7-98de-4c40-b6c2-0d1d13f9bb33', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71831, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71831', N'PO10295111084', N'10-4020-000322', 30019, N'CARGO TRANSPORT 5', 2016.3408, 161.3073, 50.4085, 2228.0566, N'625d76fc-c26f-4149-bf24-939fb2bccd77', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71832, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71832', N'PO10353140756', N'10-4020-000088', 29922, N'CARGO TRANSPORT 5', 35775.2113, 2862.0169, 894.3803, 39531.6085, N'addb8620-432a-456e-8470-1bedd4bc3457', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71845, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71845', N'PO2697119362', N'10-4020-000187', 29938, N'CARGO TRANSPORT 5', 41622.0511, 3329.7641, 1040.5513, 45992.3665, N'e68f7ee9-c581-45cd-9c4f-386aeda74d84', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71846, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71846', N'PO2378131604', N'10-4020-000635', 30102, N'CARGO TRANSPORT 5', 2453.7645, 196.3012, 61.3441, 2711.4098, N'a86d90ad-d1c0-440d-9a57-5b763bf18234', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71856, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71856', N'PO16530177647', N'10-4020-000601', 30033, N'CARGO TRANSPORT 5', 602.1946, 48.1756, 15.0549, 665.4251, N'05fee073-0640-4a3c-914d-fe4ae6da3d43', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71858, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71858', N'PO16153112278', N'10-4020-000186', 29653, N'CARGO TRANSPORT 5', 13823.7083, 1105.8967, 345.5927, 15275.1977, N'5ef091e1-a0af-437d-85ed-0b557c7923f7', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71863, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71863', N'PO16124166561', N'10-4020-000649', 29975, N'CARGO TRANSPORT 5', 3324.2759, 265.9421, 83.1069, 3673.3249, N'3ed03b56-a4bf-4872-9471-bc6c7893eab7', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71867, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71867', N'PO13050111529', N'10-4020-000160', 29644, N'CARGO TRANSPORT 5', 1059.3100, 84.7448, 26.4828, 1170.5376, N'29743c1b-d3af-4cfe-bd2e-6de436e3398f', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71885, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71885', N'PO6119130779', N'10-4020-000268', 29612, N'CARGO TRANSPORT 5', 550.3860, 44.0309, 13.7597, 608.1766, N'caad090d-56a6-444e-af24-7bee7605f120', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71895, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71895', N'PO3770176273', N'10-4020-000151', 29584, N'CARGO TRANSPORT 5', 246.7392, 19.7391, 6.1685, 272.6468, N'07a17c0a-7f9a-4413-a035-519e5a4573be', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71897, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71897', N'PO4785152479', N'10-4020-000223', 29877, N'CARGO TRANSPORT 5', 12685.8899, 1014.8712, 317.1472, 14017.9083, N'f88b3458-e0cf-4248-9b72-1805351463b2', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71898, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71898', N'PO5713190501', N'10-4020-000052', 29932, N'CARGO TRANSPORT 5', 63980.9884, 5118.4791, 1599.5247, 70698.9922, N'96f84d24-3355-43d2-b5a3-55e97c17e58c', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71899, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71899', N'PO4582142611', N'10-4020-000025', 29568, N'CARGO TRANSPORT 5', 2415.6727, 193.2538, 60.3918, 2669.3183, N'31d41e8f-6f43-4cae-bee3-3cccb262f231', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71902, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71902', N'PO5539125166', N'10-4020-000061', 29929, N'CARGO TRANSPORT 5', 74058.8078, 5924.7046, 1851.4702, 81834.9826, N'137850d6-efdf-4de1-920f-5757a86cdaaf', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71915, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71915', N'PO2349143275', N'10-4020-000006', 29638, N'CARGO TRANSPORT 5', 2137.2310, 170.9785, 53.4308, 2361.6403, N'0bcb3d9c-9008-4b99-bb45-928adae7be6b', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71917, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71917', N'PO29111718', N'10-4020-000304', 30025, N'CARGO TRANSPORT 5', 40.9045, 3.2724, 1.0226, 45.1995, N'6e903ea3-1b9e-4232-94c3-81c15669f830', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71920, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71920', N'PO4002189853', N'10-4020-000674', 29982, N'CARGO TRANSPORT 5', 2980.7929, 238.4634, 74.5198, 3293.7761, N'6228c9cb-1cab-4e32-98ca-d0dae5fe563e', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71923, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71923', N'PO174173096', N'10-4020-000277', 29781, N'CARGO TRANSPORT 5', 106.5408, 8.5233, 2.6635, 117.7276, N'f9899f3f-b4b6-4756-b013-96c16be20427', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71935, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71935', N'PO7946145876', N'10-4020-000438', 29531, N'CARGO TRANSPORT 5', 6634.2961, 530.7437, 165.8574, 7330.8972, N'7033c6ec-b12c-45bc-bd96-56efde4c7dd0', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71936, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71936', N'PO8671170385', N'10-4020-000502', 30050, N'CARGO TRANSPORT 5', 98278.6910, 7862.2953, 2456.9673, 108597.9536, N'119db56a-a97e-414d-b41c-64886fc50ab7', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71938, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71938', N'PO8468183315', N'10-4020-000016', 29546, N'CARGO TRANSPORT 5', 88812.8625, 7105.0290, 2220.3216, 98138.2131, N'a36ee74a-cf0d-4024-a1ce-4eaffd1f85f0', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
	INSERT [Sales].[SalesOrderHeader] ([SalesOrderID], [OrderDate], [DueDate], [ShipDate], [Status], [SalesOrderNumber], [PurchaseOrderNumber], [AccountNumber], [CustomerID], [ShipMethod], [SubTotal], [TaxAmt], [Freight], [TotalDue], [rowguid], [ModifiedDate], [ShipToAddressType]) VALUES (71946, CAST(N'2008-06-01T00:00:00.000' AS DateTime), CAST(N'2008-06-13T00:00:00.000' AS DateTime), CAST(N'2008-06-08T00:00:00.000' AS DateTime), 5, N'SO71946', N'PO8961158629', N'10-4020-000466', 29741, N'CARGO TRANSPORT 5', 38.9536, 3.1163, 0.9738, 43.0437, N'10e3129d-657f-46f9-86f5-cedd79b1901c', CAST(N'2008-06-08T00:00:00.000' AS DateTime), N'Main Office')
	GO
/****** Object:  Default Constraints for SalesOrderHeader Table
[OrderDate]
[Status]
[SubTotal]
[TaxAmt]
[Freight]
[rowguid]
[ModifiedDate]
[DueDate]>=[OrderDate]
[Freight]>=(0.00)
[ShipDate]>=[OrderDate] OR [ShipDate] IS NULL
[Status]>=(0) AND [Status]<=(8)
[SubTotal]>=(0.00)
[TaxAmt]>=(0.00)
******/
	ALTER TABLE [Sales].[SalesOrderHeader] ADD  CONSTRAINT [DF_SalesOrderHeader_OrderDate]  DEFAULT (getdate()) FOR [OrderDate]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] ADD  CONSTRAINT [DF_SalesOrderHeader_Status]  DEFAULT ((1)) FOR [Status]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] ADD  CONSTRAINT [DF_SalesOrderHeader_SubTotal]  DEFAULT ((0.00)) FOR [SubTotal]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] ADD  CONSTRAINT [DF_SalesOrderHeader_TaxAmt]  DEFAULT ((0.00)) FOR [TaxAmt]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] ADD  CONSTRAINT [DF_SalesOrderHeader_Freight]  DEFAULT ((0.00)) FOR [Freight]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] ADD  CONSTRAINT [DF_SalesOrderHeader_rowguid]  DEFAULT (newid()) FOR [rowguid]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] ADD  CONSTRAINT [DF_SalesOrderHeader_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader]  WITH CHECK ADD  CONSTRAINT [CK_SalesOrderHeader_DueDate] CHECK  (([DueDate]>=[OrderDate]))
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] CHECK CONSTRAINT [CK_SalesOrderHeader_DueDate]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader]  WITH CHECK ADD  CONSTRAINT [CK_SalesOrderHeader_Freight] CHECK  (([Freight]>=(0.00)))
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] CHECK CONSTRAINT [CK_SalesOrderHeader_Freight]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader]  WITH CHECK ADD  CONSTRAINT [CK_SalesOrderHeader_ShipDate] CHECK  (([ShipDate]>=[OrderDate] OR [ShipDate] IS NULL))
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] CHECK CONSTRAINT [CK_SalesOrderHeader_ShipDate]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader]  WITH CHECK ADD  CONSTRAINT [CK_SalesOrderHeader_Status] CHECK  (([Status]>=(0) AND [Status]<=(8)))
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] CHECK CONSTRAINT [CK_SalesOrderHeader_Status]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader]  WITH CHECK ADD  CONSTRAINT [CK_SalesOrderHeader_SubTotal] CHECK  (([SubTotal]>=(0.00)))
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] CHECK CONSTRAINT [CK_SalesOrderHeader_SubTotal]
	GO
	ALTER TABLE [Sales].[SalesOrderHeader]  WITH CHECK ADD  CONSTRAINT [CK_SalesOrderHeader_TaxAmt] CHECK  (([TaxAmt]>=(0.00)))
	GO
	ALTER TABLE [Sales].[SalesOrderHeader] CHECK CONSTRAINT [CK_SalesOrderHeader_TaxAmt]
	GO
/****** Object:  Foreign Key for SalesOrderHeader Table with Customer
[CustomerID]
******/
	ALTER TABLE [SalesLT].[SalesOrderHeader]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderHeader_Customer_CustomerID] FOREIGN KEY([CustomerID])
	REFERENCES [SalesLT].[Customer] ([CustomerID])
	GO
	ALTER TABLE [SalesLT].[SalesOrderHeader] CHECK CONSTRAINT [FK_SalesOrderHeader_Customer_CustomerID]
	GO