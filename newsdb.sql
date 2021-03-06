USE [master]
GO
/****** Object:  Database [NewsDB]    Script Date: 28-May-19 1:50:03 PM ******/
CREATE DATABASE [NewsDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NewsDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\NewsDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NewsDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER\MSSQL\DATA\NewsDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NewsDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NewsDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NewsDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NewsDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NewsDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NewsDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NewsDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [NewsDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NewsDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NewsDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NewsDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NewsDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NewsDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NewsDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NewsDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NewsDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NewsDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NewsDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NewsDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NewsDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NewsDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NewsDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NewsDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NewsDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NewsDB] SET RECOVERY FULL 
GO
ALTER DATABASE [NewsDB] SET  MULTI_USER 
GO
ALTER DATABASE [NewsDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NewsDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NewsDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NewsDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NewsDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'NewsDB', N'ON'
GO
ALTER DATABASE [NewsDB] SET QUERY_STORE = OFF
GO
USE [NewsDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
	[Logo] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsArticle]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsArticle](
	[ArticleId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Summary] [nvarchar](max) NULL,
	[ProviderId] [int] NULL,
	[Picture] [varchar](max) NULL,
	[Url] [varchar](max) NULL,
	[CategoryId] [int] NULL,
	[CreatedDate] [date] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_NewsArticle] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[ParentId] [int] NULL,
 CONSTRAINT [PK_NewsCatergory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsFeed]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsFeed](
	[NewsFeedId] [int] IDENTITY(1,1) NOT NULL,
	[ProviderId] [int] NULL,
	[RssUrl] [varchar](max) NULL,
	[Active] [bit] NULL,
	[CreatedDate] [date] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_NewsFeed] PRIMARY KEY CLUSTERED 
(
	[NewsFeedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsProvider]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsProvider](
	[ProviderId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Url] [varchar](50) NULL,
	[CountryId] [int] NULL,
 CONSTRAINT [PK_NewsProvider] PRIMARY KEY CLUSTERED 
(
	[ProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParentCategory]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentCategory](
	[ParentId] [int] IDENTITY(1,1) NOT NULL,
	[ParentName] [varchar](max) NULL,
 CONSTRAINT [PK_ParentCategory] PRIMARY KEY CLUSTERED 
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[NewsArticle] ADD  CONSTRAINT [DF_NewsArticle_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[NewsArticle]  WITH CHECK ADD  CONSTRAINT [FK_NewsArticle_NewsCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[NewsCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[NewsArticle] CHECK CONSTRAINT [FK_NewsArticle_NewsCategory]
GO
ALTER TABLE [dbo].[NewsArticle]  WITH CHECK ADD  CONSTRAINT [FK_NewsArticle_NewsProvider] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[NewsProvider] ([ProviderId])
GO
ALTER TABLE [dbo].[NewsArticle] CHECK CONSTRAINT [FK_NewsArticle_NewsProvider]
GO
ALTER TABLE [dbo].[NewsCategory]  WITH CHECK ADD  CONSTRAINT [FK_NewsCategory_ParentCategory] FOREIGN KEY([ParentId])
REFERENCES [dbo].[ParentCategory] ([ParentId])
GO
ALTER TABLE [dbo].[NewsCategory] CHECK CONSTRAINT [FK_NewsCategory_ParentCategory]
GO
ALTER TABLE [dbo].[NewsFeed]  WITH CHECK ADD  CONSTRAINT [FK_NewsFeed_NewsCatergory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[NewsCategory] ([CategoryId])
GO
ALTER TABLE [dbo].[NewsFeed] CHECK CONSTRAINT [FK_NewsFeed_NewsCatergory]
GO
ALTER TABLE [dbo].[NewsFeed]  WITH CHECK ADD  CONSTRAINT [FK_NewsFeed_NewsProvider] FOREIGN KEY([ProviderId])
REFERENCES [dbo].[NewsProvider] ([ProviderId])
GO
ALTER TABLE [dbo].[NewsFeed] CHECK CONSTRAINT [FK_NewsFeed_NewsProvider]
GO
ALTER TABLE [dbo].[NewsProvider]  WITH CHECK ADD  CONSTRAINT [FK_NewsProvider_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([CountryId])
GO
ALTER TABLE [dbo].[NewsProvider] CHECK CONSTRAINT [FK_NewsProvider_Country]
GO
/****** Object:  StoredProcedure [dbo].[deleteCountry]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteCountry]
	@id int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE Country
 WHERE CountryId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[deleteNewsArticle]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteNewsArticle]
	   @id int
		
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here     
--DELETE [dbo].[NewsArticle] 
-- WHERE ArticleId=@id

UPDATE NewsArticle
SET Active =0
WHERE ArticleId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[deleteNewsCategory]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteNewsCategory]
	@id int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE NewsFeed
 WHERE CategoryId=@id

DELETE NewsArticle
 WHERE CategoryId=@id

DELETE NewsCategory
 WHERE CategoryId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[deleteNewsFeed]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteNewsFeed]
	    @id int
		--@active bit

	
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE [dbo].[NewsFeed]

	   SET [Active]=0

    WHERE [NewsFeedId]=@id
END
GO
/****** Object:  StoredProcedure [dbo].[deleteNewsProvider]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteNewsProvider]
	    @id int
		
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE [dbo].[NewsProvider]
   WHERE [ProviderId]=@id
DELETE dbo.NewsFeed
WHERE dbo.NewsFeed.ProviderId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[deleteParentCategory]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteParentCategory]
	@id int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
DELETE ParentCategory
 WHERE ParentId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[insertAdmin]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertAdmin]
	@username varchar(50),
	@password varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].Admin
           (UserName
           ,[Password])
     VALUES
           (@username,
           @password)
END
GO
/****** Object:  StoredProcedure [dbo].[insertCountry]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertCountry]
	@name varchar(50),
	@logo varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[Country]
           ([CountryName]
           ,[Logo])
     VALUES
           (@name,
           @logo)
END
GO
/****** Object:  StoredProcedure [dbo].[insertNewsArticle]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertNewsArticle]
	    @title varchar(max),
        @summary varchar(50),
        @providerId int,
        @picture varchar(Max),
		@url varchar(MAX),
		@categoryid int

	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[NewsArticle]
           ([Title]
           ,[Summary]
           ,[ProviderId]
           ,[Picture]
		   ,[Url]
		   ,[CategoryId]
		   ,[CreatedDate]
		   ,Active
		   )
VALUES
           (
		@title ,
        @summary ,
        @providerId ,
        @picture, 
		@url,
		@categoryid,
		GETDATE(),
		1
		   )
END
GO
/****** Object:  StoredProcedure [dbo].[insertNewsCategory]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertNewsCategory]
	    --@id int,
		@name varchar(50),
		@parentId int
		
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here     
INSERT INTO [dbo].[NewsCategory]
           (
		    [CategoryName]
           ,[ParentId]
		   )
     VALUES
        (
		@name,
		@parentId
		)
END
GO
/****** Object:  StoredProcedure [dbo].[insertNewsFeed]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertNewsFeed]
	    @providerId int,
        @rssUrl varchar(max),
        --@active bit,
        --@createdDate date,
        @categoryId int
		--@image varchar(Max)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[NewsFeed]
           (
		    [ProviderId]
           ,[RssUrl]
           ,[Active]
           ,[CreatedDate]
           ,[CategoryId]
		   --,[Image]
		   )
     VALUES
           (
		@providerId,
        @rssUrl,
        1,
       GETDATE(),
        @categoryId
		--@image
		   )
END
GO
/****** Object:  StoredProcedure [dbo].[insertNewsProvider]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertNewsProvider]
	    @name varchar(50),
        @url varchar(50),
        @countryId int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO [dbo].[NewsProvider]
           (
		   [Name]
           ,[Url]
           ,[CountryId]
		   )
     VALUES
           (
		@name,
        @url,
        @countryId
		   )
END
GO
/****** Object:  StoredProcedure [dbo].[insertParentCategory]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertParentCategory]
	@parentname varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].ParentCategory
          ([ParentName])
     VALUES
           (@parentname)
END
GO
/****** Object:  StoredProcedure [dbo].[removeDuplicateNewsArticles]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[removeDuplicateNewsArticles] 
	
AS
BEGIN
	
	SET NOCOUNT ON;

Delete  aliasName 
from (
Select  *,ROW_NUMBER()
over (Partition by [Title],[Summary],[ProviderId],[Picture],[Url],[CategoryId] 
order by [ArticleId]) as rowNumber
From    dbo.NewsArticle na) aliasName 
Where   rowNumber > 1

Select * from dbo.NewsArticle na
   
   --declare @timeToRun nvarchar(50)
   -- set @timeToRun = '08:00:00'

   -- while 1 = 1
   -- begin
   --     waitfor time @timeToRun
   --     begin
   --         execute NewsDB.[dbo].[removeDuplicateNewsArticles];
   --     end
   -- end



END
GO
/****** Object:  StoredProcedure [dbo].[selectActiveNewsFeed]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selectActiveNewsFeed]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT 
	[NewsFeedId],
    np.Name,
    [RssUrl],
    [Active],
    [CreatedDate],
    nc.CategoryName
FROM NewsFeed as nf
LEFT JOIN NewsProvider as np
ON nf.ProviderId=np.ProviderId
LEFT JOIN NewsCategory as nc
ON nf.CategoryId=nc.CategoryId
	
WHERE Active=1

END
GO
/****** Object:  StoredProcedure [dbo].[selectNewsArticles]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selectNewsArticles] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT 
     [ArticleId],
	 [Title],
	  [Summary],
	   [Name], 
	   [Picture],
	    na.[Url],
		--Convert(varchar,na.CreatedDate,103) AS CreatedDate,
		FORMAT(na.CreatedDate,'dd MMMM yyyy') AS CreatedDate,
		--Convert(varchar,na.CreatedDate,6) AS CreatedDate,
		 [Active],
		 [nc].CategoryName

	FROM [dbo].[NewsArticle] AS na
	JOIN NewsProvider AS np
	ON na.ProviderId = np.ProviderId
	JOIN dbo.NewsCategory nc 
	ON na.CategoryId = nc.CategoryId
	ORDER BY na.CreatedDate DESC
	
END
GO
/****** Object:  StoredProcedure [dbo].[selectTop8Articles]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[selectTop8Articles] 
 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
  DECLARE @todaysdate date;

  SET  @todaysdate = GETDATE();

   SELECT TOP 8
     [ArticleId],
	 [Title],
	  [Summary],
	   [Name], 
	   [Picture],
	    na.[Url],
		 [CreatedDate], 
		 [Active],
		 [nc].CategoryName

	FROM [dbo].[NewsArticle] AS na
	JOIN NewsProvider AS np
	ON na.ProviderId = np.ProviderId
	JOIN dbo.NewsCategory nc 
	ON na.CategoryId = nc.CategoryId
	WHERE na.CreatedDate=@todaysdate 
	ORDER BY CreatedDate DESC
	
			
END
GO
/****** Object:  StoredProcedure [dbo].[updateCountry]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateCountry]
	@id int,
	@name varchar(50),
	@logo varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
 UPDATE [dbo].[Country]
   SET [CountryName] = @name
      ,[Logo] = @logo
 WHERE CountryId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[updateNewsArticle]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateNewsArticle]
	    @id int,
		@title varchar(max),
        @summary varchar(50),
        @providerId int,
        @picture varchar(max),
		@url varchar(Max),
		@categoryid int
		
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here     
UPDATE [dbo].[NewsArticle]
   SET [Title] = @title 
      ,[Summary] = @summary 
      ,[ProviderId] = @providerId 
      ,[Picture] =  @picture
	  , [Url]=@url
	  ,[CategoryId]=@categoryid
	  ,Active=1

 WHERE ArticleId=@id


END
GO
/****** Object:  StoredProcedure [dbo].[updateNewsCategory]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateNewsCategory]
	    @id int,
		@name varchar(50),
		@parentId int
		
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here     
UPDATE [dbo].[NewsCategory]
           SET
		    [CategoryName]=@name
           ,[ParentId]=@parentId
		   
    WHERE CategoryId=@id
END
GO
/****** Object:  StoredProcedure [dbo].[updateNewsFeed]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateNewsFeed]
	    @id int,
		@providerId int,
        @rssUrl varchar(max),
		
        --@active bit,
        --@createdDate date,
        @categoryId int
		--@image varchar(MAX)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE [dbo].[NewsFeed]
        
		SET 
		    [ProviderId]=@providerId
           ,[RssUrl]=@rssUrl
           --,[Active]=@active
           ,[CreatedDate]=GETDATE()
           ,[CategoryId]=@categoryId
		   --,[Image]=@image
		   
    WHERE [NewsFeedId]=@id
END
GO
/****** Object:  StoredProcedure [dbo].[updateNewsProvider]    Script Date: 28-May-19 1:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateNewsProvider]
	    @id int,
		@name varchar(50),
        @url varchar(50),
        @countryId int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
UPDATE [dbo].[NewsProvider]
           SET
		   [Name]=@name
           ,[Url]=@url
           ,[CountryId]= @countryId
		   
   WHERE [ProviderId]=@id
END
GO
USE [master]
GO
ALTER DATABASE [NewsDB] SET  READ_WRITE 
GO
