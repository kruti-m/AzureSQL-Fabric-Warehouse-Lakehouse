
/****** Drop Object if Exists:  
Table [Sales].[ProductCategory]    
*****/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Sales].[ProductCategory]') AND type in (N'U'))
DROP TABLE [Sales].[ProductCategory]
GO
/****** Object:  
Table [Sales].[ProductCategory] 
******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Sales].[ProductCategory](
	[ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[ParentProductCategoryID] [int] NULL,
	[CategoryName] [dbo].[Name] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ProductCategory_ProductCategoryID] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Insert Scripts:  
Table [Sales].[ProductCategory]  
******/
	SET IDENTITY_INSERT [Sales].[ProductCategory] ON 
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (1, NULL, N'Bikes', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (2, NULL, N'Components', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (3, NULL, N'Clothing', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (4, NULL, N'Accessories', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (5, 1, N'Mountain Bikes', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (6, 1, N'Road Bikes', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (7, 1, N'Touring Bikes', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (8, 2, N'Handlebars', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (9, 2, N'Bottom Brackets', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (10, 2, N'Brakes', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (11, 2, N'Chains', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (12, 2, N'Cranksets', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (13, 2, N'Derailleurs', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (14, 2, N'Forks', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (15, 2, N'Headsets', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (16, 2, N'Mountain Frames', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (17, 2, N'Pedals', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (18, 2, N'Road Frames', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (19, 2, N'Saddles', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (20, 2, N'Touring Frames', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (21, 2, N'Wheels', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (22, 3, N'Bib-Shorts', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (23, 3, N'Caps', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (24, 3, N'Gloves', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (25, 3, N'Jerseys', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (26, 3, N'Shorts', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (27, 3, N'Socks', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (28, 3, N'Tights', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (29, 3, N'Vests', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (30, 4, N'Bike Racks', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (31, 4, N'Bike Stands', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (32, 4, N'Bottles and Cages', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (33, 4, N'Cleaners', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (34, 4, N'Fenders', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (35, 4, N'Helmets', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (36, 4, N'Hydration Packs', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (37, 4, N'Lights', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (38, 4, N'Locks', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (39, 4, N'Panniers', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (40, 4, N'Pumps', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	INSERT [Sales].[ProductCategory] ([ProductCategoryID], [ParentProductCategoryID], [CategoryName], [ModifiedDate]) VALUES (41, 4, N'Tires and Tubes', CAST(N'2002-06-01T00:00:00.000' AS DateTime))
	GO
	SET IDENTITY_INSERT [Sales].[ProductCategory] OFF
	GO
/****** Object:  Default Constraints for ProductCategory Table
[ModifiedDate]
******/
	ALTER TABLE [Sales].[ProductCategory] ADD  CONSTRAINT [DF_ProductCategory_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
	GO
/****** Object:  Self Reference for ParentProducts  for ProductCategory Table
[ProductCategoryID]
******/
	ALTER TABLE [Sales].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_ProductCategory_ParentProductCategoryID_ProductCategoryID] FOREIGN KEY([ParentProductCategoryID])
	REFERENCES [Sales].[ProductCategory] ([ProductCategoryID])
	GO
	ALTER TABLE [Sales].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_ProductCategory_ParentProductCategoryID_ProductCategoryID]
	GO
/****** Object:  Foreign Key for ProductCategory Table with Product
[ProductCategoryID]
******/
	ALTER TABLE [Sales].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory_ProductCategoryID] FOREIGN KEY([ProductCategoryID])
	REFERENCES [Sales].[ProductCategory] ([ProductCategoryID])
	GO
	ALTER TABLE [Sales].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory_ProductCategoryID]
	GO