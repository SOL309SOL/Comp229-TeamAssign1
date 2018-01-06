
CREATE TABLE [dbo].[Items_Brooms] (
    [Item_Brooms_id] INT          NOT NULL,
    [Name]          VARCHAR (50) NULL,
    [Price]         VARCHAR (50) NULL,
    [Quantity]      VARCHAR (50) NULL,
    [Score]         VARCHAR (50) NULL,
    [Description]   VARCHAR (50) NULL,
    [ImgUrl]        VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Item_Brooms_id] ASC)
);



INSERT INTO [dbo].[Items_Brooms] ([Item_Brooms_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (1, N'Comet 140', N'31', N'29', N'2', N'Made by Comet Trading Company', N'img/Broom_comet140.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_Brooms_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (2, N'Comet 180', N'35', N'21', N'3', N'Made by Comet Trading Company', N'img/Broom_comet180.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_Brooms_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (3, N'Comet 260', N'37', N'25', N'4', NULL, N'img/Broom_comet260.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_Brooms_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (4, N'Nimbus 1000', N'43', N'24', N'2', N'Made by Nimbus Racing Broom Company', N'img/Broom_nimbus1000.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_Brooms_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (5, N'Nimbus 1500', N'45', N'21', N'3', N'Made by Nimbus Racing Broom Company', N'img/Broom_nimbus1500.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_Brooms_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (6, N'Nimbus 2000', N'51', N'22', N'4', N'Made by Nimbus Racing Broom Company', N'img/Broom_nimbus2000.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_Brooms_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (7, N'Nimbus 2001', N'57', N'19', N'4', N'Made by Nimbus Racing Broom Company', N'img/Broom_nimbus2001.jpg')
INSERT INTO [dbo].[Items_Brooms] ([Item_Brooms_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (8, N'Oakshaft 79', N'57', N'21', N'4', N'Created by Elias Grimstone of Portsmouth', N'img/Broom_oakshaft79.jpg')



CREATE TABLE [dbo].[Items_Specials] (
    [Item_Specials_id] INT          NOT NULL,
    [Name]          VARCHAR (50) NULL,
    [Price]         VARCHAR (50) NULL,
    [Quantity]      VARCHAR (50) NULL,
    [Score]         VARCHAR (50) NULL,
    [Description]   VARCHAR (50) NULL,
    [ImgUrl]        VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Item_Specials_id] ASC)
);



INSERT INTO [dbo].[Items_Specials] ([Item_Specials_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (1, N'Bezoar', N'50', N'6', N'5', N'Acts as an antidote to most poisons', N'img/Item_Bezoar')
INSERT INTO [dbo].[Items_Specials] ([Item_Specials_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (2, N'Cauldron', N'65', N'28', N'6', N'Used to brew and hold potions', N'img/Itme_Cauldron')
INSERT INTO [dbo].[Items_Specials] ([Item_Specials_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (3, N'Floo Powder', N'68', N'17', N'6', N'Connects the fireplaces of wizarding household', N'img/Item_FlooPowder')
INSERT INTO [dbo].[Items_Specials] ([Item_Specials_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (4, N'Foe Glass', N'78', N'14', N'7', N'Shows the enemies of its possessor', N'img/Item_FoeGlass')
INSERT INTO [dbo].[Items_Specials] ([Item_Specials_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (5, N'Invisibility Cloak', N'109', N'6', N'8', N'Renders whomever or whatever it covers unseeable', N'img/Item_InvisibilityCloak')
INSERT INTO [dbo].[Items_Specials] ([Item_Specials_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (6, N'Marauder''s Map', N'43', N'25', N'8', N'Reveals all of Hogwarts School', N'img/Item_MaraudersMap')
INSERT INTO [dbo].[Items_Specials] ([Item_Specials_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (7, N'Mirror Of Erised', N'287', N'3', N'8', N'Shows the deepest desire of our hearts', N'img/Item_MirrorOfErised')
INSERT INTO [dbo].[Items_Specials] ([Item_Specials_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (8, N'Omnioculars', N'46', N'42', N'7', N'Be able to magically slow down and replay action', N'img/Item_Omnioculars')
INSERT INTO [dbo].[Items_Specials] ([Item_Specials_id], [Name], [Price], [Quantity], [Score], [Description], [ImgUrl]) VALUES (9, N'Pensieve', N'112', N'6', N'8', N'Used to review memories', N'img/Item_Pensieve')
