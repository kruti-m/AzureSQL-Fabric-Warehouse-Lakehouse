
/****** Drop Object if Exists:  
Table [Sales].[SalesOrderDetail]    
******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sales].[SalesOrderDetail]') AND type in (N'U'))
DROP TABLE [Sales].[SalesOrderDetail]
GO
/****** Object:  
Table [Sales].[SalesOrderDetail]    
******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[SalesOrderDetail](
	[SalesOrderID] [int] NOT NULL,
	[SalesOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[OrderQty] [smallint] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitPriceDiscount] [money] NOT NULL,
	[LineTotal] [numeric](38, 6) NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SalesOrderDetail] PRIMARY KEY CLUSTERED 
(
	[SalesOrderID] ,
	[SalesOrderDetailID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Insert Scripts:  
Table [Sales].[SalesOrderDetail]  
******/
SET IDENTITY_INSERT [Sales].[SalesOrderDetail] ON 
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71774, 110562, 1, 836, 356.8980, 0.0000, CAST(356.898000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71774, 110563, 1, 822, 356.8980, 0.0000, CAST(356.898000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110616, 4, 905, 218.4540, 0.0000, CAST(873.816000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110617, 2, 983, 461.6940, 0.0000, CAST(923.388000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110618, 6, 988, 112.9980, 0.4000, CAST(406.792800 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110619, 2, 748, 818.7000, 0.0000, CAST(1637.400000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110620, 1, 990, 323.9940, 0.0000, CAST(323.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110621, 1, 926, 149.8740, 0.0000, CAST(149.874000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110622, 1, 743, 809.7600, 0.0000, CAST(809.760000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110623, 4, 782, 1376.9940, 0.0000, CAST(5507.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110624, 2, 918, 158.4300, 0.0000, CAST(316.860000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110625, 4, 780, 1391.9940, 0.0000, CAST(5567.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110626, 1, 937, 48.5940, 0.0000, CAST(48.594000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110627, 6, 867, 41.9940, 0.0000, CAST(251.964000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110628, 1, 985, 112.9980, 0.4000, CAST(67.798800 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110629, 2, 989, 323.9940, 0.0000, CAST(647.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110630, 3, 991, 323.9940, 0.0000, CAST(971.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110631, 1, 992, 323.9940, 0.0000, CAST(323.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110632, 2, 993, 323.9940, 0.0000, CAST(647.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110633, 2, 984, 112.9980, 0.4000, CAST(135.597600 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110634, 3, 986, 112.9980, 0.4000, CAST(203.396400 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110635, 3, 987, 112.9980, 0.4000, CAST(203.396400 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110636, 2, 981, 461.6940, 0.0000, CAST(923.388000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110637, 3, 982, 461.6940, 0.0000, CAST(1385.082000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110638, 5, 783, 1376.9940, 0.0000, CAST(6884.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110639, 3, 809, 37.1520, 0.0000, CAST(111.456000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110640, 1, 810, 72.1620, 0.0000, CAST(72.162000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110641, 2, 935, 24.2940, 0.0000, CAST(48.588000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110642, 1, 925, 149.8740, 0.0000, CAST(149.874000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110643, 7, 869, 41.9940, 0.0000, CAST(293.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71780, 110644, 1, 880, 32.9940, 0.0000, CAST(32.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110667, 3, 714, 29.9940, 0.0000, CAST(89.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110668, 3, 956, 1430.4420, 0.0000, CAST(4291.326000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110669, 1, 954, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110670, 10, 712, 5.3940, 0.0000, CAST(53.940000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110671, 10, 877, 4.7700, 0.0000, CAST(47.700000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110672, 4, 996, 72.8940, 0.0000, CAST(291.576000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110673, 6, 864, 38.1000, 0.0000, CAST(228.600000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110674, 3, 876, 72.0000, 0.0000, CAST(216.000000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110675, 4, 959, 445.4100, 0.0000, CAST(1781.640000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110676, 4, 971, 728.9100, 0.0000, CAST(2915.640000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110677, 6, 870, 2.9940, 0.0000, CAST(17.964000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110678, 1, 978, 445.4100, 0.0000, CAST(445.410000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110679, 1, 955, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110680, 1, 948, 63.9000, 0.0000, CAST(63.900000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110681, 1, 994, 32.3940, 0.0000, CAST(32.394000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110682, 1, 970, 728.9100, 0.0000, CAST(728.910000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110683, 2, 966, 1430.4420, 0.0000, CAST(2860.884000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110684, 4, 884, 32.3940, 0.0000, CAST(129.576000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110685, 2, 885, 602.3460, 0.0000, CAST(1204.692000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110686, 8, 715, 29.9940, 0.0000, CAST(239.952000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110687, 3, 894, 72.8760, 0.0000, CAST(218.628000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110688, 1, 957, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110689, 2, 967, 1430.4420, 0.0000, CAST(2860.884000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110690, 7, 708, 20.9940, 0.0000, CAST(146.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110691, 3, 961, 445.4100, 0.0000, CAST(1336.230000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110692, 2, 979, 445.4100, 0.0000, CAST(890.820000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110693, 2, 958, 445.4100, 0.0000, CAST(890.820000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110694, 1, 963, 445.4100, 0.0000, CAST(445.410000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110695, 1, 953, 728.9100, 0.0000, CAST(728.910000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110696, 2, 968, 1430.4420, 0.0000, CAST(2860.884000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110697, 2, 951, 242.9940, 0.0000, CAST(485.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110698, 2, 945, 54.8940, 0.0000, CAST(109.788000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110699, 1, 916, 31.5840, 0.0000, CAST(31.584000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110700, 1, 886, 200.0520, 0.0000, CAST(200.052000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110701, 1, 892, 602.3460, 0.0000, CAST(602.346000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110702, 1, 893, 602.3460, 0.0000, CAST(602.346000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110703, 6, 881, 32.3940, 0.0000, CAST(194.364000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110704, 4, 883, 32.3940, 0.0000, CAST(129.576000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110705, 1, 859, 14.6940, 0.0000, CAST(14.694000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110706, 4, 865, 38.1000, 0.0000, CAST(152.400000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110707, 9, 880, 32.9940, 0.0000, CAST(296.946000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110708, 6, 711, 20.9940, 0.0000, CAST(125.964000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71782, 110709, 3, 707, 20.9940, 0.0000, CAST(62.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110710, 4, 738, 202.3320, 0.0000, CAST(809.328000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110711, 6, 939, 37.2540, 0.0000, CAST(223.524000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110712, 3, 793, 1466.0100, 0.0000, CAST(4398.030000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110713, 4, 977, 323.9940, 0.0000, CAST(1295.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110714, 9, 880, 32.9940, 0.0000, CAST(296.946000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110715, 7, 859, 14.6940, 0.0000, CAST(102.858000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110716, 25, 976, 850.4950, 0.1000, CAST(19136.137500 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110717, 6, 714, 29.9940, 0.0000, CAST(179.964000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110718, 8, 877, 4.7700, 0.0000, CAST(38.160000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110719, 1, 813, 72.1620, 0.0000, CAST(72.162000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110720, 6, 881, 32.3940, 0.0000, CAST(194.364000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110721, 6, 873, 1.3740, 0.0000, CAST(8.244000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110722, 10, 870, 2.9940, 0.0000, CAST(29.940000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110723, 1, 822, 356.8980, 0.0000, CAST(356.898000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110724, 1, 799, 672.2940, 0.0000, CAST(672.294000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110725, 2, 858, 14.6940, 0.0000, CAST(29.388000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110726, 9, 860, 14.6940, 0.0000, CAST(132.246000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110727, 15, 864, 34.9250, 0.0500, CAST(497.681250 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110728, 3, 938, 24.2940, 0.0000, CAST(72.882000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110729, 11, 883, 31.3142, 0.0200, CAST(337.567076 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110730, 6, 722, 202.3320, 0.0000, CAST(1213.992000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110731, 9, 884, 32.3940, 0.0000, CAST(291.546000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110732, 7, 998, 323.9940, 0.0000, CAST(2267.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110733, 5, 999, 323.9940, 0.0000, CAST(1619.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110734, 4, 797, 672.2940, 0.0000, CAST(2689.176000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110735, 1, 798, 672.2940, 0.0000, CAST(672.294000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110736, 1, 801, 672.2940, 0.0000, CAST(672.294000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110737, 5, 973, 1020.5940, 0.0000, CAST(5102.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110738, 13, 974, 986.5742, 0.0200, CAST(12568.955308 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110739, 4, 940, 48.5940, 0.0000, CAST(194.376000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110740, 3, 835, 356.8980, 0.0000, CAST(1070.694000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110741, 4, 836, 356.8980, 0.0000, CAST(1427.592000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110742, 4, 838, 858.9000, 0.0000, CAST(3435.600000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110743, 2, 718, 858.9000, 0.0000, CAST(1717.800000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110744, 17, 715, 27.4945, 0.0500, CAST(444.036175 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110745, 4, 716, 29.9940, 0.0000, CAST(119.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110746, 1, 875, 5.3940, 0.0000, CAST(5.394000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110747, 10, 865, 38.1000, 0.0000, CAST(381.000000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110748, 11, 712, 5.2142, 0.0200, CAST(56.209076 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110749, 15, 711, 19.2445, 0.0500, CAST(274.234125 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110750, 2, 876, 72.0000, 0.0000, CAST(144.000000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110751, 10, 707, 20.9940, 0.0000, CAST(209.940000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71783, 110752, 11, 708, 20.2942, 0.0200, CAST(218.771476 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110753, 2, 711, 20.9940, 0.0000, CAST(41.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110754, 8, 885, 602.3460, 0.0000, CAST(4818.768000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110755, 2, 954, 1430.4420, 0.0000, CAST(2860.884000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110756, 11, 870, 2.8942, 0.0200, CAST(31.199476 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110757, 8, 865, 38.1000, 0.0000, CAST(304.800000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110758, 4, 970, 728.9100, 0.0000, CAST(2915.640000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110759, 1, 959, 445.4100, 0.0000, CAST(445.410000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110760, 9, 714, 29.9940, 0.0000, CAST(269.946000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110761, 10, 712, 5.3940, 0.0000, CAST(53.940000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110762, 4, 972, 728.9100, 0.0000, CAST(2915.640000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110763, 8, 877, 4.7700, 0.0000, CAST(38.160000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110764, 5, 716, 29.9940, 0.0000, CAST(149.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110765, 11, 965, 430.5630, 0.0200, CAST(4641.469140 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110766, 6, 958, 445.4100, 0.0000, CAST(2672.460000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110767, 6, 876, 72.0000, 0.0000, CAST(432.000000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110768, 2, 899, 200.0520, 0.0000, CAST(400.104000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110769, 6, 858, 14.6940, 0.0000, CAST(88.164000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110770, 4, 889, 602.3460, 0.0000, CAST(2409.384000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110771, 7, 962, 445.4100, 0.0000, CAST(3117.870000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110772, 2, 895, 200.0520, 0.0000, CAST(400.104000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110773, 12, 957, 1382.7606, 0.0200, CAST(16261.264656 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110774, 8, 979, 445.4100, 0.0000, CAST(3563.280000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110775, 3, 961, 445.4100, 0.0000, CAST(1336.230000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110776, 5, 963, 445.4100, 0.0000, CAST(2227.050000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110777, 3, 953, 728.9100, 0.0000, CAST(2186.730000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110778, 4, 966, 1430.4420, 0.0000, CAST(5721.768000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110779, 6, 967, 1430.4420, 0.0000, CAST(8582.652000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110780, 10, 969, 1430.4420, 0.0000, CAST(14304.420000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110781, 2, 955, 1430.4420, 0.0000, CAST(2860.884000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110782, 2, 916, 31.5840, 0.0000, CAST(63.168000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110783, 3, 896, 200.0520, 0.0000, CAST(600.156000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110784, 1, 900, 200.0520, 0.0000, CAST(200.052000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110785, 1, 893, 602.3460, 0.0000, CAST(602.346000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110786, 8, 715, 29.9940, 0.0000, CAST(239.952000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110787, 6, 881, 32.3940, 0.0000, CAST(194.364000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110788, 7, 883, 32.3940, 0.0000, CAST(226.758000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110789, 3, 884, 32.3940, 0.0000, CAST(97.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110790, 5, 859, 14.6940, 0.0000, CAST(73.470000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110791, 23, 864, 34.9250, 0.0500, CAST(763.111250 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110792, 9, 880, 32.9940, 0.0000, CAST(296.946000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110793, 8, 873, 1.3740, 0.0000, CAST(10.992000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110794, 10, 707, 20.9940, 0.0000, CAST(209.940000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71784, 110795, 12, 708, 20.2942, 0.0200, CAST(238.659792 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111018, 1, 891, 602.3460, 0.0000, CAST(602.346000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111019, 8, 972, 728.9100, 0.0000, CAST(5831.280000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111020, 2, 953, 728.9100, 0.0000, CAST(1457.820000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111021, 1, 916, 31.5840, 0.0000, CAST(31.584000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111022, 5, 958, 445.4100, 0.0000, CAST(2227.050000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111023, 3, 957, 1430.4420, 0.0000, CAST(4291.326000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111024, 9, 969, 1430.4420, 0.0000, CAST(12873.978000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111025, 2, 967, 1430.4420, 0.0000, CAST(2860.884000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111026, 3, 979, 445.4100, 0.0000, CAST(1336.230000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111027, 7, 961, 445.4100, 0.0000, CAST(3117.870000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111028, 2, 965, 445.4100, 0.0000, CAST(890.820000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111029, 1, 970, 728.9100, 0.0000, CAST(728.910000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111030, 3, 954, 1430.4420, 0.0000, CAST(4291.326000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111031, 1, 955, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111032, 1, 947, 54.9420, 0.0000, CAST(54.942000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111033, 1, 899, 200.0520, 0.0000, CAST(200.052000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111034, 1, 900, 200.0520, 0.0000, CAST(200.052000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111035, 6, 892, 602.3460, 0.0000, CAST(3614.076000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111036, 1, 893, 602.3460, 0.0000, CAST(602.346000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71796, 111037, 2, 885, 602.3460, 0.0000, CAST(1204.692000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111038, 4, 711, 20.9940, 0.0000, CAST(83.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111039, 2, 838, 858.9000, 0.0000, CAST(1717.800000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111040, 1, 714, 29.9940, 0.0000, CAST(29.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111041, 4, 940, 48.5940, 0.0000, CAST(194.376000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111042, 16, 883, 29.6945, 0.0500, CAST(451.356400 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111043, 2, 913, 31.5840, 0.0000, CAST(63.168000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111044, 1, 738, 202.3320, 0.0000, CAST(202.332000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111045, 3, 722, 202.3320, 0.0000, CAST(606.996000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111046, 5, 835, 356.8980, 0.0000, CAST(1784.490000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111047, 1, 718, 858.9000, 0.0000, CAST(858.900000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111048, 4, 715, 29.9940, 0.0000, CAST(119.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111049, 5, 716, 29.9940, 0.0000, CAST(149.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111050, 15, 884, 29.6945, 0.0500, CAST(423.146625 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111051, 3, 875, 5.3940, 0.0000, CAST(16.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111052, 4, 860, 14.6940, 0.0000, CAST(58.776000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111053, 6, 712, 5.3940, 0.0000, CAST(32.364000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111054, 10, 880, 32.9940, 0.0000, CAST(329.940000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111055, 6, 873, 1.3740, 0.0000, CAST(8.244000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111056, 10, 876, 72.0000, 0.0000, CAST(720.000000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111057, 7, 977, 323.9940, 0.0000, CAST(2267.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111058, 2, 798, 672.2940, 0.0000, CAST(1344.588000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111059, 2, 813, 72.1620, 0.0000, CAST(144.324000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111060, 4, 939, 37.2540, 0.0000, CAST(149.016000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111061, 2, 801, 672.2940, 0.0000, CAST(1344.588000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111062, 6, 998, 323.9940, 0.0000, CAST(1943.964000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111063, 4, 999, 323.9940, 0.0000, CAST(1295.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111064, 3, 938, 24.2940, 0.0000, CAST(72.882000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111065, 5, 794, 1466.0100, 0.0000, CAST(7330.050000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111066, 2, 795, 1466.0100, 0.0000, CAST(2932.020000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111067, 10, 797, 672.2940, 0.0000, CAST(6722.940000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111068, 8, 881, 32.3940, 0.0000, CAST(259.152000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111069, 1, 865, 38.1000, 0.0000, CAST(38.100000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111070, 23, 864, 34.9250, 0.0500, CAST(763.111250 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111071, 9, 976, 1020.5940, 0.0000, CAST(9185.346000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111072, 17, 877, 4.3725, 0.0500, CAST(70.615875 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111073, 6, 793, 1466.0100, 0.0000, CAST(8796.060000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111074, 3, 974, 1020.5940, 0.0000, CAST(3061.782000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111075, 6, 707, 20.9940, 0.0000, CAST(125.964000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111076, 9, 859, 14.6940, 0.0000, CAST(132.246000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111077, 5, 973, 1020.5940, 0.0000, CAST(5102.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111078, 11, 870, 2.8942, 0.0200, CAST(31.199476 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111079, 2, 717, 858.9000, 0.0000, CAST(1717.800000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111080, 4, 858, 14.6940, 0.0000, CAST(58.776000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111081, 4, 836, 356.8980, 0.0000, CAST(1427.592000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111082, 12, 708, 20.2942, 0.0200, CAST(238.659792 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71797, 111083, 2, 822, 356.8980, 0.0000, CAST(713.796000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71815, 111451, 1, 738, 202.3320, 0.0000, CAST(202.332000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71815, 111452, 2, 835, 356.8980, 0.0000, CAST(713.796000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71815, 111453, 2, 874, 5.3940, 0.0000, CAST(10.788000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71816, 111454, 1, 953, 728.9100, 0.0000, CAST(728.910000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71816, 111455, 1, 954, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71816, 111456, 2, 715, 29.9940, 0.0000, CAST(59.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71816, 111457, 4, 712, 5.3940, 0.0000, CAST(21.576000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71816, 111458, 3, 883, 32.3940, 0.0000, CAST(97.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71816, 111459, 1, 961, 445.4100, 0.0000, CAST(445.410000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71816, 111460, 1, 948, 63.9000, 0.0000, CAST(63.900000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71831, 111790, 2, 869, 41.9940, 0.0000, CAST(83.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71831, 111791, 1, 782, 1376.9940, 0.0000, CAST(1376.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71831, 111792, 6, 867, 41.9940, 0.0000, CAST(251.964000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111793, 4, 918, 158.4300, 0.0000, CAST(633.720000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111794, 3, 983, 461.6940, 0.0000, CAST(1385.082000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111795, 2, 781, 1391.9940, 0.0000, CAST(2783.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111796, 1, 868, 41.9940, 0.0000, CAST(41.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111797, 1, 810, 72.1620, 0.0000, CAST(72.162000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111798, 1, 980, 461.6940, 0.0000, CAST(461.694000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111799, 2, 925, 149.8740, 0.0000, CAST(299.748000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111800, 2, 985, 112.9980, 0.4000, CAST(135.597600 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111801, 1, 908, 16.2720, 0.0000, CAST(16.272000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111802, 13, 867, 40.5942, 0.0200, CAST(517.170108 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111803, 3, 782, 1376.9940, 0.0000, CAST(4130.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111804, 1, 937, 48.5940, 0.0000, CAST(48.594000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111805, 1, 936, 37.2540, 0.0000, CAST(37.254000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111806, 4, 743, 809.7600, 0.0000, CAST(3239.040000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111807, 5, 904, 218.4540, 0.0000, CAST(1092.270000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111808, 1, 748, 818.7000, 0.0000, CAST(818.700000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111809, 1, 910, 31.5840, 0.0000, CAST(31.584000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111810, 5, 784, 1376.9940, 0.0000, CAST(6884.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111811, 2, 990, 323.9940, 0.0000, CAST(647.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111812, 3, 992, 323.9940, 0.0000, CAST(971.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111813, 3, 984, 112.9980, 0.4000, CAST(203.396400 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111814, 1, 779, 1391.9940, 0.0000, CAST(1391.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111815, 1, 780, 1391.9940, 0.0000, CAST(1391.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111816, 2, 944, 158.4300, 0.0000, CAST(316.860000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111817, 1, 808, 26.7240, 0.0000, CAST(26.724000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111818, 1, 809, 37.1520, 0.0000, CAST(37.152000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111819, 3, 935, 24.2940, 0.0000, CAST(72.882000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111820, 1, 926, 149.8740, 0.0000, CAST(149.874000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111821, 6, 917, 158.4300, 0.0000, CAST(950.580000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71832, 111822, 1, 920, 158.4300, 0.0000, CAST(158.430000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112118, 2, 988, 112.9980, 0.4000, CAST(135.597600 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112119, 2, 948, 63.9000, 0.0000, CAST(127.800000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112120, 4, 904, 218.4540, 0.0000, CAST(873.816000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112121, 3, 742, 818.7000, 0.0000, CAST(2456.100000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112122, 2, 780, 1391.9940, 0.0000, CAST(2783.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112123, 1, 945, 54.8940, 0.0000, CAST(54.894000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112124, 3, 949, 105.2940, 0.0000, CAST(315.882000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112125, 2, 937, 48.5940, 0.0000, CAST(97.188000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112126, 2, 867, 41.9940, 0.0000, CAST(83.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112127, 1, 748, 818.7000, 0.0000, CAST(818.700000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112128, 2, 905, 218.4540, 0.0000, CAST(436.908000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112129, 2, 781, 1391.9940, 0.0000, CAST(2783.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112130, 3, 869, 41.9940, 0.0000, CAST(125.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112131, 5, 783, 1376.9940, 0.0000, CAST(6884.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112132, 2, 784, 1376.9940, 0.0000, CAST(2753.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112133, 1, 951, 242.9940, 0.0000, CAST(242.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112134, 3, 747, 809.7600, 0.0000, CAST(2429.280000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112135, 1, 809, 37.1520, 0.0000, CAST(37.152000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112136, 2, 920, 158.4300, 0.0000, CAST(316.860000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112137, 2, 743, 809.7600, 0.0000, CAST(1619.520000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112138, 2, 715, 29.9940, 0.0000, CAST(59.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112139, 2, 944, 158.4300, 0.0000, CAST(316.860000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112140, 1, 808, 26.7240, 0.0000, CAST(26.724000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112141, 8, 909, 23.4840, 0.0000, CAST(187.872000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112142, 2, 925, 149.8740, 0.0000, CAST(299.748000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112143, 2, 782, 1376.9940, 0.0000, CAST(2753.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112144, 2, 910, 31.5840, 0.0000, CAST(63.168000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112145, 3, 996, 72.8940, 0.0000, CAST(218.682000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112146, 3, 779, 1391.9940, 0.0000, CAST(4175.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112147, 4, 924, 149.8740, 0.0000, CAST(599.496000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71845, 112148, 3, 952, 12.1440, 0.0000, CAST(36.432000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71846, 112149, 2, 936, 37.2540, 0.0000, CAST(74.508000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71846, 112150, 1, 739, 818.7000, 0.0000, CAST(818.700000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71846, 112151, 1, 984, 112.9980, 0.4000, CAST(67.798800 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71846, 112152, 2, 981, 461.6940, 0.0000, CAST(923.388000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71856, 112331, 1, 962, 445.4100, 0.0000, CAST(445.410000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71856, 112332, 1, 945, 54.8940, 0.0000, CAST(54.894000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112359, 3, 979, 445.4100, 0.0000, CAST(1336.230000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112360, 1, 962, 445.4100, 0.0000, CAST(445.410000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112361, 1, 953, 728.9100, 0.0000, CAST(728.910000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112362, 2, 715, 29.9940, 0.0000, CAST(59.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112363, 2, 883, 32.3940, 0.0000, CAST(64.788000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112364, 1, 957, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112365, 2, 965, 445.4100, 0.0000, CAST(890.820000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112366, 1, 952, 12.1440, 0.0000, CAST(12.144000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112367, 2, 948, 63.9000, 0.0000, CAST(127.800000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112368, 1, 945, 54.8940, 0.0000, CAST(54.894000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112369, 1, 972, 728.9100, 0.0000, CAST(728.910000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112370, 1, 877, 4.7700, 0.0000, CAST(4.770000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112371, 1, 958, 445.4100, 0.0000, CAST(445.410000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112372, 1, 969, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112373, 2, 961, 445.4100, 0.0000, CAST(890.820000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112374, 2, 966, 1430.4420, 0.0000, CAST(2860.884000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71858, 112375, 3, 712, 5.3940, 0.0000, CAST(16.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71863, 112391, 11, 875, 5.2142, 0.0200, CAST(56.209076 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71863, 112392, 2, 874, 5.3940, 0.0000, CAST(10.788000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71863, 112393, 2, 998, 323.9940, 0.0000, CAST(647.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71863, 112394, 1, 973, 1020.5940, 0.0000, CAST(1020.594000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71863, 112395, 1, 711, 20.9940, 0.0000, CAST(20.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71863, 112396, 3, 999, 323.9940, 0.0000, CAST(971.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71863, 112397, 2, 938, 24.2940, 0.0000, CAST(48.588000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71867, 112452, 1, 717, 858.9000, 0.0000, CAST(858.900000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71885, 112644, 3, 876, 72.0000, 0.0000, CAST(216.000000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71885, 112645, 6, 884, 32.3940, 0.0000, CAST(194.364000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71885, 112646, 3, 864, 38.1000, 0.0000, CAST(114.300000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71895, 112864, 2, 909, 23.4840, 0.0000, CAST(46.968000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71895, 112865, 2, 715, 29.9940, 0.0000, CAST(59.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71895, 112866, 3, 864, 38.1000, 0.0000, CAST(114.300000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71897, 112898, 1, 966, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71897, 112899, 4, 979, 445.4100, 0.0000, CAST(1781.640000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71897, 112900, 3, 969, 1430.4420, 0.0000, CAST(4291.326000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71897, 112901, 3, 884, 32.3940, 0.0000, CAST(97.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71897, 112902, 4, 712, 5.3940, 0.0000, CAST(21.576000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71897, 112903, 2, 954, 1430.4420, 0.0000, CAST(2860.884000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71897, 112904, 1, 864, 38.1000, 0.0000, CAST(38.100000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71897, 112905, 1, 948, 63.9000, 0.0000, CAST(63.900000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112906, 3, 969, 1430.4420, 0.0000, CAST(4291.326000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112907, 4, 978, 445.4100, 0.0000, CAST(1781.640000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112908, 4, 996, 72.8940, 0.0000, CAST(291.576000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112909, 6, 967, 1430.4420, 0.0000, CAST(8582.652000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112910, 3, 970, 728.9100, 0.0000, CAST(2186.730000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112911, 1, 956, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112912, 3, 960, 445.4100, 0.0000, CAST(1336.230000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112913, 3, 994, 32.3940, 0.0000, CAST(97.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112914, 1, 959, 445.4100, 0.0000, CAST(445.410000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112915, 4, 968, 1430.4420, 0.0000, CAST(5721.768000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112916, 3, 966, 1430.4420, 0.0000, CAST(4291.326000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112917, 5, 972, 728.9100, 0.0000, CAST(3644.550000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112918, 4, 949, 105.2940, 0.0000, CAST(421.176000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112919, 1, 958, 445.4100, 0.0000, CAST(445.410000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112920, 3, 945, 54.8940, 0.0000, CAST(164.682000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112921, 5, 971, 728.9100, 0.0000, CAST(3644.550000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112922, 2, 953, 728.9100, 0.0000, CAST(1457.820000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112923, 1, 889, 602.3460, 0.0000, CAST(602.346000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112924, 1, 955, 1430.4420, 0.0000, CAST(1430.442000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112925, 3, 964, 445.4100, 0.0000, CAST(1336.230000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112926, 3, 916, 31.5840, 0.0000, CAST(94.752000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112927, 1, 948, 63.9000, 0.0000, CAST(63.900000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112928, 3, 979, 445.4100, 0.0000, CAST(1336.230000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112929, 3, 951, 242.9940, 0.0000, CAST(728.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112930, 3, 954, 1430.4420, 0.0000, CAST(4291.326000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112931, 1, 952, 12.1440, 0.0000, CAST(12.144000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112932, 5, 965, 445.4100, 0.0000, CAST(2227.050000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71898, 112933, 2, 961, 445.4100, 0.0000, CAST(890.820000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71899, 112934, 2, 881, 32.3940, 0.0000, CAST(64.788000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71899, 112935, 1, 988, 112.9980, 0.4000, CAST(67.798800 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71899, 112936, 1, 981, 461.6940, 0.0000, CAST(461.694000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71899, 112937, 1, 743, 809.7600, 0.0000, CAST(809.760000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71899, 112938, 1, 808, 26.7240, 0.0000, CAST(26.724000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71899, 112939, 2, 714, 29.9940, 0.0000, CAST(59.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71899, 112940, 2, 944, 158.4300, 0.0000, CAST(316.860000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71899, 112941, 1, 937, 48.5940, 0.0000, CAST(48.594000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112953, 5, 780, 1391.9940, 0.0000, CAST(6959.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112954, 2, 981, 461.6940, 0.0000, CAST(923.388000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112955, 1, 904, 218.4540, 0.0000, CAST(218.454000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112956, 1, 987, 112.9980, 0.4000, CAST(67.798800 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112957, 7, 783, 1376.9940, 0.0000, CAST(9638.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112958, 5, 781, 1391.9940, 0.0000, CAST(6959.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112959, 2, 859, 14.6940, 0.0000, CAST(29.388000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112960, 7, 869, 41.9940, 0.0000, CAST(293.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112961, 2, 908, 16.2720, 0.0000, CAST(32.544000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112962, 3, 712, 5.3940, 0.0000, CAST(16.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112963, 1, 925, 149.8740, 0.0000, CAST(149.874000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112964, 2, 937, 48.5940, 0.0000, CAST(97.188000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112965, 3, 992, 323.9940, 0.0000, CAST(971.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112966, 3, 980, 461.6940, 0.0000, CAST(1385.082000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112967, 3, 715, 29.9940, 0.0000, CAST(89.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112968, 4, 935, 24.2940, 0.0000, CAST(97.176000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112969, 1, 989, 323.9940, 0.0000, CAST(323.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112970, 4, 984, 112.9980, 0.4000, CAST(271.195200 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112971, 2, 982, 461.6940, 0.0000, CAST(923.388000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112972, 8, 782, 1376.9940, 0.0000, CAST(11015.952000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112973, 2, 784, 1376.9940, 0.0000, CAST(2753.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112974, 1, 810, 72.1620, 0.0000, CAST(72.162000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112975, 1, 926, 149.8740, 0.0000, CAST(149.874000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112976, 3, 714, 29.9940, 0.0000, CAST(89.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112977, 7, 870, 2.9940, 0.0000, CAST(20.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112978, 4, 876, 72.0000, 0.0000, CAST(288.000000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112979, 5, 877, 4.7700, 0.0000, CAST(23.850000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112980, 2, 707, 20.9940, 0.0000, CAST(41.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112981, 1, 993, 323.9940, 0.0000, CAST(323.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112982, 6, 864, 38.1000, 0.0000, CAST(228.600000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112983, 7, 867, 41.9940, 0.0000, CAST(293.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112984, 2, 809, 37.1520, 0.0000, CAST(74.304000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112985, 3, 988, 112.9980, 0.4000, CAST(203.396400 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112986, 5, 880, 32.9940, 0.0000, CAST(164.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112987, 1, 936, 37.2540, 0.0000, CAST(37.254000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112988, 4, 708, 20.9940, 0.0000, CAST(83.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112989, 3, 779, 1391.9940, 0.0000, CAST(4175.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112990, 2, 991, 323.9940, 0.0000, CAST(647.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112991, 5, 883, 32.3940, 0.0000, CAST(161.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112992, 1, 910, 31.5840, 0.0000, CAST(31.584000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112993, 2, 881, 32.3940, 0.0000, CAST(64.788000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112994, 5, 985, 112.9980, 0.4000, CAST(338.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112995, 7, 711, 20.9940, 0.0000, CAST(146.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112996, 1, 986, 112.9980, 0.4000, CAST(67.798800 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112997, 7, 748, 818.7000, 0.0000, CAST(5730.900000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112998, 5, 884, 32.3940, 0.0000, CAST(161.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 112999, 2, 918, 158.4300, 0.0000, CAST(316.860000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 113000, 3, 905, 218.4540, 0.0000, CAST(655.362000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 113001, 4, 983, 461.6940, 0.0000, CAST(1846.776000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71902, 113002, 6, 865, 38.1000, 0.0000, CAST(228.600000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71915, 113089, 3, 836, 356.8980, 0.0000, CAST(1070.694000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71915, 113090, 2, 738, 202.3320, 0.0000, CAST(404.664000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71915, 113091, 4, 938, 24.2940, 0.0000, CAST(97.176000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71915, 113092, 3, 939, 37.2540, 0.0000, CAST(111.762000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71915, 113093, 1, 940, 48.5940, 0.0000, CAST(48.594000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71917, 113100, 7, 875, 5.3940, 0.0000, CAST(37.758000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71920, 113139, 1, 973, 1020.5940, 0.0000, CAST(1020.594000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71920, 113140, 3, 938, 24.2940, 0.0000, CAST(72.882000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71920, 113141, 1, 976, 1020.5940, 0.0000, CAST(1020.594000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71920, 113142, 7, 884, 32.3940, 0.0000, CAST(226.758000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71920, 113143, 3, 864, 38.1000, 0.0000, CAST(114.300000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71920, 113144, 1, 876, 72.0000, 0.0000, CAST(72.000000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71923, 113152, 1, 870, 2.9940, 0.0000, CAST(2.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71923, 113153, 4, 874, 5.3940, 0.0000, CAST(21.576000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71923, 113154, 14, 875, 5.2142, 0.0200, CAST(71.538824 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71935, 113219, 3, 874, 5.3940, 0.0000, CAST(16.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71935, 113220, 1, 938, 24.2940, 0.0000, CAST(24.294000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71935, 113221, 3, 973, 1020.5940, 0.0000, CAST(3061.782000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71935, 113222, 2, 976, 1020.5940, 0.0000, CAST(2041.188000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71935, 113223, 1, 998, 323.9940, 0.0000, CAST(323.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71935, 113224, 13, 875, 5.2142, 0.0200, CAST(66.428908 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113225, 3, 944, 158.4300, 0.0000, CAST(475.290000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113226, 4, 985, 112.9980, 0.4000, CAST(271.195200 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113227, 4, 996, 72.8940, 0.0000, CAST(291.576000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113228, 1, 707, 20.9940, 0.0000, CAST(20.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113229, 1, 926, 149.8740, 0.0000, CAST(149.874000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113230, 4, 808, 26.7240, 0.0000, CAST(106.896000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113231, 5, 992, 323.9940, 0.0000, CAST(1619.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113232, 6, 951, 242.9940, 0.0000, CAST(1457.964000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113233, 3, 780, 1391.9940, 0.0000, CAST(4175.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113234, 2, 905, 218.4540, 0.0000, CAST(436.908000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113235, 4, 747, 809.7600, 0.0000, CAST(3239.040000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113236, 14, 867, 40.5942, 0.0200, CAST(556.952424 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113237, 3, 935, 24.2940, 0.0000, CAST(72.882000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113238, 5, 945, 54.8940, 0.0000, CAST(274.470000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113239, 5, 924, 149.8740, 0.0000, CAST(749.370000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113240, 10, 783, 1376.9940, 0.0000, CAST(13769.940000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113241, 5, 784, 1376.9940, 0.0000, CAST(6884.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113242, 5, 748, 818.7000, 0.0000, CAST(4093.500000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113243, 2, 981, 461.6940, 0.0000, CAST(923.388000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113244, 5, 894, 72.8760, 0.0000, CAST(364.380000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113245, 4, 779, 1391.9940, 0.0000, CAST(5567.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113246, 8, 782, 1376.9940, 0.0000, CAST(11015.952000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113247, 8, 869, 41.9940, 0.0000, CAST(335.952000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113248, 3, 952, 12.1440, 0.0000, CAST(36.432000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113249, 3, 949, 105.2940, 0.0000, CAST(315.882000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113250, 5, 937, 48.5940, 0.0000, CAST(242.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113251, 3, 910, 31.5840, 0.0000, CAST(94.752000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113252, 2, 917, 158.4300, 0.0000, CAST(316.860000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113253, 3, 994, 32.3940, 0.0000, CAST(97.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113254, 1, 984, 112.9980, 0.4000, CAST(67.798800 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113255, 6, 860, 14.6940, 0.0000, CAST(88.164000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113256, 4, 948, 63.9000, 0.0000, CAST(255.600000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113257, 6, 925, 149.8740, 0.0000, CAST(899.244000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113258, 3, 908, 16.2720, 0.0000, CAST(48.816000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113259, 1, 918, 158.4300, 0.0000, CAST(158.430000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113260, 4, 743, 809.7600, 0.0000, CAST(3239.040000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113261, 5, 739, 818.7000, 0.0000, CAST(4093.500000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113262, 2, 987, 112.9980, 0.4000, CAST(135.597600 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113263, 5, 809, 37.1520, 0.0000, CAST(185.760000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113264, 2, 904, 218.4540, 0.0000, CAST(436.908000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113265, 4, 781, 1391.9940, 0.0000, CAST(5567.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113266, 4, 868, 41.9940, 0.0000, CAST(167.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113267, 5, 988, 112.9980, 0.4000, CAST(338.994000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113268, 7, 742, 818.7000, 0.0000, CAST(5730.900000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113269, 2, 936, 37.2540, 0.0000, CAST(74.508000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71936, 113270, 6, 909, 23.4840, 0.0000, CAST(140.904000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113274, 5, 973, 1020.5940, 0.0000, CAST(5102.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113275, 3, 876, 72.0000, 0.0000, CAST(216.000000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113276, 2, 835, 356.8980, 0.0000, CAST(713.796000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113277, 3, 974, 1020.5940, 0.0000, CAST(3061.782000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113278, 3, 707, 20.9940, 0.0000, CAST(62.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113279, 1, 813, 72.1620, 0.0000, CAST(72.162000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113280, 5, 938, 24.2940, 0.0000, CAST(121.470000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113281, 5, 884, 32.3940, 0.0000, CAST(161.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113282, 3, 711, 20.9940, 0.0000, CAST(62.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113283, 1, 712, 5.3940, 0.0000, CAST(5.394000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113284, 5, 940, 48.5940, 0.0000, CAST(242.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113285, 3, 792, 1466.0100, 0.0000, CAST(4398.030000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113286, 5, 976, 1020.5940, 0.0000, CAST(5102.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113287, 5, 798, 672.2940, 0.0000, CAST(3361.470000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113288, 4, 799, 672.2940, 0.0000, CAST(2689.176000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113289, 4, 864, 38.1000, 0.0000, CAST(152.400000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113290, 2, 714, 29.9940, 0.0000, CAST(59.988000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113291, 4, 999, 323.9940, 0.0000, CAST(1295.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113292, 5, 998, 323.9940, 0.0000, CAST(1619.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113293, 6, 877, 4.7700, 0.0000, CAST(28.620000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113294, 3, 796, 1466.0100, 0.0000, CAST(4398.030000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113295, 5, 708, 20.9940, 0.0000, CAST(104.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113296, 5, 865, 38.1000, 0.0000, CAST(190.500000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113297, 3, 738, 202.3320, 0.0000, CAST(606.996000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113298, 3, 883, 32.3940, 0.0000, CAST(97.182000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113299, 3, 997, 323.9940, 0.0000, CAST(971.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113300, 8, 870, 2.9940, 0.0000, CAST(23.952000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113301, 6, 795, 1466.0100, 0.0000, CAST(8796.060000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113302, 4, 874, 5.3940, 0.0000, CAST(21.576000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113303, 2, 859, 14.6940, 0.0000, CAST(29.388000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113304, 5, 975, 1020.5940, 0.0000, CAST(5102.970000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113305, 3, 793, 1466.0100, 0.0000, CAST(4398.030000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113306, 5, 797, 672.2940, 0.0000, CAST(3361.470000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113307, 7, 880, 32.9940, 0.0000, CAST(230.958000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113308, 4, 977, 323.9940, 0.0000, CAST(1295.976000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113309, 5, 801, 672.2940, 0.0000, CAST(3361.470000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113310, 7, 794, 1466.0100, 0.0000, CAST(10262.070000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113311, 6, 939, 37.2540, 0.0000, CAST(223.524000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113312, 3, 715, 29.9940, 0.0000, CAST(89.982000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113313, 1, 881, 32.3940, 0.0000, CAST(32.394000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113314, 2, 875, 5.3940, 0.0000, CAST(10.788000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71938, 113315, 3, 800, 672.2940, 0.0000, CAST(2016.882000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
INSERT [Sales].[SalesOrderDetail] ([SalesOrderID], [SalesOrderDetailID], [OrderQty], [ProductID], [UnitPrice], [UnitPriceDiscount], [LineTotal], [ModifiedDate]) VALUES (71946, 113406, 1, 916, 31.5840, 0.0000, CAST(31.584000 AS Numeric(38, 6)), CAST(N'2008-06-01T00:00:00.000' AS DateTime))
GO
SET IDENTITY_INSERT [Sales].[SalesOrderDetail] OFF
GO
/****** Object:  Default Constraints for SalesOrderDetails Table
[OrderQty]>(0)
[UnitPrice]>=(0.00)
[UnitPriceDiscount]
[ModifiedDate]
******/
ALTER TABLE [Sales].[SalesOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [CK_SalesOrderDetail_OrderQty] CHECK  (([OrderQty]>(0)))
GO
ALTER TABLE [Sales].[SalesOrderDetail] CHECK CONSTRAINT [CK_SalesOrderDetail_OrderQty]
GO
ALTER TABLE [Sales].[SalesOrderDetail]  WITH NOCHECK ADD  CONSTRAINT [CK_SalesOrderDetail_UnitPrice] CHECK  (([UnitPrice]>=(0.00)))
GO
ALTER TABLE [Sales].[SalesOrderDetail] CHECK CONSTRAINT [CK_SalesOrderDetail_UnitPrice]
Go
ALTER TABLE [Sales].[SalesOrderDetail] ADD  CONSTRAINT [DF_SalesOrderDetail_UnitPriceDiscount]  DEFAULT ((0.0)) FOR [UnitPriceDiscount]
GO
ALTER TABLE [Sales].[SalesOrderDetail] ADD  CONSTRAINT [DF_SalesOrderDetail_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
/****** Object:  Foreign Key for SalesOrderDetails Table with Product
[ProductID]
******/
ALTER TABLE [Sales].[SalesOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderDetail_Product_ProductID] FOREIGN KEY([ProductID])
REFERENCES [Sales].[Product] ([ProductID])
GO
ALTER TABLE [Sales].[SalesOrderDetail] CHECK CONSTRAINT [FK_SalesOrderDetail_Product_ProductID]
GO
/****** Object:  Foreign Key for SalesOrderDetails Table with SalesOrderHeader
[SalesOrderID]
******/
ALTER TABLE [Sales].[SalesOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID] FOREIGN KEY([SalesOrderID])
REFERENCES [Sales].[SalesOrderHeader] ([SalesOrderID])
ON DELETE CASCADE
GO
ALTER TABLE [Sales].[SalesOrderDetail] CHECK CONSTRAINT [FK_SalesOrderDetail_SalesOrderHeader_SalesOrderID]
GO
