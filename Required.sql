GO
/****** Object:  Table [dbo].[ExceptionLog]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExceptionLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Function_Name] [varchar](200) NULL,
	[Stack_Trace] [varchar](200) NULL,
	[Ex_Message] [varchar](200) NULL,
	[Date_Time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[CategoryID] [int] NOT NULL,
	[UnitPrice] [money] NOT NULL,
	[UnitsInstock] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ExceptionLog] ON 

INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (1, N'Index[Post]', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Procedure or function ''AddItem'' expects parameter ''@name'', which was not supplied.', CAST(N'2021-09-18T03:03:45.430' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (2, N'Index[Post]', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Procedure or function ''AddItem'' expects parameter ''@name'', which was not supplied.', CAST(N'2021-09-18T03:04:00.107' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (3, N'tabledata', N'   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions', N'The connection was not closed. The connection''s current state is open.', CAST(N'2021-09-19T05:06:11.713' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (4, N'tabledata', N'   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions', N'The connection was not closed. The connection''s current state is open.', CAST(N'2021-09-19T05:13:40.460' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (5, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Invalid column name ''Category''.', CAST(N'2021-09-19T23:21:00.730' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (6, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Invalid column name ''Category''.', CAST(N'2021-09-19T23:21:08.647' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (8, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''desc''.', CAST(N'2021-09-19T23:22:34.857' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (9, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''asc''.', CAST(N'2021-09-19T23:23:14.667' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (10, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''asc''.', CAST(N'2021-09-20T10:39:44.497' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (11, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''asc''.', CAST(N'2021-09-20T11:00:39.173' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (12, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''asc''.', CAST(N'2021-09-20T11:02:24.123' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (13, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''asc''.', CAST(N'2021-09-20T11:02:32.403' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (14, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''asc''.', CAST(N'2021-09-21T00:21:33.077' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (16, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''asc''.', CAST(N'2021-09-21T00:24:47.003' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (17, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Invalid column name ''Category''.', CAST(N'2021-09-21T01:04:45.717' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (18, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Invalid column name ''Category''.', CAST(N'2021-09-21T01:04:48.630' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (1003, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near '')''.', CAST(N'2021-09-21T17:15:57.470' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (1004, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near '')''.', CAST(N'2021-09-21T17:16:17.073' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (7, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''asc''.', CAST(N'2021-09-19T23:22:32.863' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (15, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near the keyword ''asc''.', CAST(N'2021-09-21T00:23:46.897' AS DateTime))
INSERT [dbo].[ExceptionLog] ([Id], [Function_Name], [Stack_Trace], [Ex_Message], [Date_Time]) VALUES (1005, N'tabledata', N'   at System.Data.SqlClient.SqlConnection.OnError(SqlException exception, Boolean breakConnection, Action`1 wrapCloseInAction)
   at System.Data.SqlClient.SqlInternalConnection.OnError(SqlException e', N'Incorrect syntax near '')''.', CAST(N'2021-09-21T17:16:55.167' AS DateTime))
SET IDENTITY_INSERT [dbo].[ExceptionLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (1, N'Chai', 1, 18.0000, 12)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (2, N'Chang', 1, 19.0000, 17)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (3, N'Aniseed Syrup', 2, 10.0000, 13)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (4, N'Chef Anton''s Cajun Seasoning', 2, 22.0000, 53)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (5, N'Chef Anton''s Gumbo Mix', 2, 21.3500, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (6, N'Grandma''s Boysenberry Spread', 2, 25.0000, 120)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (7, N'Uncle Bob''s Organic Dried Pears', 7, 30.0000, 15)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (8, N'Northwoods Cranberry Sauce', 2, 40.0000, 6)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (9, N'Mishi Kobe Niku', 6, 97.0000, 29)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (10, N'Ikura', 8, 31.0000, 31)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (11, N'Queso Cabrales', 4, 21.0000, 22)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (12, N'Queso Manchego La Pastora', 4, 38.0000, 86)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (13, N'Konbu', 8, 6.0000, 24)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (14, N'Tofu', 7, 23.2500, 35)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (15, N'Genen Shouyu', 2, 15.5000, 39)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (16, N'Pavlova', 3, 17.4500, 29)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (17, N'Alice Mutton', 6, 39.0000, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (18, N'Carnarvon Tigers', 8, 62.5000, 42)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (19, N'Teatime Chocolate Biscuits', 3, 9.2000, 25)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (20, N'Sir Rodney''s Marmalade', 3, 81.0000, 40)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (21, N'Sir Rodney''s Scones', 3, 10.0000, 3)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (22, N'Gustaf''s Knäckebröd', 5, 21.0000, 104)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (23, N'Tunnbröd', 5, 9.0000, 61)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (24, N'Guaraná Fantástica', 1, 4.5000, 20)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (25, N'NuNuCa Nuß-Nougat-Creme', 3, 14.0000, 76)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (26, N'Gumbär Gummibärchen', 3, 31.2300, 15)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (27, N'Schoggi Schokolade', 3, 43.9000, 49)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (28, N'Rössle Sauerkraut', 7, 45.6000, 26)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (29, N'Thüringer Rostbratwurst', 6, 123.7900, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (30, N'Nord-Ost Matjeshering', 8, 25.8900, 10)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (31, N'Gorgonzola Telino', 4, 12.5000, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (32, N'Mascarpone Fabioli', 4, 32.0000, 9)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (33, N'Geitost', 4, 2.5000, 112)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (34, N'Sasquatch Ale', 1, 14.0000, 111)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (35, N'Steeleye Stout', 1, 18.0000, 20)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (36, N'Inlagd Sill', 8, 19.0000, 112)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (37, N'Gravad lax', 8, 26.0000, 11)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (38, N'Côte de Blaye', 1, 263.5000, 17)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (39, N'Chartreuse verte', 1, 18.0000, 69)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (40, N'Boston Crab Meat', 8, 18.4000, 123)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (41, N'Jack''s New England Clam Chowder', 8, 9.6500, 85)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (42, N'Singaporean Hokkien Fried Mee', 5, 14.0000, 26)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (43, N'Ipoh Coffee', 1, 46.0000, 17)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (44, N'Gula Malacca', 2, 19.4500, 27)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (45, N'Rogede sild', 8, 9.5000, 5)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (46, N'Spegesild', 8, 12.0000, 95)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (47, N'Zaanse koeken', 3, 9.5000, 36)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (48, N'Chocolate', 3, 12.7500, 15)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (49, N'Maxilaku', 3, 20.0000, 10)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (50, N'Valkoinen suklaa', 3, 16.2500, 65)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (51, N'Manjimup Dried Apples', 7, 53.0000, 20)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (52, N'Filo Mix', 5, 7.0000, 38)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (53, N'Perth Pasties', 6, 32.8000, 0)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (54, N'Tourtière', 6, 7.4500, 21)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (56, N'Gnocchi di nonna Alice', 5, 38.0000, 21)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (57, N'Ravioli Angelo', 5, 19.5000, 36)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (58, N'Escargots de Bourgogne', 8, 13.2500, 62)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (59, N'Raclette Courdavault', 4, 55.0000, 79)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (60, N'Camembert Pierrot', 4, 34.0000, 19)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (61, N'Sirop d''érable', 2, 28.5000, 113)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (62, N'Tarte au sucre', 3, 49.3000, 17)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (63, N'Vegie-spread', 2, 43.9000, 24)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (64, N'Wimmers gute Semmelknödel', 5, 33.2500, 22)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (65, N'Louisiana Fiery Hot Pepper Sauce', 2, 21.0500, 76)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (66, N'Louisiana Hot Spiced Okra', 2, 17.0000, 4)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (67, N'Laughing Lumberjack Lager', 1, 14.0000, 52)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (68, N'Scottish Longbreads', 3, 12.5000, 6)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (69, N'Gudbrandsdalsost', 4, 36.0000, 26)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (70, N'Outback Lager', 1, 15.0000, 15)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (71, N'Flotemysost', 4, 21.5000, 26)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (72, N'Mozzarella di Giovanni', 4, 34.8000, 14)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (73, N'Röd Kaviar', 8, 15.0000, 101)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (74, N'Longlife Tofu', 7, 10.0000, 4)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (75, N'Rhönbräu Klosterbier', 1, 7.7500, 125)
INSERT [dbo].[Product] ([ProductID], [ProductName], [CategoryID], [UnitPrice], [UnitsInstock]) VALUES (76, N'Lakkalikööri', 1, 18.0000, 57)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
ALTER TABLE [dbo].[ExceptionLog] ADD  DEFAULT (getdate()) FOR [Date_Time]
GO
/****** Object:  StoredProcedure [dbo].[adddata]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[adddata] (@id int, @firstname varchar(50), @lastname varchar(50),@city varchar(50))
as
begin 
Insert into datatable(Id,first_name,last_name,location) values(@id,@firstname,@lastname,@city);
end
GO
/****** Object:  StoredProcedure [dbo].[AddItem]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddItem] (@name varchar(50), @cat int, @price money, @stock smallint)
as
begin 
Insert into Product(ProductName,CategoryID, UnitPrice, UnitsInstock) values(@name, @cat, @price, @stock);
end
GO
/****** Object:  StoredProcedure [dbo].[AddLog]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddLog](@name varchar(200),@trace varchar(200),@message varchar(200))
as
begin
Insert into ExceptionLog(Function_Name,Stack_Trace,Ex_Message) values(@name,@trace,@message)
end
GO
/****** Object:  StoredProcedure [dbo].[CatChildren]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatChildren] (@id int)
as
begin
Select ProductID,ProductName from Product where CategoryID=@id
end
GO
/****** Object:  StoredProcedure [dbo].[Cats]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Cats]
as
begin
Select distinct CategoryID from Product
end
GO
/****** Object:  StoredProcedure [dbo].[col]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[col] (@columnName varchar(20))
as
begin
declare @sql nvarchar(max);
set @sql='Select ['+@columnName+'] from Product';
exec sp_executesql @sql
end
GO
/****** Object:  StoredProcedure [dbo].[DataCount]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DataCount] as
begin
Select count(ProductID) from Product
end
GO
/****** Object:  StoredProcedure [dbo].[del]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[del](@id varchar(100))
as 
begin
if(exists(select CustomerID from Customers where CustomerID=@id))
	delete from Customers where CustomerID=@id
end
GO
/****** Object:  StoredProcedure [dbo].[DeleteItem]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteItem](@id int)
as
begin
Delete from Product where ProductID=@id;
end
GO
/****** Object:  StoredProcedure [dbo].[FindItem]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FindItem] (@ColumnName varchar(50), @Key varchar(50))
as
begin
Select ProductID,ProductName,CategoryID ,UnitPrice,UnitsInstock from Product where @ColumnName like @Key
end
GO
/****** Object:  StoredProcedure [dbo].[getdata]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getdata](@id int, @firstname varchar(50) output, @lastname varchar(50) output, @city varchar(50) output)
as
begin
Select @firstname=first_name, @lastname=last_name, @city=location from datatable where Id = @id;
end
GO
/****** Object:  StoredProcedure [dbo].[GetElement]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetElement](@id int)
as
begin
SELECT ProductID,ProductName,CategoryID,UnitPrice,UnitsInstock from Product where ProductID=@id;
end
GO
/****** Object:  StoredProcedure [dbo].[getinfo]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getinfo]( @id int, @name varchar(100) OUTPUT, @type int output, @bal money output)
as
begin 
Select @name=HolderName,@type=AccountType, @bal=Balance from Accounts where ID=@id;
end
GO
/****** Object:  StoredProcedure [dbo].[GetItems]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetItems] (@start int, @end int)
as 
begin
with Temp as (Select ROW_NUMBER() over (order by ProductID asc) as "RowNumber", ProductID,ProductName,CategoryID,UnitPrice,UnitsInstock from Product)
Select ProductID,ProductName,CategoryID,UnitPrice,UnitsInstock From Temp where RowNumber between @start and @end
end
GO
/****** Object:  StoredProcedure [dbo].[GetItems1]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetItems1](@no int)
as
begin 
Select top(@no) * from Product;
end
GO
/****** Object:  StoredProcedure [dbo].[inser]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[inser] (@id varchar(100),@cname varchar(100),@city varchar(100))
as 
begin
INSERT INTO Customers(CustomerID,CompanyName,City) values(@id,@cname,@city);
end
GO
/****** Object:  StoredProcedure [dbo].[sel]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sel]
as 
begin
select * from Product where ProductName like '%Ch%';
select * from Product where ProductID like '%2%';
end
GO
/****** Object:  StoredProcedure [dbo].[up]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[up](@id varchar(100),@cname varchar(100), @contact varchar(100))
as
begin
update Customers set CompanyName=@cname,ContactName=@contact where CustomerID =@id;
end 
GO
/****** Object:  StoredProcedure [dbo].[UpdateItem]    Script Date: 21-Sep-21 8:30:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateItem]( @name varchar(50), @category int, @uprice money, @ustock smallint,@id int )
as
begin
Update Product set ProductName=@name,CategoryID=@category,UnitPrice=@uprice,UnitsInstock=@ustock where ProductID=@id
end
GO
