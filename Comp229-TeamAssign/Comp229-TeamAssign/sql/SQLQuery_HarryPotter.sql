CREATE TABLE [dbo].[Customers] (
    [Customer_id] VARCHAR (255) NOT NULL,
    [FirstName]   VARCHAR (50)  NULL,
    [LastName]    VARCHAR (50)  NULL,
    [Address]     VARCHAR (50)  NULL,
    [School]      VARCHAR (50)  NULL,
    [Password]    VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([Customer_id] ASC)
);

INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'1', N'Mark', N'MacDonnell', N'1825 Heaven Road, AC8', N'Gryffindor', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'10', N'Dongryul', N'Kim', N'5929 Great Street, CU2', N'Slytherin', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'11', N'Admin', N'Admin', N'0 Here', N'Gryffindor', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'12', N'Sunny', N'Phan', N'6543 Wonderful Road, CC2', N'Gryffindor', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'13', N'Tingting', N'Nguyen', N'2211 Far East Drive, 3HU', N'Slytherin', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'14', N'Jimin', N'Park', N'1004 Cute Drive, ECC', N'Hufflepuff', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'15', N'Perfect', N'Lady', N'9007 Good Street, GUT', N'Ravenclaw', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'2', N'Yesol', N'Lee', N'5959 Great Street, CU2', N'Slytherin', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'3', N'Mikang', N'Kim', N'2818 HellGate Drive, C8C', N'Hufflepuff', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'4', N'Channing', N'Tatum', N'1818 Handsome Road, WOW', N'Ravenclaw', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'5', N'Changmin', N'Shin', N'1318 Cute Drive, ECC', N'Gryffindor', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'6', N'Jowon', N'Shiin', N'1995 Young Road, 2YG', N'Slytherin', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'7', N'David', N'Smith', N'5555 Nothing Avenue, C89', N'Hufflepuff', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'8', N'Soohwan', N'Lee', N'2918 Just Street, IU2', N'Ravenclaw', N'123')
INSERT INTO [dbo].[Customers] ([Customer_id], [FirstName], [LastName], [Address], [School], [Password]) VALUES (N'9', N'Ginger', N'Grace', N'3456 Something Drive, E99', N'Gryffindor', N'123')



CREATE TABLE [dbo].[Items_Books] (
    [Item_Books_id] INT          NOT NULL,
    [Name]          VARCHAR (50) NULL,
    [Price]         VARCHAR (50) NULL,
    [Quantity]      VARCHAR (50) NULL,
    [Score]         VARCHAR (50) NULL,
    [Description]   VARCHAR (50) NULL,
    [ImgUrl]        VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Item_Books_id] ASC)
);



INSERT INTO [dbo].[Items_Books] ([Item_Books_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (1, N'The Book of Spells 1', N'12', N'28', N'3', N'Required textbook for first year students', N'img/Book_of_Spells.png')
INSERT INTO [dbo].[Items_Books] ([Item_Books_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (2, N'The Book of Spells 2', N'14', N'16', N'4', N'Required textbook for second year students', N'img/Book_of_Spells_2.png')
INSERT INTO [dbo].[Items_Books] ([Item_Books_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (3, N'A Beginner''s Guide', N'16', N'33', N'4', N'Used as an introduction to Transfiguration', N'img/Book_transfiguration.png')
INSERT INTO [dbo].[Items_Books] ([Item_Books_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (4, N'A History of Magic', N'16', N'32', N'3', N'One of he most eminent magical historians to date', N'img/Book_magic_history.png')
INSERT INTO [dbo].[Items_Books] ([Item_Books_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (5, N'Break with a Banshee', N'13', N'27', N'3', N'Defence Against the Dark Arts classess book', N'img/Book_BreakWithABanshee.png')
INSERT INTO [dbo].[Items_Books] ([Item_Books_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (6, N'The Transfiguration', N'18', N'31', N'4', N'For students studying the field of Transfiguration', N'img/Book_IntermediateTransfiguration_1.png')
INSERT INTO [dbo].[Items_Books] ([Item_Books_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (7, N'Unfogging the Future', N'12', N'35', N'3', N'It is a book on the subject of divination', N'img/Book_Unfogging_1.png')
INSERT INTO [dbo].[Items_Books] ([Item_Books_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (8, N'The Dark Forces', N'14', N'28', N'4', N'Provides insight and information on dark creatures', N'img/Book_SelfProtection_1.png')





CREATE TABLE [dbo].[Items_Brooms] (
    [Item_Brooms_id] INT          IDENTITY (1, 1) NOT NULL,
    [Name]           VARCHAR (50) NULL,
    [Price]          VARCHAR (50) NULL,
    [Quantity]       VARCHAR (50) NULL,
    [Score]          VARCHAR (50) NULL,
    [Description]    VARCHAR (50) NULL,
    [ImgUrl]         VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Item_Brooms_id] ASC)
);



INSERT INTO [dbo].[Items_Brooms] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (1, N'Comet 140', N'31', N'29', N'2', N'Made by Comet Trading Company', N'img/Broom_comet140.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (2, N'Comet 180', N'35', N'21', N'3', N'Made by Comet Trading Company', N'img/Broom_comet180.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (3, N'Comet 260', N'37', N'25', N'4', NULL, N'img/Broom_comet260.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (4, N'Nimbus 1000', N'43', N'24', N'2', N'Made by Nimbus Racing Broom Company', N'img/Broom_nimbus1000.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (5, N'Nimbus 1500', N'45', N'21', N'3', N'Made by Nimbus Racing Broom Company', N'img/Broom_nimbus1500.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (6, N'Nimbus 2000', N'51', N'22', N'4', N'Made by Nimbus Racing Broom Company', N'img/Broom_nimbus2000.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (7, N'Nimbus 2001', N'57', N'19', N'4', N'Made by Nimbus Racing Broom Company', N'img/Broom_nimbus2001.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (8, N'Oakshaft 79', N'57', N'21', N'4', N'Created by Elias Grimstone of Portsmouth', N'img/Broom_oakshaft79.jpg')


CREATE TABLE [dbo].[Items_Specials] (
    [Item_Specials_id] INT          IDENTITY (1, 1) NOT NULL,
    [Name]             VARCHAR (50) NULL,
    [Price]            VARCHAR (50) NULL,
    [Quantity]         VARCHAR (50) NULL,
    [Score]            VARCHAR (50) NULL,
    [Description]      VARCHAR (50) NULL,
    [ImgUrl]           VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Item_Specials_id] ASC)
);




INSERT INTO [dbo].[Items_Specials] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (1, N'Bezoar', N'50', N'6', N'5', N'Acts as an antidote to most poisons', N'img/Item_Bezoar')
INSERT INTO [dbo].[Items_Specials] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (2, N'Cauldron', N'65', N'28', N'6', N'Used to brew and hold potions', N'img/Itme_Cauldron')
INSERT INTO [dbo].[Items_Specials] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (3, N'Floo Powder', N'68', N'17', N'6', N'Connects the fireplaces of wizarding household', N'img/Item_FlooPowder')
INSERT INTO [dbo].[Items_Specials] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (4, N'Foe Glass', N'78', N'14', N'7', N'Shows the enemies of its possessor', N'img/Item_FoeGlass')
INSERT INTO [dbo].[Items_Specials] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (5, N'Invisibility Cloak', N'109', N'6', N'8', N'Renders whomever or whatever it covers unseeable', N'img/Item_InvisibilityCloak')
INSERT INTO [dbo].[Items_Specials] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (6, N'Marauder''s Map', N'43', N'25', N'8', N'Reveals all of Hogwarts School', N'img/Item_MaraudersMap')
INSERT INTO [dbo].[Items_Specials] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (7, N'Mirror Of Erised', N'287', N'3', N'8', N'Shows the deepest desire of our hearts', N'img/Item_MirrorOfErised')
INSERT INTO [dbo].[Items_Specials] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (8, N'Omnioculars', N'46', N'42', N'7', N'Be able to magically slow down and replay action', N'img/Item_Omnioculars')
INSERT INTO [dbo].[Items_Specials] ([Item_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (9, N'Pensieve', N'112', N'6', N'8', N'Used to review memories', N'img/Item_Pensieve')



CREATE TABLE [dbo].[Order] (
    [Order_id]    INT          IDENTITY (1, 1) NOT NULL,
    [Quantity]    VARCHAR (50) NULL,
    [Date]        VARCHAR (50) NULL,
    [Description] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Order_id] ASC)
);
