USE [Salon krasoti]
GO
/****** Object:  Table [dbo].[Posetit]    Script Date: 17.04.2023 10:55:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posetit](
	[Id_pos] [int] NOT NULL,
	[FIO] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Posetit] PRIMARY KEY CLUSTERED 
(
	[Id_pos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sotrudnik]    Script Date: 17.04.2023 10:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sotrudnik](
	[ID_sotr] [int] NOT NULL,
	[Name_sotr] [nvarchar](50) NULL,
	[Dolzn] [nvarchar](50) NULL,
	[Login] [nvarchar](50) NULL,
	[Pass] [nvarchar](50) NULL,
 CONSTRAINT [PK_Sotrudnik] PRIMARY KEY CLUSTERED 
(
	[ID_sotr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zapisi]    Script Date: 17.04.2023 10:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zapisi](
	[Id_zapis] [int] NOT NULL,
	[FIO] [nvarchar](50) NOT NULL,
	[Name_usl] [nvarchar](50) NULL,
	[Data_z] [date] NULL,
	[Id_sotr] [int] NULL,
 CONSTRAINT [PK_Zapisi] PRIMARY KEY CLUSTERED 
(
	[Id_zapis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zayavki]    Script Date: 17.04.2023 10:55:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zayavki](
	[Id_z] [int] NOT NULL,
	[Name_usl] [nvarchar](50) NULL,
	[Data_z] [date] NULL,
	[Vremya] [time](3) NULL,
	[Id_pos] [int] NULL,
	[ID_sotr] [int] NULL,
 CONSTRAINT [PK_Zayavki] PRIMARY KEY CLUSTERED 
(
	[Id_z] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Posetit] ([Id_pos], [FIO], [Login], [Pass], [Telephone]) VALUES (12, N'Соболева Светлана Генадьевна', N'Svetlana', N'6789', N'89195673490')
INSERT [dbo].[Posetit] ([Id_pos], [FIO], [Login], [Pass], [Telephone]) VALUES (34, N'Калинин Иван Дмитриевич', N'Ivan', N'8907', N'89642347856')
INSERT [dbo].[Posetit] ([Id_pos], [FIO], [Login], [Pass], [Telephone]) VALUES (45, N'Долгушин Кирилл Сергеевич', N'Kirill', N'2334', N'89846758923')
GO
INSERT [dbo].[Sotrudnik] ([ID_sotr], [Name_sotr], [Dolzn], [Login], [Pass]) VALUES (23, N'Ekaterina', N'косметолог', N'Ekaterina', N'7823')
INSERT [dbo].[Sotrudnik] ([ID_sotr], [Name_sotr], [Dolzn], [Login], [Pass]) VALUES (54, N'Irina', N'мастер ногтевого сервиса', N'Irina', N'3245')
INSERT [dbo].[Sotrudnik] ([ID_sotr], [Name_sotr], [Dolzn], [Login], [Pass]) VALUES (67, N'Ivan', N'Администратор', N'Ivan', N'5678')
INSERT [dbo].[Sotrudnik] ([ID_sotr], [Name_sotr], [Dolzn], [Login], [Pass]) VALUES (78, N'Svetlana', N'парикмахер-стилист', N'Svetlana', N'7890')
INSERT [dbo].[Sotrudnik] ([ID_sotr], [Name_sotr], [Dolzn], [Login], [Pass]) VALUES (89, N'Anna', N'стилист-визажист', N'Anna', N'7346')
GO
INSERT [dbo].[Zapisi] ([Id_zapis], [FIO], [Name_usl], [Data_z], [Id_sotr]) VALUES (76, N'Долгушин Кирилл Сергеевич', N'мужская стрижка', CAST(N'2023-04-12' AS Date), 78)
INSERT [dbo].[Zapisi] ([Id_zapis], [FIO], [Name_usl], [Data_z], [Id_sotr]) VALUES (88, N'Соболева Светлана Генадьевна', N'Маникюр(наращивание)', CAST(N'2023-04-13' AS Date), 54)
INSERT [dbo].[Zapisi] ([Id_zapis], [FIO], [Name_usl], [Data_z], [Id_sotr]) VALUES (99, N'Калинин Иван Дмитриевич', N'Мужская стрижка', CAST(N'2023-04-14' AS Date), 78)
GO
INSERT [dbo].[Zayavki] ([Id_z], [Name_usl], [Data_z], [Vremya], [Id_pos], [ID_sotr]) VALUES (33, N'Мужская стрижка', CAST(N'2023-04-14' AS Date), CAST(N'10:30:00' AS Time), 34, 78)
INSERT [dbo].[Zayavki] ([Id_z], [Name_usl], [Data_z], [Vremya], [Id_pos], [ID_sotr]) VALUES (55, N'мужская стрижка', CAST(N'2023-04-12' AS Date), CAST(N'12:00:00' AS Time), 45, 78)
INSERT [dbo].[Zayavki] ([Id_z], [Name_usl], [Data_z], [Vremya], [Id_pos], [ID_sotr]) VALUES (66, N'Маникюр(наращивание)', CAST(N'2023-04-13' AS Date), CAST(N'14:20:00' AS Time), 12, 54)
GO
ALTER TABLE [dbo].[Zapisi]  WITH CHECK ADD  CONSTRAINT [FK_Zapisi_Sotrudnik] FOREIGN KEY([Id_sotr])
REFERENCES [dbo].[Sotrudnik] ([ID_sotr])
GO
ALTER TABLE [dbo].[Zapisi] CHECK CONSTRAINT [FK_Zapisi_Sotrudnik]
GO
ALTER TABLE [dbo].[Zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Zayavki_Posetit] FOREIGN KEY([Id_pos])
REFERENCES [dbo].[Posetit] ([Id_pos])
GO
ALTER TABLE [dbo].[Zayavki] CHECK CONSTRAINT [FK_Zayavki_Posetit]
GO
ALTER TABLE [dbo].[Zayavki]  WITH CHECK ADD  CONSTRAINT [FK_Zayavki_Sotrudnik] FOREIGN KEY([ID_sotr])
REFERENCES [dbo].[Sotrudnik] ([ID_sotr])
GO
ALTER TABLE [dbo].[Zayavki] CHECK CONSTRAINT [FK_Zayavki_Sotrudnik]
GO
