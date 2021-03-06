USE [user16]
GO
/****** Object:  Table [dbo].[id_Product_materials]    Script Date: 16.12.2021 11:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[id_Product_materials](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_id_Product_materials] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[id_type_materials]    Script Date: 16.12.2021 11:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[id_type_materials](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_id_type_materials] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[id_type_products]    Script Date: 16.12.2021 11:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[id_type_products](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_id_type_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[materials_short_s_import]    Script Date: 16.12.2021 11:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[materials_short_s_import](
	[Id] [int] NOT NULL,
	[Наименование материала] [nvarchar](255) NULL,
	[ Тип материала] [nvarchar](255) NULL,
	[Id_type_materials] [int] NULL,
	[ Количество в упаковке] [int] NULL,
	[ Единица измерения] [nvarchar](255) NULL,
	[ Количество на складе] [int] NULL,
	[ Минимальный возможный остаток] [int] NULL,
	[ Стоимость] [money] NULL,
 CONSTRAINT [PK_materials_short_s_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_materials]    Script Date: 16.12.2021 11:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_materials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Продукция] [nvarchar](255) NULL,
	[Наименование материала] [nvarchar](255) NULL,
	[Id_name_materials] [int] NULL,
	[Необходимое количество материала] [int] NULL,
 CONSTRAINT [PK_product_materials$] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products_s_import]    Script Date: 16.12.2021 11:21:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_s_import](
	[Id] [int] NOT NULL,
	[Наименование продукции] [nvarchar](255) NULL,
	[Артикул] [int] NULL,
	[Минимальная стоимость для агента] [money] NULL,
	[Изображение] [nvarchar](255) NULL,
	[Тип продукции] [nvarchar](255) NULL,
	[id_type_products] [int] NULL,
	[Количество человек для производства] [int] NULL,
	[Номер цеха для производства] [int] NULL,
	[Id_products] [int] NULL,
	[Id_materials] [int] NULL,
 CONSTRAINT [PK_products_s_import] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[id_Product_materials] ON 

INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (1, N'Вата белый 2x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (2, N'Вата розовый 1x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (3, N'Вата розовый 3x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (4, N'Вата розовый 3x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (5, N'Вата серый 0x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (6, N'Вата серый 1x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (7, N'Вата серый 3x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (8, N'Вата серый 3x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (9, N'Вата серый 3x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (10, N'Металлический стержень белый 0x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (11, N'Металлический стержень белый 2x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (12, N'Металлический стержень белый 3x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (13, N'Металлический стержень зеленый 2x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (14, N'Металлический стержень синий 0x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (15, N'Металлический стержень синий 3x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (16, N'Металлический стержень цветной 1x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (17, N'Металлический стержень цветной 3x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (18, N'Резинка белый 3x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (19, N'Резинка зеленый 0x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (20, N'Резинка зеленый 0x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (21, N'Резинка зеленый 1x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (22, N'Резинка зеленый 3x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (23, N'Резинка розовый 1x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (24, N'Резинка серый 0x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (25, N'Резинка серый 3x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (26, N'Резинка синий 1x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (27, N'Резинка синий 3x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (28, N'Резинка синий 3x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (29, N'Резинка цветной 0x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (30, N'Резинка цветной 0x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (31, N'Силикон белый 1x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (32, N'Силикон белый 2x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (33, N'Силикон зеленый 0x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (34, N'Силикон зеленый 3x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (35, N'Силикон розовый 1x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (36, N'Силикон серый 1x1')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (37, N'Силикон цветной 1x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (38, N'Ткань белый 1x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (39, N'Ткань белый 2x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (40, N'Ткань белый 3x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (41, N'Ткань зеленый 2x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (42, N'Ткань розовый 0x0')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (43, N'Ткань серый 0x3')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (44, N'Ткань синий 0x2')
INSERT [dbo].[id_Product_materials] ([id], [name]) VALUES (45, N'Ткань синий 2x0')
SET IDENTITY_INSERT [dbo].[id_Product_materials] OFF
GO
INSERT [dbo].[id_type_materials] ([id], [name]) VALUES (1, N' Вата')
INSERT [dbo].[id_type_materials] ([id], [name]) VALUES (2, N' Резинка')
INSERT [dbo].[id_type_materials] ([id], [name]) VALUES (3, N' Силикон')
INSERT [dbo].[id_type_materials] ([id], [name]) VALUES (4, N' Стержень')
INSERT [dbo].[id_type_materials] ([id], [name]) VALUES (5, N' Ткань')
GO
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (1, N'Держители')
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (2, N'Запасные части')
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (3, N'Маски')
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (4, N'На лицо')
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (5, N'Повязки')
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (6, N'Полнолицевые')
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (7, N'Полумаски')
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (8, N'Предфильтры')
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (9, N'Респираторы')
INSERT [dbo].[id_type_products] ([id], [name]) VALUES (10, N'Сменные части')
GO
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (1, N'Вата белый 2x0', N' Вата', 1, 8, N' кг', 983, 49, 38432.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (2, N'Вата розовый 1x0', N' Вата', 1, 3, N' м', 589, 32, NULL)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (3, N'Вата розовый 3x1', N' Вата', 1, 3, N' кг', 246, 41, 44015.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (4, N'Вата розовый 3x3', N' Вата', 1, 10, N' м', 536, 31, 2517.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (5, N'Вата серый 0x1', N' Вата', 1, 8, N' м', 25, 38, NULL)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (6, N'Вата серый 1x1', N' Вата', 1, 7, N' м', 191, 34, 6009.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (7, N'Вата серый 3x0', N' Вата', 1, 8, N' кг', 48, 32, 49181.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (8, N'Вата серый 3x2', N' Вата', 1, 5, N' кг', 471, 40, 20453.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (9, N'Вата серый 3x3', N' Вата', 1, 1, N' кг', 237, 12, 19528.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (10, N'Металлический стержень белый 0x2', N' Стержень', 4, 9, N' кг', 280, 12, 10633.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (11, N'Металлический стержень белый 2x2', N' Стержень', 4, 9, N' м', 65, 36, 36753.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (12, N'Металлический стержень белый 3x1', N' Стержень', 4, 9, N' м', 749, 30, 9136.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (13, N'Металлический стержень зеленый 2x2', N' Стержень', 4, 4, N' м', 478, 34, 32205.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (14, N'Металлический стержень синий 0x1', N' Стержень', 4, 9, N' м', 259, 20, 19715.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (15, N'Металлический стержень синий 3x1', N' Стержень', 4, 6, N' м', 336, 24, NULL)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (16, N'Металлический стержень цветной 1x2', N' Стержень', 4, 8, N' м', 173, 26, 26137.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (17, N'Металлический стержень цветной 3x1', N' Стержень', 4, 4, N' м', 988, 49, 55742.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (18, N'Резинка белый 3x3', N' Резинка', 2, 1, N' м', 586, 26, NULL)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (19, N'Резинка зеленый 0x0', N' Резинка', 2, 7, N' м', 594, 19, 42640.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (20, N'Резинка зеленый 0x3', N' Резинка', 2, 8, N' кг', 856, 17, 45349.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (21, N'Резинка зеленый 1x0', N' Резинка', 2, 8, N' кг', 256, 9, 32616.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (22, N'Резинка зеленый 3x0', N' Резинка', 2, 10, N' кг', 976, 40, 41227.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (23, N'Резинка розовый 1x0', N' Резинка', 2, 1, N' м', 265, 21, 36574.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (24, N'Резинка серый 0x0', N' Резинка', 2, 7, N' м', 395, 20, NULL)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (25, N'Резинка серый 3x3', N' Резинка', 2, 4, N' м', 373, 8, 51550.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (26, N'Резинка синий 1x0', N' Резинка', 2, 3, N' кг', 191, 11, 1407.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (27, N'Резинка синий 3x1', N' Резинка', 2, 4, N' кг', 232, 36, 36016.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (28, N'Резинка синий 3x2', N' Резинка', 2, 5, N' м', 284, 31, 44031.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (29, N'Резинка цветной 0x1', N' Резинка', 2, 8, N' м', 290, 32, 47198.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (30, N'Резинка цветной 0x2', N' Резинка', 2, 10, N' м', 189, 31, 55495.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (31, N'Резинка цветной 1x1', N' Резинка', 2, 8, N' м', 347, 13, 26244.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (32, N'Силикон белый 0x3', N' Силикон', 3, 8, N' кг', 307, 17, 12097.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (33, N'Силикон белый 1x2', N' Силикон', 3, 2, N' м', 793, 30, 33801.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (34, N'Силикон белый 1x3', N' Силикон', 3, 4, N' кг', 345, 46, 13550.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (35, N'Силикон белый 2x0', N' Силикон', 3, 10, N' м', 851, 38, 22538.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (36, N'Силикон зеленый 0x3', N' Силикон', 3, 9, N' кг', 124, 35, 24117.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (37, N'Силикон зеленый 3x1', N' Силикон', 3, 2, N' м', 776, 46, 17312.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (38, N'Силикон розовый 1x3', N' Силикон', 3, 9, N' м', 997, 25, 33874.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (39, N'Силикон серый 1x1', N' Силикон', 3, 2, N' м', 981, 12, 2343.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (40, N'Силикон цветной 1x0', N' Силикон', 3, 10, N' м', 843, 28, 34664.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (41, N'Ткань белый 1x3', N' Ткань', 5, 8, N' м', 492, 9, 38232.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (42, N'Ткань белый 2x2', N' Ткань', 5, 10, N' м', 713, 18, 13742.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (43, N'Ткань белый 3x2', N' Ткань', 5, 9, N' м', 398, 25, 782.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (44, N'Ткань зеленый 2x2', N' Ткань', 5, 4, N' м', 692, 7, 55083.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (45, N'Ткань розовый 0x0', N' Ткань', 5, 3, N' м', 654, 29, 41101.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (46, N'Ткань серый 0x3', N' Ткань', 5, 10, N' м', 965, 17, 15210.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (47, N'Ткань синий 0x2', N' Ткань', 5, 8, N' кг', 841, 21, 27338.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (48, N'Ткань синий 2x0', N' Ткань', 5, 4, N' м', 146, 16, 19507.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (49, N'Ткань синий 3x3', N' Ткань', 5, 5, N' м', 387, 39, 32910.0000)
INSERT [dbo].[materials_short_s_import] ([Id], [Наименование материала], [ Тип материала], [Id_type_materials], [ Количество в упаковке], [ Единица измерения], [ Количество на складе], [ Минимальный возможный остаток], [ Стоимость]) VALUES (50, N'Ткань цветной 2x1', N' Ткань', 5, 2, N' м', 993, 34, 15628.0000)
GO
SET IDENTITY_INSERT [dbo].[product_materials] ON 

INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (1, N'Маска из нетканого материала KN95', N'Вата серый 3x3', 9, 2)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (2, N'Маска из нетканого материала KN95', N'Резинка розовый 1x0', 23, 15)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (3, N'Маска из нетканого материала KN95', N'Силикон зеленый 3x1', 34, 5)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (4, N'Маска из нетканого материала KN95', N'Резинка зеленый 3x0', 22, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (5, N'Маска одноразовая трехслойная из нетканого материала, нестерильная', N'Резинка белый 3x3', 18, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (6, N'Маска одноразовая трехслойная из нетканого материала, нестерильная', N'Резинка зеленый 1x0', 21, 20)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (7, N'Повязка санитарно–гигиеническая многоразовая с логотипом СОЮЗСПЕЦОДЕЖДА', N'Металлический стержень цветной 3x1', 17, 16)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (8, N'Повязка санитарно–гигиеническая многоразовая с логотипом СОЮЗСПЕЦОДЕЖДА', N'Вата серый 0x1', 5, 5)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (9, N'Повязка санитарно–гигиеническая многоразовая с принтом', N'Силикон зеленый 3x1', 34, 4)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (10, N'Повязка санитарно–гигиеническая многоразовая с принтом', N'Ткань розовый 0x0', 42, 18)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (11, N'Повязка санитарно–гигиеническая многоразовая с принтом', N'Ткань зеленый 2x2', 41, 14)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (12, N'Повязка санитарно–гигиеническая многоразовая с принтом', N'Вата белый 2x0', 1, 11)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (13, N'Повязка санитарно–гигиеническая многоразовая с принтом', N'Ткань серый 0x3', 43, 7)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (14, N'Повязка санитарно–гигиеническая многоразовая черная', N'Ткань розовый 0x0', 42, 18)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (15, N'Повязка санитарно–гигиеническая многоразовая черная', N'Резинка цветной 0x1', 29, 11)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (16, N'Повязка санитарно–гигиеническая многоразовая черная', N'Металлический стержень белый 0x2', 10, 9)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (17, N'Повязка санитарно–гигиеническая многоразовая черная', N'Резинка зеленый 3x0', 22, 2)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (18, N'Полумаска "Elipse" (Элипс) A1P3', N'Ткань синий 0x2', 44, 16)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (19, N'Полумаска "Elipse" (Элипс) A1P3', N'Силикон цветной 1x0', 37, 16)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (20, N'Полумаска "Elipse" (Элипс) A1P3', N'Вата розовый 3x3', 4, 3)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (21, N'Полумаска "Elipse" (Элипс) A2P3', N'Ткань розовый 0x0', 42, 2)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (22, N'Полумаска "Elipse" (Элипс) A2P3', N'Ткань синий 2x0', 45, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (23, N'Полумаска "Elipse" (Элипс) A2P3', N'Металлический стержень синий 0x1', 14, 9)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (24, N'Полумаска "Elipse" (Элипс) ABEK1', N'Силикон зеленый 3x1', 34, 13)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (25, N'Полумаска "Elipse" (Элипс) ABEK1', N'Силикон белый 1x3', 31, 15)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (26, N'Полумаска "Elipse" (Элипс) ABEK1', N'Вата серый 0x1', 5, 2)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (27, N'Полумаска "Elipse" (Элипс) ABEK1P3', N'Резинка синий 3x1', 27, 17)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (28, N'Полумаска "Elipse" (Элипс) P3 (анти-запах)', N'Вата серый 3x3', 9, 18)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (29, N'Полумаска "Elipse" (Элипс) А1', N'Резинка цветной 0x1', 29, 20)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (30, N'Полумаска "Moon" (Элипс) P3', N'Металлический стержень белый 0x2', 10, 12)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (31, N'Полумаска "Moon" (Элипс) P3', N'Силикон розовый 1x3', 35, 10)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (32, N'Респиратор "Алина" 110', N'Металлический стержень зеленый 2x2', 13, 1)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (33, N'Респиратор "Алина" 110', N'Силикон зеленый 0x3', 33, 9)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (34, N'Респиратор "Алина" 200', N'Резинка белый 3x3', 18, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (35, N'Респиратор "Алина" 200', N'Резинка синий 1x0', 26, 4)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (36, N'Респиратор "Алина" 200', N'Металлический стержень белый 3x1', 12, 16)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (37, N'Респиратор "Алина" 310', N'Резинка синий 3x2', 28, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (38, N'Респиратор "Алина" 310', N'Ткань белый 2x2', 39, 8)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (39, N'Респиратор "Алина" АВ', N'Резинка розовый 1x0', 23, 9)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (40, N'Респиратор "Алина" АВ', N'Ткань розовый 0x0', 42, 20)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (41, N'Респиратор "Алина" П', N'Вата серый 3x3', 9, 9)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (42, N'Респиратор "Алина" П', N'Вата розовый 3x1', 3, 13)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (43, N'Респиратор "Алина" П', N'Ткань синий 0x2', 44, 1)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (44, N'Респиратор "Алина" П', N'Металлический стержень белый 3x1', 12, 18)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (45, N'Респиратор "Нева" 109', N'Металлический стержень белый 2x2', 11, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (46, N'Респиратор "Нева" 109', N'Ткань серый 0x3', 43, 4)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (47, N'Респиратор "Нева" 200', N'Резинка синий 1x0', 26, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (48, N'Респиратор "Нева" 200', N'Силикон белый 1x3', 31, 13)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (49, N'Респиратор "Нева" 210', N'Металлический стержень синий 3x1', 15, 2)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (50, N'Респиратор "Нева" 310', N'Силикон белый 2x0', 32, 17)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (51, N'Респиратор "Нева" 310', N'Резинка зеленый 3x0', 22, 16)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (52, N'Респиратор "Юлия" 109', N'Ткань синий 0x2', 44, 18)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (53, N'Респиратор "Юлия" 109', N'Ткань белый 1x3', 38, 8)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (54, N'Респиратор "Юлия" 119', N'Ткань белый 3x2', 40, 3)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (55, N'Респиратор "Юлия" 209', N'Силикон серый 1x1', 36, 15)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (56, N'Респиратор "Юлия" 209', N'Резинка синий 1x0', 26, 6)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (57, N'Респиратор "Юлия" 209', N'Металлический стержень синий 0x1', 14, 6)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (58, N'Респиратор "Юлия" 215', N'Резинка зеленый 1x0', 21, 1)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (59, N'Респиратор "Юлия" 215', N'Ткань белый 3x2', 40, 1)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (60, N'Респиратор "Юлия" 215', N'Металлический стержень белый 0x2', 10, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (61, N'Респиратор "Юлия" 219', N'Металлический стержень цветной 3x1', 17, 2)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (62, N'Респиратор "Юлия" 219', N'Резинка серый 0x0', 24, 17)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (63, N'Респиратор "Юлия" 219', N'Резинка цветной 0x2', 30, 2)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (64, N'Респиратор "Юлия" 319', N'Силикон зеленый 3x1', 34, 12)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (65, N'Респиратор 3M 8101 противоаэрозольный', N'Силикон белый 1x3', 31, 3)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (66, N'Респиратор 3M 8101 противоаэрозольный', N'Металлический стержень цветной 1x2', 16, 1)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (67, N'Респиратор 3M 8101 противоаэрозольный', N'Резинка цветной 0x2', 30, 3)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (68, N'Респиратор 3M 8102 противоаэрозольный', N'Резинка синий 3x1', 27, 4)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (69, N'Респиратор 3M 8102 противоаэрозольный', N'Ткань белый 3x2', 40, 14)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (70, N'Респиратор 3M 8102 противоаэрозольный', N'Ткань белый 2x2', 39, 12)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (71, N'Респиратор 3M 8112 противоаэрозольный с клапаном выдоха', N'Резинка синий 3x2', 28, 20)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (72, N'Респиратор 3M 8122', N'Вата розовый 1x0', 2, 12)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (73, N'Респиратор 3M 8122', N'Металлический стержень синий 3x1', 15, 15)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (74, N'Респиратор 3M 8122', N'Металлический стержень белый 3x1', 12, 2)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (75, N'Респиратор 3M 8122', N'Силикон цветной 1x0', 37, 4)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (76, N'Респиратор 3M с клапаном 9162', N'Вата серый 3x0', 7, 11)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (77, N'Респиратор 9101 FFP1', N'Резинка цветной 0x1', 29, 14)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (78, N'Респиратор 9101 FFP1', N'Ткань белый 1x3', 38, 9)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (79, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', N'Силикон белый 1x3', 31, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (80, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', N'Резинка зеленый 0x0', 19, 5)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (81, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', N'Металлический стержень синий 0x1', 14, 5)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (82, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', N'Резинка серый 3x3', 25, 3)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (83, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', N'Вата серый 3x2', 8, 13)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (84, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', N'Металлический стержень белый 0x2', 10, 10)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (85, N'Респиратор RK6020', N'Ткань серый 0x3', 43, 10)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (86, N'Респиратор RK6021', N'Ткань розовый 0x0', 42, 9)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (87, N'Респиратор RK6021', N'Силикон белый 1x3', 31, 10)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (88, N'Респиратор RK6021', N'Металлический стержень белый 3x1', 12, 7)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (89, N'Респиратор RK6030', N'Ткань серый 0x3', 43, 20)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (90, N'Респиратор RK6030', N'Резинка зеленый 3x0', 22, 1)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (91, N'Респиратор Алина 210', N'Металлический стержень синий 0x1', 14, 4)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (92, N'Респиратор Алина 211', N'Вата серый 1x1', 6, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (93, N'Респиратор противоаэрозольный 9312', N'Вата розовый 3x1', 3, 2)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (94, N'Респиратор противоаэрозольный 9312', N'Резинка зеленый 0x3', 20, 20)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (95, N'Респиратор противоаэрозольный 9312', N'Металлический стержень синий 0x1', 14, 9)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (96, N'Респиратор противоаэрозольный 9312', N'Ткань серый 0x3', 43, 8)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (97, N'Респиратор противоаэрозольный 9322', N'Силикон розовый 1x3', 35, 4)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (98, N'Респиратор с клапаном 9926', N'Резинка серый 3x3', 25, 19)
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (99, N'Респиратор У-2К', N'Резинка зеленый 0x0', 19, 19)
GO
INSERT [dbo].[product_materials] ([Id], [Продукция], [Наименование материала], [Id_name_materials], [Необходимое количество материала]) VALUES (100, N'Респиратор-полумаска "3М" серия 6000', N'Резинка серый 0x0', 24, 17)
SET IDENTITY_INSERT [dbo].[product_materials] OFF
GO
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (1, N'Держатели предфильтра для масок и полумасок "3М" серии 6000', 58431, 264.0000, N'\products\5fb128cd80a06.jpg', N'Держители', 1, 1, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (2, N'Держатель предфильтра 5101 JETA', 4958041, 199.0000, N'\products\5fb128cd7d2cd.jpg', N'Запасные части', 2, 1, 7, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (3, N'Запасной фильтр к полумаске Исток-300 (РПГ-67) марка А', 67660, 110.0000, N'\products\5fb128cd78fce.jpg', N'Запасные части', 2, 3, 1, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (4, N'Запасной фильтр к полумаске Исток-300 (РПГ-67) марка В', 67661, NULL, N'\products\5fb128cd7518c.jpg', N'Запасные части', 2, 5, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (5, N'Запасные фильтры (пара) АВЕ1 к полумаскам "Адвантейдж"', 59708, 1490.0000, N'\products\5fb128cd71db3.jpg', N'Запасные части', 2, 2, 3, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (6, N'Запасные фильтры к полумаске "Elipse" (Элипс) A1P3', 59917, 2190.0000, N'\products\5fb128cd6a2b6.jpg', N'Запасные части', 2, 1, 3, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (7, N'Запасные фильтры к полумаске "Elipse" (Элипс) ABEK1', 59916, 2590.0000, N'\products\5fb128cd6e4ee.jpg', N'Запасные части', 2, 3, 10, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (8, N'Запасные фильтры к полумаске "Elipse" (Элипс) P3', 59918, 1390.0000, N'\products\5fb128cd66df6.jpg', N'Запасные части', 2, 4, 7, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (9, N'Запасные фильтры к полумаске "Elipse" (Элипс) P3 (анти-запах)', 59919, NULL, N'\products\5fb128cd63666.jpg', N'Запасные части', 2, 4, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (10, N'Запасные фильтры к полумаске Elipse (Элипс) А1', 5027921, 1290.0000, N'\products\5fb128cd5bb7d.jpg', N'Запасные части', 2, 3, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (11, N'Запасные фильтры к полумаске Elipse A2P3', 5027961, 2590.0000, N'\products\5fb128cd5838d.jpg', N'Запасные части', 2, 2, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (12, N'Запасные фильтры к полумаске Elipse ABEK1P3', 5027978, NULL, N'\products\5fb128cd5433e.jpg', N'Сменные части', 10, 3, 6, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (13, N'Комплект для защиты дыхания J-SET 6500 JETA', 4969295, 2490.0000, N'\products\5fb128cd331c4.jpg', N'Полумаски', 7, 4, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (14, N'Лицевая маска Elipse Integra (Элипс интегра) P3 (анти-запах)', 60360, NULL, N'\products\5fb128cd3e7e4.jpg', N'На лицо', 4, 2, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (15, N'Лицевая маска Elipse Integra P3', 5029091, NULL, N'\products\5fb128cd3af5c.jpg', N'На лицо', 4, 5, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (16, N'Лицевая маска Elipse Integra А1P3', 5029610, 9890.0000, N'\products\5fb128cd3674d.jpg', N'Полумаски', 7, 2, 10, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (17, N'Маска из нетканого материала KN95', 5030981, 59.0000, N'\products\5fb128cc719a6.jpg', N'Маски', 3, 3, 5, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (18, N'Маска из нетканого материала с клапаном KN95', 5029784, 79.0000, N'\products\5fb128cc753e3.jpg', N'Маски', 3, 3, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (19, N'Маска одноразовая трехслойная из нетканого материала, нестерильная', 5028247, 6.0000, N'\products\5fb128cc69235.jpg', N'Повязки', 5, 3, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (20, N'Повязка санитарно–гигиеническая многоразовая с логотипом СОЮЗСПЕЦОДЕЖДА', 5028556, 49.0000, NULL, N'Повязки', 5, 5, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (21, N'Повязка санитарно–гигиеническая многоразовая с принтом', 5028229, 49.0000, NULL, N'Повязки', 5, 2, 10, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (22, N'Повязка санитарно–гигиеническая многоразовая черная', 5028272, 59.0000, NULL, N'Повязки', 5, 4, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (23, N'Полнолицевая маска 5950 JETA', 4958042, 11490.0000, N'\products\5fb128cd41ece.jpg', N'На лицо', 4, 1, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (24, N'Полумаска "Elipse" (Элипс) A1P3', 59921, 5690.0000, N'\products\5fb128cd2215f.jpg', N'Полумаски', 7, 3, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (25, N'Полумаска "Elipse" (Элипс) A2P3', 5027965, 4490.0000, N'\products\5fb128cd10ec2.jpg', N'Полумаски', 7, 4, 2, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (26, N'Полумаска "Elipse" (Элипс) ABEK1', 59920, 5690.0000, N'\products\5fb128cd268bf.jpg', N'Полумаски', 7, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (27, N'Полумаска "Elipse" (Элипс) ABEK1P3', 5027980, 4990.0000, N'\products\5fb128cd0d0b1.jpg', N'Респираторы', 9, 2, 1, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (28, N'Полумаска "Elipse" (Элипс) P3', 59922, 2690.0000, N'\products\5fb128cd1e2b9.jpg', N'Полумаски', 7, 5, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (29, N'Полумаска "Elipse" (Элипс) P3 (анти-запах)', 59923, 2790.0000, N'\products\5fb128cd19baa.jpg', N'Полумаски', 7, 1, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (30, N'Полумаска "Elipse" (Элипс) А1', 5027958, 3190.0000, N'\products\5fb128cd157f9.jpg', N'Полумаски', 7, 2, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (31, N'Полумаска "Moon" (Элипс) P3', 59922, 2690.0000, N'\products\5fb128cd1e2b9.jpg', N'Полумаски', 7, 5, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (32, N'Полумаска "Moon" A2P3', 5027965, NULL, N'\products\5fb128cd10ec2.jpg', N'Полумаски', 7, 4, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (33, N'Полумаска "Moon" ABEK1', 59920, 5690.0000, N'\products\5fb128cd268bf.jpg', N'Полумаски', 7, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (34, N'Полумаска "Moon" ABEK1P3', 5027980, 4990.0000, N'\products\5fb128cd0d0b1.jpg', N'Респираторы', 9, 2, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (35, N'Полумаска "Moon" P3 (анти-запах)', 59923, NULL, N'\products\5fb128cd19baa.jpg', N'Полумаски', 7, 1, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (36, N'Полумаска "Moon" А1', 5027958, NULL, N'\products\5fb128cd157f9.jpg', N'Полумаски', 7, 2, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (37, N'Полумаска "Sunset" (Элипс) P3', 59922, 2690.0000, N'\products\5fb128cd1e2b9.jpg', N'Полумаски', 7, 5, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (38, N'Полумаска "Sunset" A1P3', 59921, NULL, N'\products\5fb128cd2215f.jpg', N'Полумаски', 7, 3, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (39, N'Полумаска "Sunset" A2P3', 5027965, 4490.0000, N'\products\5fb128cd10ec2.jpg', N'Полумаски', 7, 4, 2, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (40, N'Полумаска "Sunset" ABEK1', 59920, 5690.0000, N'\products\5fb128cd268bf.jpg', N'Полумаски', 7, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (41, N'Полумаска "Sunset" ABEK1P3', 5027980, 4990.0000, N'\products\5fb128cd0d0b1.jpg', N'Респираторы', 9, 2, 1, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (42, N'Полумаска "Sunset" P3 (анти-запах)', 59923, 2790.0000, N'\products\5fb128cd19baa.jpg', N'Полумаски', 7, 1, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (43, N'Полумаска "Sunset" А1', 5027958, 3190.0000, N'\products\5fb128cd157f9.jpg', N'Полумаски', 7, 2, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (44, N'Предфильтр Р2 (4 шт) 6020 JETA', 4958039, 380.0000, N'\products\5fb128cd8417e.jpg', N'Держители', 1, 1, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (45, N'Предфильтры для масок и полумасок "3М" серии 6000', 58917, 409.0000, N'\products\5fb128cd8818d.jpg', N'Предфильтры', 8, 5, 3, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (46, N'Респиратор "Алина" 100', 58827, NULL, N'\products\5fb128cc8f4dd.jpg', N'Респираторы', 9, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (47, N'Респиратор "Алина" 110', 59324, 129.0000, N'\products\5fb128cc8b750.jpg', N'Респираторы', 9, 3, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (48, N'Респиратор "Алина" 200', 58826, 149.0000, N'\products\5fb128ccc9a9e.jpg', N'Респираторы', 9, 4, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (49, N'Респиратор "Алина" 310', 58850, NULL, N'\products\5fb128ccf3dd2.jpg', N'Респираторы', 9, 5, 6, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (50, N'Респиратор "Алина" АВ', 58584, 249.0000, N'\products\5fb128ccd133c.jpg', N'Респираторы', 9, 2, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (51, N'Респиратор "Алина" П', 58825, 290.0000, N'\products\5fb128cccdbee.jpg', N'Респираторы', 9, 4, 5, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (52, N'Респиратор "Амперметр" 109', 59474, 129.0000, N'\products\5fb128cc97ff4.jpg', N'Респираторы', 9, 4, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (53, N'Респиратор "Амперметр" 220', 59898, 129.0000, N'\products\5fb128cc9414b.jpg', N'Респираторы', 9, 4, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (54, N'Респиратор "Витязь" 100', 58827, 99.0000, N'\products\5fb128cc8f4dd.jpg', N'Респираторы', 9, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (55, N'Респиратор "Витязь" 220', 59324, NULL, N'\products\5fb128cc8b750.jpg', N'Респираторы', 9, 3, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (56, N'Респиратор "Волга" 109', 59898, 129.0000, N'\products\5fb128cc9414b.jpg', N'Респираторы', 9, 4, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (57, N'Респиратор "Волга" 220', 58827, 99.0000, N'\products\5fb128cc8f4dd.jpg', N'Респираторы', 9, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (58, N'Респиратор "Красный" 100', 58827, 99.0000, N'\products\5fb128cc8f4dd.jpg', N'Респираторы', 9, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (59, N'Респиратор "Красный" 220', 59324, 129.0000, N'\products\5fb128cc8b750.jpg', N'Респираторы', 9, 3, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (60, N'Респиратор "Мадонна" 110', 59324, NULL, N'\products\5fb128cc8b750.jpg', N'Респираторы', 9, 3, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (61, N'Респиратор "Мадонна" 220', 59474, 129.0000, N'\products\5fb128cc97ff4.jpg', N'Респираторы', 9, 4, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (62, N'Респиратор "Нева" 109', 59898, NULL, N'\products\5fb128cc9414b.jpg', N'Респираторы', 9, 4, 1, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (63, N'Респиратор "Нева" 200', 59735, 79.0000, N'\products\5fb128ccd8ff6.jpg', N'Респираторы', 9, 2, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (64, N'Респиратор "Нева" 210', 59736, 109.0000, N'\products\5fb128ccd5dc2.jpg', N'Респираторы', 9, 1, 3, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (65, N'Респиратор "Нева" 310', 59739, 289.0000, N'\products\5fb128cd0544b.jpg', N'Респираторы', 9, 4, 3, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (66, N'Респиратор "Серёга" 109', 59898, 129.0000, N'\products\5fb128cc9414b.jpg', N'Респираторы', 9, 4, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (67, N'Респиратор "Серёга" 220', 58827, 99.0000, N'\products\5fb128cc8f4dd.jpg', N'Респираторы', 9, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (68, N'Респиратор "Фирюза" 110', 59324, NULL, N'\products\5fb128cc8b750.jpg', N'Респираторы', 9, 3, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (69, N'Респиратор "Фирюза" 220', 59474, 129.0000, N'\products\5fb128cc97ff4.jpg', N'Респираторы', 9, 4, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (70, N'Респиратор "Юлия" 109', 59474, 129.0000, N'\products\5fb128cc97ff4.jpg', N'Респираторы', 9, 4, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (71, N'Респиратор "Юлия" 119', 59472, 149.0000, N'\products\5fb128cc9bd36.jpg', N'Респираторы', 9, 3, 7, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (72, N'Респиратор "Юлия" 209', 59470, 179.0000, N'\products\5fb128cce7971.jpg', N'Респираторы', 9, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (73, N'Респиратор "Юлия" 215', 59473, 349.0000, N'\products\5fb128cce39fa.jpg', N'Респираторы', 9, 3, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (74, N'Респиратор "Юлия" 219', 59475, 249.0000, N'\products\5fb128cce0042.jpg', N'Респираторы', 9, 4, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (75, N'Респиратор "Юлия" 319', 59471, 490.0000, N'\products\5fb128cd08e3f.jpg', N'Респираторы', 9, 4, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (76, N'Респиратор 3M 8101 противоаэрозольный', 58375, 149.0000, N'\products\5fb128cc87b90.jpg', N'Респираторы', 9, 1, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (77, N'Респиратор 3M 8102 противоаэрозольный', 58466, 199.0000, N'\products\5fb128ccae21a.jpg', N'Респираторы', 9, 3, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (78, N'Респиратор 3M 8112 противоаэрозольный с клапаном выдоха', 58376, 299.0000, N'\products\5fb128cc84474.jpg', N'Респираторы', 9, 3, 1, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (79, N'Респиратор 3M 8122', 58445, 299.0000, N'\products\5fb128ccb1958.jpg', N'Респираторы', 9, 3, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (80, N'Респиратор 3M 9152 FFP2', 5028048, 390.0000, N'\products\5fb128cca31d9.jpg', N'Респираторы', 9, 2, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (81, N'Респиратор 3M с клапаном 9162', 5033136, 349.0000, N'\products\5fb128cc9f069.jpg', N'Респираторы', 9, 2, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (82, N'Респиратор 9101 FFP1', 5026662, NULL, N'\products\5fb128cc7d798.jpg', N'Респираторы', 9, 5, 8, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (83, N'Респиратор M1200VWC FFP2 Delta Plus (Дельта Плюс)', 5031919, 349.0000, N'\products\5fb128ccb4e8c.jpg', N'Респираторы', 9, 2, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (84, N'Респиратор M1300V2С FFP3 Delta Plus (Дельта Плюс)', 5031924, 490.0000, N'\products\5fb128cceae7c.jpg', N'Респираторы', 9, 5, 2, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (85, N'Респиратор RK6020', 5030020, 129.0000, N'\products\5fb128ccbd227.jpg', N'Респираторы', 9, 3, 5, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (86, N'Респиратор RK6021', 5030026, 290.0000, N'\products\5fb128ccb97a0.jpg', N'Респираторы', 9, 5, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (87, N'Респиратор RK6030', 5030022, 390.0000, N'\products\5fb128ccef256.jpg', N'Респираторы', 9, 3, 6, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (88, N'Респиратор Алина 210', 5030072, NULL, N'\products\5fb128ccc1592.jpg', N'Респираторы', 9, 1, 5, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (89, N'Респиратор Алина 211', 5030062, 290.0000, N'\products\5fb128ccc4a86.jpg', N'Респираторы', 9, 1, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (90, N'Респиратор полумаска НРЗ-0102 FFP2 NR D', 5027238, 149.0000, N'\products\5fb128ccdca1e.jpg', N'Респираторы', 9, 4, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (91, N'Респиратор противоаэрозольный 9312', 59043, 399.0000, N'\products\5fb128cc80a10.jpg', N'Респираторы', 9, 4, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (92, N'Респиратор противоаэрозольный 9322', 58796, 449.0000, N'\products\5fb128cca6910.jpg', N'Респираторы', 9, 4, 4, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (93, N'Респиратор с клапаном 9926', 58568, 699.0000, N'\products\5fb128cca9d9b.jpg', N'Респираторы', 9, 3, 5, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (94, N'Респиратор У-2К', 58953, 95.0000, N'\products\5fb128cc7941f.jpg', N'Маски', 3, 2, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (95, N'Респиратор-полумаска "3М" серия 6000', 58974, 3490.0000, N'\products\5fb128cd2ab69.jpg', N'Полумаски', 7, 5, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (96, N'Респиратор-полумаска Исток 300/400', 59334, 490.0000, N'\products\5fb128cd2ef7a.jpg', N'Полумаски', 7, 4, 7, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (97, N'Сменный патрон с фильтром 6054 для масок и полумасок "3М" серии 6000', 59271, NULL, N'\products\5fb128cd4672c.jpg', N'Полнолицевые', 6, 4, 2, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (98, N'Сменный патрон с фильтром 6059 для масок и полумасок "3М" серии 6000', 59253, NULL, N'\products\5fb128cd4c99d.jpg', N'Сменные части', 10, 2, NULL, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (99, N'Сменный фильтр 6510 A1 JETA', 5028197, 990.0000, N'\products\5fb128cd50a70.jpg', N'Сменные части', 10, 5, 9, NULL, NULL)
INSERT [dbo].[products_s_import] ([Id], [Наименование продукции], [Артикул], [Минимальная стоимость для агента], [Изображение], [Тип продукции], [id_type_products], [Количество человек для производства], [Номер цеха для производства], [Id_products], [Id_materials]) VALUES (100, N'Сменный фильтр 6541 ABEK1 JETA', 4958040, 1290.0000, N'\products\5fb128cd5ff78.jpg', N'Сменные части', 10, 4, 6, NULL, NULL)
GO
ALTER TABLE [dbo].[materials_short_s_import]  WITH CHECK ADD  CONSTRAINT [FK_materials_short_s_import_id_type_materials] FOREIGN KEY([Id_type_materials])
REFERENCES [dbo].[id_type_materials] ([id])
GO
ALTER TABLE [dbo].[materials_short_s_import] CHECK CONSTRAINT [FK_materials_short_s_import_id_type_materials]
GO
ALTER TABLE [dbo].[product_materials]  WITH CHECK ADD  CONSTRAINT [FK_product_materials_id_Product_materials] FOREIGN KEY([Id_name_materials])
REFERENCES [dbo].[id_Product_materials] ([id])
GO
ALTER TABLE [dbo].[product_materials] CHECK CONSTRAINT [FK_product_materials_id_Product_materials]
GO
ALTER TABLE [dbo].[products_s_import]  WITH CHECK ADD  CONSTRAINT [FK_products_s_import_id_type_products] FOREIGN KEY([id_type_products])
REFERENCES [dbo].[id_type_products] ([id])
GO
ALTER TABLE [dbo].[products_s_import] CHECK CONSTRAINT [FK_products_s_import_id_type_products]
GO
ALTER TABLE [dbo].[products_s_import]  WITH CHECK ADD  CONSTRAINT [FK_products_s_import_materials_short_s_import] FOREIGN KEY([Id_materials])
REFERENCES [dbo].[materials_short_s_import] ([Id])
GO
ALTER TABLE [dbo].[products_s_import] CHECK CONSTRAINT [FK_products_s_import_materials_short_s_import]
GO
ALTER TABLE [dbo].[products_s_import]  WITH CHECK ADD  CONSTRAINT [FK_products_s_import_product_materials] FOREIGN KEY([Id_products])
REFERENCES [dbo].[product_materials] ([Id])
GO
ALTER TABLE [dbo].[products_s_import] CHECK CONSTRAINT [FK_products_s_import_product_materials]
GO
