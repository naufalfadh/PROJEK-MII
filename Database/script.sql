USE [master]
GO
/****** Object:  Database [DB_MII]    Script Date: 10/07/2024 08:03:32 ******/
CREATE DATABASE [DB_MII]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_Produksi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DB_Produksi.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_Produksi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\DB_Produksi_log.ldf' , SIZE = 204800KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DB_MII] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_MII].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_MII] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_MII] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_MII] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_MII] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_MII] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_MII] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_MII] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_MII] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_MII] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_MII] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_MII] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_MII] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_MII] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_MII] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_MII] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_MII] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_MII] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_MII] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_MII] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_MII] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_MII] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_MII] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_MII] SET RECOVERY FULL 
GO
ALTER DATABASE [DB_MII] SET  MULTI_USER 
GO
ALTER DATABASE [DB_MII] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_MII] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_MII] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_MII] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DB_MII] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DB_MII', N'ON'
GO
ALTER DATABASE [DB_MII] SET QUERY_STORE = OFF
GO
USE [DB_MII]
GO
/****** Object:  Table [dbo].[pro_checksheet]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_checksheet](
	[chk_id] [int] IDENTITY(1,1) NOT NULL,
	[lne_id] [int] NULL,
	[sft_id] [int] NULL,
	[chk_defect] [varchar](50) NULL,
	[chk_cast_date] [date] NULL,
	[chk_no_prod_mii] [varchar](50) NULL,
	[chk_judge] [varchar](50) NULL,
	[mdl_id] [int] NULL,
	[chk_detail_ng] [varchar](50) NULL,
	[chk_location] [varchar](50) NULL,
	[chk_casting_no] [varchar](50) NULL,
	[chk_dimension] [varchar](50) NULL,
	[ara_id] [int] NULL,
	[chk_op] [varchar](50) NULL,
	[chk_machining_date] [varchar](50) NULL,
	[chk_dpl_no] [varchar](50) NULL,
	[chk_core_no] [varchar](50) NULL,
	[chk_remarks] [varchar](100) NULL,
	[chk_no_wp] [varchar](100) NULL,
	[chk_machine_no] [varchar](100) NULL,
	[chk_created_by] [varchar](50) NULL,
	[chk_created_date] [datetime] NULL,
	[chk_modif_by] [varchar](50) NULL,
	[chk_modif_date] [datetime] NULL,
 CONSTRAINT [PK_pro_checksheet] PRIMARY KEY CLUSTERED 
(
	[chk_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_checksheet1]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_checksheet1](
	[chk1_id] [int] IDENTITY(1,1) NOT NULL,
	[lne_id] [int] NULL,
	[sft_id] [int] NULL,
	[chk1_defect] [varchar](50) NULL,
	[chk1_cast_date] [date] NULL,
	[chk1_no_prod_mii] [varchar](50) NULL,
	[chk1_judge] [varchar](50) NULL,
	[mdl_id] [int] NULL,
	[chk1_detail_ng] [varchar](50) NULL,
	[chk1_location] [varchar](50) NULL,
	[chk1_casting_no] [varchar](50) NULL,
	[chk1_dimension] [varchar](50) NULL,
	[ara_id] [int] NULL,
	[chk1_op] [varchar](50) NULL,
	[chk1_machining_date] [varchar](50) NULL,
	[chk1_dpl_no] [varchar](50) NULL,
	[chk1_core_no] [varchar](50) NULL,
	[chk1_remarks] [varchar](100) NULL,
	[chk1_no_wp] [varchar](100) NULL,
	[chk1_machine_no] [varchar](100) NULL,
	[chk1_created_by] [varchar](50) NULL,
	[chk1_created_date] [datetime] NULL,
	[chk1_modif_by] [varchar](50) NULL,
	[chk1_modif_date] [datetime] NULL,
 CONSTRAINT [PK_pro_checksheet1] PRIMARY KEY CLUSTERED 
(
	[chk1_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_msarea]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_msarea](
	[ara_id] [int] IDENTITY(1,1) NOT NULL,
	[ara_nama_area] [varchar](100) NULL,
	[ara_nomor] [varchar](100) NULL,
	[ara_gambar] [varchar](max) NULL,
	[ara_created_by] [varchar](50) NULL,
	[ara_created_date] [datetime] NULL,
	[ara_modif_by] [varchar](50) NULL,
	[ara_modif_date] [datetime] NULL,
 CONSTRAINT [PK_pro_msarea] PRIMARY KEY CLUSTERED 
(
	[ara_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_mscatatan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_mscatatan](
	[ctt_id] [int] IDENTITY(1,1) NOT NULL,
	[ctt_tanggal] [date] NULL,
	[ctt_catatan] [varchar](max) NULL,
	[lne_id] [int] NULL,
	[sft_id] [int] NULL,
	[ctt_kategori] [varchar](50) NULL,
	[ctt_detail] [varchar](50) NULL,
	[ctt_break] [varchar](50) NULL,
	[ctt_created_by] [varchar](50) NULL,
	[ctt_created_date] [datetime] NULL,
	[ctt_modif_by] [varchar](50) NULL,
	[ctt_modif_date] [datetime] NULL,
 CONSTRAINT [PK_pro_mscatatan] PRIMARY KEY CLUSTERED 
(
	[ctt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_mskerusakan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_mskerusakan](
	[krs_id] [int] IDENTITY(1,1) NOT NULL,
	[krs_jenis_ng] [varchar](100) NULL,
	[krs_detail] [varchar](max) NULL,
	[krs_created_by] [varchar](50) NULL,
	[krs_created_date] [datetime] NULL,
	[krs_modif_by] [varchar](50) NULL,
	[krs_modif_date] [datetime] NULL,
	[krs_status] [varchar](15) NULL,
 CONSTRAINT [PK_pro_mskerusakan] PRIMARY KEY CLUSTERED 
(
	[krs_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_msline]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_msline](
	[lne_id] [int] IDENTITY(1,1) NOT NULL,
	[lne_nama] [varchar](100) NULL,
	[lne_deskripsi] [varchar](max) NULL,
	[lne_created_by] [varchar](50) NULL,
	[lne_created_date] [datetime] NULL,
	[lne_modif_by] [varchar](50) NULL,
	[lne_modif_date] [datetime] NULL,
	[lne_status] [varchar](50) NULL,
 CONSTRAINT [PK_pro_msline] PRIMARY KEY CLUSTERED 
(
	[lne_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_msmodel]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_msmodel](
	[mdl_id] [int] IDENTITY(1,1) NOT NULL,
	[mdl_nama] [varchar](100) NULL,
	[ara_id] [int] NULL,
	[mdl_deskripsi] [varchar](max) NULL,
	[mdl_gambar] [varchar](max) NULL,
	[mdl_status] [varchar](15) NULL,
	[mdl_created_by] [varchar](50) NULL,
	[mdl_created_date] [datetime] NULL,
	[mdl_modif_by] [varchar](50) NULL,
	[mdl_modif_date] [datetime] NULL,
	[mdl_gambar_full] [varchar](max) NULL,
 CONSTRAINT [PK_mdl_msmodel] PRIMARY KEY CLUSTERED 
(
	[mdl_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_msqr]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_msqr](
	[qr_id] [int] IDENTITY(1,1) NOT NULL,
	[qr_code] [varchar](100) NULL,
	[qr_created_by] [varchar](50) NULL,
	[qr_created_date] [datetime] NULL,
	[qr_modif_by] [varchar](50) NULL,
	[qr_modif_date] [datetime] NULL,
 CONSTRAINT [PK_pro_msqr] PRIMARY KEY CLUSTERED 
(
	[qr_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pro_msshift]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pro_msshift](
	[sft_id] [int] IDENTITY(1,1) NOT NULL,
	[sft_shift] [varchar](100) NULL,
	[sft_jam] [varchar](100) NULL,
	[sft_waktu] [varchar](100) NULL,
	[sft_created_by] [varchar](50) NULL,
	[sft_created_date] [datetime] NULL,
	[sft_modif_by] [varchar](50) NULL,
	[sft_modif_date] [datetime] NULL,
	[sft_status] [varchar](15) NULL,
 CONSTRAINT [PK_pro_msshift] PRIMARY KEY CLUSTERED 
(
	[sft_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sso_msaplikasi]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sso_msaplikasi](
	[app_id] [char](5) NOT NULL,
	[app_deskripsi] [varchar](100) NULL,
	[app_tautan] [varchar](150) NULL,
	[app_status] [varchar](15) NULL,
	[app_created_by] [varchar](50) NULL,
	[app_created_date] [datetime] NULL,
	[app_modif_by] [varchar](50) NULL,
	[app_modif_date] [datetime] NULL,
 CONSTRAINT [PK_sso_msaplikasi] PRIMARY KEY CLUSTERED 
(
	[app_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sso_msmenu]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sso_msmenu](
	[men_id] [int] IDENTITY(1,1) NOT NULL,
	[app_id] [char](5) NULL,
	[rol_id] [char](5) NULL,
	[jab_id] [int] NULL,
	[str_id] [int] NULL,
	[men_parent_id] [int] NULL,
	[men_nama] [varchar](100) NULL,
	[men_link] [varchar](100) NULL,
	[men_urutan] [smallint] NULL,
	[men_status] [varchar](15) NULL,
	[men_created_by] [varchar](50) NULL,
	[men_created_date] [datetime] NULL,
	[men_modif_by] [varchar](50) NULL,
	[men_modif_date] [datetime] NULL,
 CONSTRAINT [PK_sso_msmenu] PRIMARY KEY CLUSTERED 
(
	[men_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sso_msrole]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sso_msrole](
	[rol_id] [char](5) NOT NULL,
	[rol_deskripsi] [varchar](50) NULL,
	[rol_status] [varchar](15) NULL,
	[rol_created_by] [varchar](50) NULL,
	[rol_created_date] [datetime] NULL,
	[rol_modif_by] [varchar](50) NULL,
	[rol_modif_date] [datetime] NULL,
 CONSTRAINT [PK_sso_msrole] PRIMARY KEY CLUSTERED 
(
	[rol_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sso_msuser]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sso_msuser](
	[usr_id] [varchar](50) NOT NULL,
	[rol_id] [char](5) NOT NULL,
	[app_id] [char](5) NOT NULL,
	[usr_status] [varchar](15) NULL,
	[usr_created_by] [varchar](50) NULL,
	[usr_created_date] [datetime] NULL,
	[usr_modif_by] [varchar](50) NULL,
	[usr_modif_date] [datetime] NULL,
 CONSTRAINT [PK_sso_msuser] PRIMARY KEY CLUSTERED 
(
	[usr_id] ASC,
	[rol_id] ASC,
	[app_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pro_checksheet]  WITH CHECK ADD  CONSTRAINT [FK_pro_checksheet_pro_msarea] FOREIGN KEY([ara_id])
REFERENCES [dbo].[pro_msarea] ([ara_id])
GO
ALTER TABLE [dbo].[pro_checksheet] CHECK CONSTRAINT [FK_pro_checksheet_pro_msarea]
GO
ALTER TABLE [dbo].[pro_checksheet]  WITH CHECK ADD  CONSTRAINT [FK_pro_checksheet_pro_msline] FOREIGN KEY([lne_id])
REFERENCES [dbo].[pro_msline] ([lne_id])
GO
ALTER TABLE [dbo].[pro_checksheet] CHECK CONSTRAINT [FK_pro_checksheet_pro_msline]
GO
ALTER TABLE [dbo].[pro_checksheet]  WITH CHECK ADD  CONSTRAINT [FK_pro_checksheet_pro_msmodel] FOREIGN KEY([mdl_id])
REFERENCES [dbo].[pro_msmodel] ([mdl_id])
GO
ALTER TABLE [dbo].[pro_checksheet] CHECK CONSTRAINT [FK_pro_checksheet_pro_msmodel]
GO
ALTER TABLE [dbo].[pro_checksheet]  WITH CHECK ADD  CONSTRAINT [FK_pro_checksheet_pro_msshift] FOREIGN KEY([sft_id])
REFERENCES [dbo].[pro_msshift] ([sft_id])
GO
ALTER TABLE [dbo].[pro_checksheet] CHECK CONSTRAINT [FK_pro_checksheet_pro_msshift]
GO
ALTER TABLE [dbo].[pro_checksheet1]  WITH CHECK ADD  CONSTRAINT [FK_pro_checksheet1_pro_msarea] FOREIGN KEY([ara_id])
REFERENCES [dbo].[pro_msarea] ([ara_id])
GO
ALTER TABLE [dbo].[pro_checksheet1] CHECK CONSTRAINT [FK_pro_checksheet1_pro_msarea]
GO
ALTER TABLE [dbo].[pro_checksheet1]  WITH CHECK ADD  CONSTRAINT [FK_pro_checksheet1_pro_msline] FOREIGN KEY([lne_id])
REFERENCES [dbo].[pro_msline] ([lne_id])
GO
ALTER TABLE [dbo].[pro_checksheet1] CHECK CONSTRAINT [FK_pro_checksheet1_pro_msline]
GO
ALTER TABLE [dbo].[pro_checksheet1]  WITH CHECK ADD  CONSTRAINT [FK_pro_checksheet1_pro_msmodel] FOREIGN KEY([mdl_id])
REFERENCES [dbo].[pro_msmodel] ([mdl_id])
GO
ALTER TABLE [dbo].[pro_checksheet1] CHECK CONSTRAINT [FK_pro_checksheet1_pro_msmodel]
GO
ALTER TABLE [dbo].[pro_checksheet1]  WITH CHECK ADD  CONSTRAINT [FK_pro_checksheet1_pro_msshift] FOREIGN KEY([sft_id])
REFERENCES [dbo].[pro_msshift] ([sft_id])
GO
ALTER TABLE [dbo].[pro_checksheet1] CHECK CONSTRAINT [FK_pro_checksheet1_pro_msshift]
GO
ALTER TABLE [dbo].[pro_mscatatan]  WITH CHECK ADD  CONSTRAINT [FK_pro_mscatatan_pro_msline] FOREIGN KEY([lne_id])
REFERENCES [dbo].[pro_msline] ([lne_id])
GO
ALTER TABLE [dbo].[pro_mscatatan] CHECK CONSTRAINT [FK_pro_mscatatan_pro_msline]
GO
ALTER TABLE [dbo].[pro_mscatatan]  WITH CHECK ADD  CONSTRAINT [FK_pro_mscatatan_pro_msshift] FOREIGN KEY([sft_id])
REFERENCES [dbo].[pro_msshift] ([sft_id])
GO
ALTER TABLE [dbo].[pro_mscatatan] CHECK CONSTRAINT [FK_pro_mscatatan_pro_msshift]
GO
ALTER TABLE [dbo].[pro_msmodel]  WITH CHECK ADD  CONSTRAINT [FK_pro_msmodel_pro_msarea] FOREIGN KEY([ara_id])
REFERENCES [dbo].[pro_msarea] ([ara_id])
GO
ALTER TABLE [dbo].[pro_msmodel] CHECK CONSTRAINT [FK_pro_msmodel_pro_msarea]
GO
ALTER TABLE [dbo].[sso_msuser]  WITH CHECK ADD  CONSTRAINT [FK_sso_msuser_sso_msaplikasi] FOREIGN KEY([app_id])
REFERENCES [dbo].[sso_msaplikasi] ([app_id])
GO
ALTER TABLE [dbo].[sso_msuser] CHECK CONSTRAINT [FK_sso_msuser_sso_msaplikasi]
GO
ALTER TABLE [dbo].[sso_msuser]  WITH CHECK ADD  CONSTRAINT [FK_sso_msuser_sso_msrole] FOREIGN KEY([rol_id])
REFERENCES [dbo].[sso_msrole] ([rol_id])
GO
ALTER TABLE [dbo].[sso_msuser] CHECK CONSTRAINT [FK_sso_msuser_sso_msrole]
GO
/****** Object:  StoredProcedure [dbo].[all_getListMenu]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[all_getListMenu]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	declare @tempNama varchar(100);
	declare @tempLink varchar(100);
	declare @tempIdMenu int;
	declare @tempParent int;
	declare @tempTable table
	(
		nama varchar(100),
		link varchar(100),
		parent int
	);
	
	declare dataCursor cursor for
	select men_id, men_nama, men_link, men_parent_id
	from sso_msmenu
	where app_id = @p3 and
		rol_id = @p2 and
		jab_id is null and
		str_id is null and
		men_parent_id is null and
		men_status = 'Aktif'
	order by men_urutan asc;
		
	open dataCursor
	fetch next from dataCursor into @tempIdMenu, @tempNama, @tempLink, @tempParent
	while @@FETCH_STATUS = 0 begin
		insert into @tempTable values (@tempNama, @tempLink, @tempParent);
			
		insert into @tempTable (nama, link, parent)
		select men_nama, men_link, men_parent_id
		from sso_msmenu
		where app_id = @p3 and
			rol_id = @p2 and
			jab_id is null and
			str_id is null and
			men_parent_id = @tempIdMenu and
			men_status = 'Aktif'
		order by men_urutan asc;
			
		fetch next from dataCursor into @tempIdMenu, @tempNama, @tempLink, @tempParent
	end;
	close dataCursor;
	deallocate dataCursor;
	
	select * from @tempTable;
END



GO
/****** Object:  StoredProcedure [dbo].[pro_CheckProdMii]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_CheckProdMii]
    @p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
    @p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
    @p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
    @p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
    @p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
    @p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
    @p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
    @p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
    @p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
    @p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the noProdMii already exists
    IF EXISTS (SELECT 1 FROM pro_checksheet WHERE chk_no_prod_mii = @p1)
    BEGIN
        -- Return an error message or code if it already exists
        RAISERROR ('The noProdMii value already exists.', 16, 1);
        RETURN;
    END
    ELSE
    BEGIN
        -- Return a success message or code
        PRINT 'The noProdMii value does not exist and can be added.';
    END
END
GO
/****** Object:  StoredProcedure [dbo].[pro_createArea]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createArea]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_msarea
	( ara_nama_area, ara_nomor, ara_gambar, ara_created_by, ara_created_date, ara_modif_by, ara_modif_date)
	values
	( @p1, @p2, @p3, @p4,  GETDATE(), NULL, NULL);

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_createCatatan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createCatatan]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_mscatatan
	( ctt_tanggal, ctt_catatan, lne_id, sft_id,ctt_kategori,ctt_detail,ctt_break ,ctt_created_by, ctt_created_date, ctt_modif_by, ctt_modif_date)
	values
	( @p1, @p2, @p3, @p4,  @p5, @p6,@p7,@p8,GETDATE(), NULL, NULL);

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_createChecksheet]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createChecksheet]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_checksheet
	(lne_id, sft_id , chk_cast_date,chk_no_prod_mii,chk_judge,chk_defect, mdl_id, chk_detail_ng, chk_location, chk_casting_no, chk_dimension, ara_id,chk_op, chk_machining_date,chk_dpl_no, chk_core_no, chk_remarks, chk_no_wp, chk_machine_no, chk_created_by,chk_created_date, chk_modif_by, chk_modif_date)
	values
	(NULL, NULL, @p3, @p4, @p5, @p6, @p7, @p8, @p9,@p10,@p11,@p12,@p13,@p14,@p15,@p16,@p17,@p18,@p19,@p20,  GETDATE(), NULL, NULL);

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_createChecksheet1]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createChecksheet1]
    @p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
    @p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
    @p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
    @p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
    @p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
    @p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
    @p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
    @p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
    @p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
    @p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if @p4 (chk1_no_prod_mii) already exists
    IF NOT EXISTS (SELECT 1 FROM pro_checksheet1 WHERE chk1_no_prod_mii = @p4)
    BEGIN
        -- If it doesn't exist, insert the record
        INSERT INTO pro_checksheet1
        (lne_id, sft_id, chk1_cast_date, chk1_no_prod_mii, chk1_judge, chk1_defect, mdl_id, chk1_detail_ng, chk1_location, chk1_casting_no, chk1_dimension, ara_id, chk1_op, chk1_machining_date, chk1_dpl_no, chk1_core_no, chk1_remarks, chk1_no_wp, chk1_machine_no, chk1_created_by, chk1_created_date, chk1_modif_by, chk1_modif_date)
        VALUES
        (NULL, NULL, @p3, @p4, @p5, @p6, @p7, @p8, @p9, @p10, @p11, @p12, @p13, @p14, @p15, @p16, @p17, @p18, @p19, @p20, GETDATE(), NULL, NULL);

        SELECT 'OK' AS hasil;
    END
    ELSE
    BEGIN
        -- If it exists, return an error or handle as needed
        SELECT 'Duplicate chk1_no_prod_mii' AS hasil;
        -- You may choose to throw an error, return a message, or handle the duplicate case differently.
        -- Example: THROW 51000, 'Duplicate chk1_no_prod_mii found.', 1;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[pro_createKerusakan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createKerusakan]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_mskerusakan
	(krs_jenis_ng, krs_detail, krs_created_by, krs_created_date, krs_modif_by, krs_modif_date, krs_status)
	values
	(@p1, @p2, @p3, GETDATE(), NULL, NULL, 'Aktif');

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_createLine]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createLine]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_msline
	(lne_nama, lne_deskripsi, lne_created_by, lne_created_date, lne_modif_by, lne_modif_date, lne_status)
	values
	(@p1, @p2, @p3, GETDATE(), NULL, NULL, 'Aktif');

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_createLokasi]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createLokasi]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_mslokasi
	( lks_nama_lokasi, lks_deskripsi, lks_created_by, lks_created_date, lks_modif_by, lks_modif_date)
	values
	( @p1, @p2, @p3, GETDATE(), NULL, NULL);

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_createModel]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createModel]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_msmodel
	(mdl_nama,ara_id,  mdl_deskripsi, mdl_gambar, mdl_status, mdl_created_by, mdl_created_date, mdl_modif_by, mdl_modif_date)
	values
	(@p1, @p2, @p3, @p4, 'Tersedia', @p5, GETDATE(), NULL, NULL);

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_createQr]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createQr]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_msqr
	(qr_code, qr_created_by, qr_created_date, qr_modif_by, qr_modif_date)
	values
	(@p1, @p2, GETDATE(), NULL, NULL);

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_createShift]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createShift]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_msshift
	(sft_shift, sft_jam, sft_waktu, sft_created_by, sft_created_date, sft_modif_by, sft_modif_date, sft_status)
	values
	(@p1, @p2, @p3, @p4, GETDATE(), NULL, NULL, 'Aktif');

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_createShift2]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_createShift2]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	insert into pro_msberanda
	(brd_id, brd_status, brd_created_by, brd_created_date, brd_modif_by, brd_modif_date)
	values
	(@p1, 'Aktif', @p3,GETDATE(), NULL, NULL);

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_detailArea]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_detailArea]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		ISNULL(NULLIF(ara_nama_area, ''), '-') as [area],
		ISNULL(NULLIF(ara_nomor, ''), '-') as [nomorArea],
		ISNULL(NULLIF(ara_gambar, ''), '-') as [gambarArea]
	from pro_msarea
	where ara_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_detailChecksheet]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_detailChecksheet]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		ISNULL(NULLIF(b.lne_nama, ''), '-') as [line],
		ISNULL(NULLIF(c.sft_shift, ''), '-') as [shift],
		ISNULL(NULLIF(a.chk_defect, ''), '-') as [jenisDefect],
		ISNULL(NULLIF(a.chk_cast_date, ''), '-') as [castDate],
		ISNULL(NULLIF(a.chk_no_prod_mii, ''), '-') as [noProdMii],
		ISNULL(NULLIF(a.chk_judge, ''), '-') as [judge],
		ISNULL(NULLIF(d.mdl_nama, ''), '-') as [model],
		ISNULL(NULLIF(a.chk_detail_ng, ''), '-') as [ng],
		ISNULL(NULLIF(a.chk_location, ''), '-') as [location],
		ISNULL(NULLIF(a.chk_casting_no, ''), '-') as [castingNo],
		ISNULL(NULLIF(a.chk_dimension, ''), '-') as [dimension],
		ISNULL(NULLIF(e.ara_id, ''), '-') as [area],
		ISNULL(NULLIF(a.chk_op, ''), '-') as [op],
		ISNULL(NULLIF(a.chk_machining_date, ''), '-') as [machiningDate],
		ISNULL(NULLIF(a.chk_remarks, ''), '-') as [remarks]

	from pro_checksheet a
	left join pro_msline b on a.lne_id = b.lne_id
	left join pro_msshift c on a.sft_id = c.sft_id
	left join pro_msmodel d on a.mdl_id = d.mdl_id
	left join pro_msarea e on a.ara_id = e.ara_id
	where a.chk_id = @p1;

END

select * from pro_checksheet
GO
/****** Object:  StoredProcedure [dbo].[pro_detailChecksheet1]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_detailChecksheet1]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
    
	SELECT TOP 1
		ISNULL(NULLIF(c.chk1_defect, ''), '-') as [JenisDefect],
		ISNULL(NULLIF(c.chk1_cast_date, ''), '-') as [CastingDate],
		ISNULL(NULLIF(c.chk1_no_prod_mii, ''), '-') as [NoProdMII],
		ISNULL(NULLIF(c.chk1_judge, ''), '-') as [Judge],
		ISNULL(NULLIF(m.mdl_nama, ''), '-') as [Model],
		ISNULL(NULLIF(c.chk1_detail_ng, ''), '-') as [DetailKerusakan],
		ISNULL(NULLIF(c.chk1_location, ''), '-') as [Location],
		ISNULL(NULLIF(c.chk1_casting_no, ''), '-') as [CastingNo],
		ISNULL(NULLIF(c.chk1_dimension, ''), '-') as [Dimension],
		ISNULL(NULLIF(a.ara_nama_area, ''), '-') as [Area],
		ISNULL(NULLIF(c.chk1_op, ''), '-') as [Operator],
		ISNULL(NULLIF(c.chk1_machining_date, ''), '-') as [MachiningDate],
		ISNULL(NULLIF(c.chk1_dpl_no, ''), '-') as [DPLNo],
		ISNULL(NULLIF(c.chk1_core_no, ''), '-') as [CoreNo],
		ISNULL(NULLIF(c.chk1_remarks, ''), '-') as [Remarks],
		ISNULL(NULLIF(c.chk1_no_wp, ''), '-') as [NoWP],
		ISNULL(NULLIF(c.chk1_machine_no, ''), '-') as [MachineNo],
		ISNULL(NULLIF(c.chk1_created_by, ''), '-') as [CreatedBy],
		ISNULL(NULLIF(FORMAT(c.chk1_created_date, 'dd-MMMM-yyyy'), ''), '-') as [CreatedDate]
	FROM pro_checksheet1 c
	LEFT JOIN pro_msarea a ON c.ara_id = a.ara_id
	LEFT JOIN pro_msmodel m ON c.mdl_id = m.mdl_id
	WHERE c.chk1_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_detailKerusakan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_detailKerusakan]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		ISNULL(NULLIF(krs_jenis_ng, ''), '-') as [jenisNg],
		ISNULL(NULLIF(krs_detail, ''), '-') as [detail]
	from pro_mskerusakan
	where krs_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_detailLine]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_detailLine]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		ISNULL(NULLIF(lne_nama, ''), '-') as [namaLine],
		ISNULL(NULLIF(lne_deskripsi, ''), '-') as [deskripsi]
	from pro_msline
	where lne_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_detailLokasi]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_detailLokasi]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		ISNULL(NULLIF(ara_nama_lokasi, ''), '-') as [namaLokasi],
		ISNULL(NULLIF(lks_deskripsi, ''), '-') as [nomorLokasi]
	from pro_mslokasi
	where lks_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_detailModel]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_detailModel]
	@p1 varchar(max),
	@p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @ara_nama varchar(max);

	SELECT @ara_nama = ISNULL(ara.ara_nama_area, '-')
	FROM pro_msmodel mdl
	LEFT JOIN pro_msarea ara ON mdl.ara_id = ara.ara_id
	WHERE mdl.mdl_id = CAST(@p1 AS int);

	SELECT TOP 1
		ISNULL(NULLIF(mdl.mdl_nama, ''), '-') AS [namaModel],
		ISNULL(NULLIF(mdl.mdl_deskripsi, ''), '-') AS [deskripsiModel],
		ISNULL(NULLIF(mdl.mdl_status, ''), '-') AS [statusModel],
		ISNULL(NULLIF(mdl.mdl_gambar, ''), '-') AS [gambarModel],
		ISNULL(NULLIF(mdl.mdl_created_date, ''), '-') AS [tanggalDibuat],
		ISNULL(NULLIF(mdl.mdl_created_by, ''), '-') AS [dibuatOleh],
		@ara_nama AS [namaArea]
	FROM pro_msmodel mdl
	WHERE mdl.mdl_id = CAST(@p1 AS int);

END
GO
/****** Object:  StoredProcedure [dbo].[pro_detailShift]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_detailShift]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		ISNULL(NULLIF(sft_shift, ''), '-') as [shift],
		ISNULL(NULLIF(sft_jam, ''), '-') as [jamKerja]
	from pro_msshift
	where sft_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_editArea]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_editArea]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_msarea
	set ara_nama_area = @p2,
		ara_nomor = @p3,
		ara_gambar = @p4,
		ara_modif_by = @p5,
		ara_modif_date = GETDATE()
	where ara_id = @p1;

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_editKerusakan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_editKerusakan]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_mskerusakan
	set krs_nama = @p2,
		krs_deskripsi = @p3,
		krs_modif_by = @p4,
		krs_modif_date = GETDATE()
	where krs_id = @p1;

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_editLine]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_editLine]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_msline
	set lne_nama = @p2,
		lne_deskripsi = @p3,
		lne_modif_by = @p4,
		lne_modif_date = GETDATE()
	where lne_id = @p1;

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_editModel]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_editModel]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_msmodel
	set mdl_nama = @p2,
		ara_id = @p3,
		mdl_deskripsi = @p4,
		mdl_gambar = @p5,
		mdl_modif_by = @p6,
		mdl_modif_date = GETDATE()
	where mdl_id = @p1;

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_editProses]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_editProses]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_msproses
	set pro_nama = @p2,
		pro_modul = (case when @p3 = '' then pro_modul else @p3 end),
		pro_deskripsi = @p4,
		pro_modif_by = @p5,
		pro_modif_date = GETDATE()
	where pro_id = @p1;

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_editShift]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_editShift]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_msshift
	set sft_shift = @p2,
		sft_jam = @p3,
		sft_waktu = @p4,
		sft_modif_by = @p5,
		sft_modif_date = GETDATE()
	where sft_id = @p1;

	select 'OK' as hasil;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataArea]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataArea]
    @p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
    @p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
    @p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
    @p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
    @p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
    @p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
    @p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
    @p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
    @p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
    @p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @SQL nvarchar(max);

    SET @SQL = 'SELECT * FROM (
                    SELECT [Key], ROW_NUMBER() OVER (ORDER BY ' + @p3 + ') AS [No], [Area], [Nomor Area], COUNT(*) OVER() AS [Count]
                    FROM (
                        SELECT
                            ara_id AS [Key],
                            ara_nama_area AS [Area],
                            ara_nomor AS [Nomor Area]
                        FROM pro_msarea
                    ) t
                    WHERE [Area] LIKE ''%'' + ''' + @p2 + ''' + ''%''
                ) res WHERE [No] BETWEEN ' + CAST((@p1-1)*10+1 AS varchar) + ' AND ' + CAST((@p1*10) AS varchar) + ';';

    EXEC(@SQL);
END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataAreaById]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataAreaById]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		ara_id as [idArea],
		ara_nama_area as [namaArea],
		ara_nomor as [nomorArea],
		ara_gambar as [gambarArea]
	from pro_msarea
	where ara_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataById]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataById]
    @p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
    @p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
    @p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
    @p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
    @p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
    @p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
    @p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
    @p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
    @p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
    @p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT TOP 1
        chk1_id AS [idChecksheet1],
        lne_id AS [idLine],
        sft_id AS [idShift],
        chk1_defect AS [defect],
        chk1_cast_date AS [castDate],
        chk1_no_prod_mii AS [noProdMii],
        chk1_judge AS [judge],
        mdl_id AS [idModel],
        chk1_detail_ng AS [detailNg],
        chk1_location AS [location],
        chk1_casting_no AS [castingNo],
        chk1_dimension AS [dimension],
        ara_id AS [areaId],
        chk1_op AS [operation],
        chk1_machining_date AS [machiningDate],
        chk1_dpl_no AS [dplNo],
        chk1_core_no AS [coreNo],
        chk1_remarks AS [remarks],
        chk1_no_wp AS [noWp],
        chk1_machine_no AS [machineNo],
        chk1_created_by AS [createdBy],
        chk1_created_date AS [createdDate],
        chk1_modif_by AS [modifiedBy],
        chk1_modif_date AS [modifiedDate]
    FROM pro_mschecksheet1
    WHERE chk1_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataCatatan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pro_getDataCatatan]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @SQL nvarchar(max);

	SET @SQL = '
		SELECT * FROM (
			SELECT [Key], ROW_NUMBER() OVER (ORDER BY ' + @p3 + ') AS [No], FORMAT([Tanggal], ''dd-MMMM-yyyy'') AS [Tanggal], [Catatan], [Line], [Shift], [Detail Perubahan], [Kategori 4M], [Break Point], COUNT(*) OVER() AS [Count]
			FROM (
				SELECT
					ctt.ctt_id AS [Key],
					ctt.ctt_tanggal AS [Tanggal],
					ctt.ctt_catatan AS [Catatan],
					lne.lne_id AS [Line],
					sft.sft_id AS [Shift],
					ctt.ctt_detail AS [Detail Perubahan],
					ctt.ctt_kategori AS [Kategori 4M],
					ctt.ctt_break AS [Break Point]
				FROM pro_mscatatan ctt
				JOIN pro_msline lne ON ctt.lne_id = lne.lne_id
				JOIN pro_msshift sft ON ctt.sft_id = sft.sft_id
			) t
			WHERE [Catatan] LIKE ''%' + @p2 + '%''
		) res 
		WHERE [No] BETWEEN ' + CAST((@p1-1)*10+1 AS varchar) + ' AND ' + CAST((@p1*10) AS varchar) + ';';

	EXEC(@SQL);

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataChecksheet]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pro_getDataChecksheet]
    @p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
    @p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
    @p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
    @p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
    @p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
    @p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
    @p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
    @p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
    @p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
    @p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL nvarchar(max);

    SET @SQL = '
        SELECT * FROM (
            SELECT [Key], ROW_NUMBER() OVER (ORDER BY ' + @p3 + ') AS [No], FORMAT([Cast Date], ''dd-MMMM-yyyy'') as [Cast Date],[No Prod MII], [Judge],COUNT(*) OVER() AS [Count]
            FROM (
                SELECT
                    chk.chk_id AS [Key],
                    chk.chk_cast_date AS [Cast Date],
                    chk.chk_no_prod_mii AS [No Prod MII],
                    chk.chk_judge [Judge]
                FROM pro_checksheet chk
            ) t
          ) res 
        WHERE [No] BETWEEN ' + CAST((@p1-1)*10+1 AS varchar) + ' AND ' + CAST((@p1*10) AS varchar) + ';';

    EXEC(@SQL);

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataChecksheet1]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pro_getDataChecksheet1]
    @p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
    @p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
    @p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
    @p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
    @p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
    @p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
    @p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
    @p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
    @p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
    @p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL nvarchar(max);

    SET @SQL = '
        SELECT * FROM (
            SELECT [Key], ROW_NUMBER() OVER (ORDER BY ' + @p3 + ') AS [No], FORMAT([Cast Date], ''dd-MMMM-yyyy'') as [Cast Date],[No Prod MII], [Judge],COUNT(*) OVER() AS [Count]
            FROM (
                SELECT
                    chk1.chk1_id AS [Key],
                    chk1.chk1_cast_date AS [Cast Date],
                    chk1.chk1_no_prod_mii AS [No Prod MII],
                    chk1.chk1_judge [Judge]
                FROM pro_checksheet1 chk1
            ) t
          ) res 
        WHERE [No] BETWEEN ' + CAST((@p1-1)*10+1 AS varchar) + ' AND ' + CAST((@p1*10) AS varchar) + ';';

    EXEC(@SQL);

END


   
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataKerusakan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataKerusakan]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @SQL nvarchar(max);

    SET @SQL = 'SELECT * FROM (
					SELECT [Key], ROW_NUMBER() OVER (ORDER BY ' + @p3 + ') AS [No], [Jenis NG], [Detail], [Status], COUNT(*) OVER() AS [Count]
					FROM (
						SELECT
							krs_id AS [Key],
							krs_jenis_ng AS [Jenis NG],
							krs_detail AS [Detail],
							krs_status AS [Status]
						FROM pro_mskerusakan
					) t
					WHERE [Status] = ''' + @p4 + ''' AND
					[Jenis NG] LIKE ''%'' + ''' + @p2 + ''' + ''%''
				) res 
				WHERE [No] BETWEEN ' + CAST((@p1-1)*10+1 AS varchar) + ' AND ' + CAST((@p1*10) AS varchar) + ';';

    EXEC(@SQL);

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataKerusakanById]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataKerusakanById]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		krs_id as [idKerusakan],
		krs_jenis_ng as [jenisNg],
		krs_detail as [detail]
	from pro_mskerusakan
	where krs_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataLine]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataLine]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @SQL nvarchar(max);

    SET @SQL = 'SELECT * FROM (
					SELECT [Key], ROW_NUMBER() OVER (ORDER BY ' + @p3 + ') AS [No], [Nama Line], [Deskripsi], COUNT(*) OVER() AS [Count]
					FROM (
						SELECT
							lne_id AS [Key],
							lne_nama AS [Nama Line],
							lne_deskripsi AS [Deskripsi]
						FROM pro_msline
					) t
					WHERE [Nama Line] LIKE ''%'' + ''' + @p2 + ''' + ''%''
				) res WHERE [No] BETWEEN ' + CAST((@p1-1)*10+1 AS varchar) + ' AND ' + CAST((@p1*10) AS varchar) + ';';

    EXEC(@SQL);

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataLineById]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataLineById]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		lne_id as [idLine],
		lne_nama as [namaLine],
		lne_deskripsi as [deskripsi]
	from pro_msline
	where lne_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataModel]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[pro_getDataModel]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @SQL nvarchar(max);

	SET @SQL = '
		SELECT * FROM (
			SELECT [Key], ROW_NUMBER() OVER (ORDER BY ' + @p3 + ') AS [No], [Nama Model], [Status], COUNT(*) OVER() AS [Count]
			FROM (
				SELECT
					mdl.mdl_id AS [Key],
					mdl.mdl_nama AS [Nama Model],
					mdl.mdl_status AS [Status]
				FROM pro_msmodel mdl
				JOIN pro_msarea ara ON mdl.ara_id = ara.ara_id
			) t
			WHERE [Status] = ''' + @p4 + ''' AND
				  [Nama Model] LIKE ''%' + @p2 + '%''
		) res 
		WHERE [No] BETWEEN ' + CAST((@p1-1)*10+1 AS varchar) + ' AND ' + CAST((@p1*10) AS varchar) + ';';

	EXEC(@SQL);

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataModelById]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataModelById]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		mdl_id as [idModel],
		mdl_nama as [namaModel],
		ara_id as [namaArea],
		mdl_deskripsi as [deskripsi],
		mdl_gambar as [gambarModel]
	from pro_msmodel
	where mdl_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataShift]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataShift]
    @p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
    @p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
    @p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
    @p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
    @p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
    @p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
    @p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
    @p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
    @p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
    @p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @SQL nvarchar(max);

    SET @SQL = 'SELECT * FROM (
                    SELECT [Key], ROW_NUMBER() OVER (ORDER BY ' + @p3 + ') AS [No], [Shift], [Jam Kerja], [Waktu], [Status], COUNT(*) OVER() AS [Count]
                    FROM (
                        SELECT
                            sft_id AS [Key],
                            sft_shift AS [Shift],
                            sft_jam AS [Jam Kerja],
							sft_waktu AS [Waktu],
							sft_status AS [Status]
                        FROM pro_msshift
                    ) t
                    WHERE [Status] = ''' + @p4 + ''' AND
					[Shift] LIKE ''%'' + ''' + @p2 + ''' + ''%''
                ) res WHERE [No] BETWEEN ' + CAST((@p1-1)*10+1 AS varchar) + ' AND ' + CAST((@p1*10) AS varchar) + ';';

    EXEC(@SQL);
END
GO
/****** Object:  StoredProcedure [dbo].[pro_getDataShiftById]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getDataShiftById]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select top 1
		sft_id as [idShift],
		sft_shift as [shift],
		sft_jam as [jamKerja],
		sft_waktu as [waktu]
	from pro_msshift
	where sft_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getIdByData]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getIdByData]
    @p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
    @p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
    @p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
    @p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
    @p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
    @p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
    @p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
    @p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
    @p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
    @p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 1
        chk1_id AS [idChecksheet1]
    FROM pro_mschecksheet1
    WHERE 
        lne_id = @p2 AND
        sft_id = @p3 AND
        chk1_defect = @p4 AND
        chk1_cast_date = @p5 AND
        chk1_no_prod_mii = @p6 AND
        chk1_judge = @p7 AND
        mdl_id = @p8 AND
        chk1_detail_ng = @p9 AND
        chk1_location = @p10 AND
        chk1_casting_no = @p11 AND
        chk1_dimension = @p12 AND
        ara_id = @p13 AND
        chk1_op = @p14 AND
        chk1_machining_date = @p15 AND
        chk1_dpl_no = @p16 AND
        chk1_core_no = @p17 AND
        chk1_remarks = @p18 AND
        chk1_no_wp = @p19 AND
        chk1_machine_no = @p20 AND
        chk1_created_by = @p21 AND
        chk1_created_date = @p22 AND
        chk1_modif_by = @p23 AND
        chk1_modif_date = @p24;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getListArea]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getListArea]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select distinct
		ara_id as [Value],
		ara_nama_area as [Text]
	from pro_msarea
	order by ara_nama_area asc;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getListKaryawan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getListKaryawan]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select distinct
		kry_id as [Value],
		RTRIM(REPLACE(kry_nama_depan + ' ' + kry_nama_blkg, '-', '')) as [Text]
	from ERP_PolmanAstra.dbo.ess_mskaryawan
	where gol_id in (1,2,3,4,5,6,7,9) and
		kry_status = 'Aktif'
	order by [Text] asc;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getListKerusakan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getListKerusakan]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select distinct
		krs_id as [Value],
		krs_jenis_ng as [Text]
	from pro_mskerusakan
	order by krs_jenis_ng asc;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getListLine]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getListLine]
	@p1 varchar(max) = NULL, @p2 varchar(max) = NULL, @p3 varchar(max) = NULL, @p4 varchar(max) = NULL, @p5 varchar(max) = NULL,
	@p6 varchar(max) = NULL, @p7 varchar(max) = NULL, @p8 varchar(max) = NULL, @p9 varchar(max) = NULL, @p10 varchar(max) = NULL,
	@p11 varchar(max) = NULL, @p12 varchar(max) = NULL, @p13 varchar(max) = NULL, @p14 varchar(max) = NULL, @p15 varchar(max) = NULL,
	@p16 varchar(max) = NULL, @p17 varchar(max) = NULL, @p18 varchar(max) = NULL, @p19 varchar(max) = NULL, @p20 varchar(max) = NULL,
	@p21 varchar(max) = NULL, @p22 varchar(max) = NULL, @p23 varchar(max) = NULL, @p24 varchar(max) = NULL, @p25 varchar(max) = NULL,
	@p26 varchar(max) = NULL, @p27 varchar(max) = NULL, @p28 varchar(max) = NULL, @p29 varchar(max) = NULL, @p30 varchar(max) = NULL,
	@p31 varchar(max) = NULL, @p32 varchar(max) = NULL, @p33 varchar(max) = NULL, @p34 varchar(max) = NULL, @p35 varchar(max) = NULL,
	@p36 varchar(max) = NULL, @p37 varchar(max) = NULL, @p38 varchar(max) = NULL, @p39 varchar(max) = NULL, @p40 varchar(max) = NULL,
	@p41 varchar(max) = NULL, @p42 varchar(max) = NULL, @p43 varchar(max) = NULL, @p44 varchar(max) = NULL, @p45 varchar(max) = NULL,
	@p46 varchar(max) = NULL, @p47 varchar(max) = NULL, @p48 varchar(max) = NULL, @p49 varchar(max) = NULL, @p50 varchar(max) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	select distinct
		lne_id as [Value],
		lne_nama as [Text]
	from pro_msline
	where lne_id in (2, 3, 4, 10, 11, @p6, @p7, @p8, @p9, @p10,
	                 @p11, @p12, @p13, @p14, @p15, @p16, @p17, @p18, @p19, @p20,
	                 @p21, @p22, @p23, @p24, @p25, @p26, @p27, @p28, @p29, @p30,
	                 @p31, @p32, @p33, @p34, @p35, @p36, @p37, @p38, @p39, @p40,
	                 @p41, @p42, @p43, @p44, @p45, @p46, @p47, @p48, @p49, @p50)
	order by lne_nama asc;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getListLine1]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getListLine1]
	@p1 varchar(max) = NULL, @p2 varchar(max) = NULL, @p3 varchar(max) = NULL, @p4 varchar(max) = NULL, @p5 varchar(max) = NULL,
	@p6 varchar(max) = NULL, @p7 varchar(max) = NULL, @p8 varchar(max) = NULL, @p9 varchar(max) = NULL, @p10 varchar(max) = NULL,
	@p11 varchar(max) = NULL, @p12 varchar(max) = NULL, @p13 varchar(max) = NULL, @p14 varchar(max) = NULL, @p15 varchar(max) = NULL,
	@p16 varchar(max) = NULL, @p17 varchar(max) = NULL, @p18 varchar(max) = NULL, @p19 varchar(max) = NULL, @p20 varchar(max) = NULL,
	@p21 varchar(max) = NULL, @p22 varchar(max) = NULL, @p23 varchar(max) = NULL, @p24 varchar(max) = NULL, @p25 varchar(max) = NULL,
	@p26 varchar(max) = NULL, @p27 varchar(max) = NULL, @p28 varchar(max) = NULL, @p29 varchar(max) = NULL, @p30 varchar(max) = NULL,
	@p31 varchar(max) = NULL, @p32 varchar(max) = NULL, @p33 varchar(max) = NULL, @p34 varchar(max) = NULL, @p35 varchar(max) = NULL,
	@p36 varchar(max) = NULL, @p37 varchar(max) = NULL, @p38 varchar(max) = NULL, @p39 varchar(max) = NULL, @p40 varchar(max) = NULL,
	@p41 varchar(max) = NULL, @p42 varchar(max) = NULL, @p43 varchar(max) = NULL, @p44 varchar(max) = NULL, @p45 varchar(max) = NULL,
	@p46 varchar(max) = NULL, @p47 varchar(max) = NULL, @p48 varchar(max) = NULL, @p49 varchar(max) = NULL, @p50 varchar(max) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	select distinct
		lne_id as [Value],
		lne_nama as [Text]
	from pro_msline
	where lne_id in (5, 6, 7, 8, 9, 12, @p7, @p8, @p9, @p10,
	                 @p11, @p12, @p13, @p14, @p15, @p16, @p17, @p18, @p19, @p20,
	                 @p21, @p22, @p23, @p24, @p25, @p26, @p27, @p28, @p29, @p30,
	                 @p31, @p32, @p33, @p34, @p35, @p36, @p37, @p38, @p39, @p40,
	                 @p41, @p42, @p43, @p44, @p45, @p46, @p47, @p48, @p49, @p50)
	order by lne_nama asc;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getListLineFull]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getListLineFull]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select distinct
		lne_id as [Value],
		lne_nama as [Text]
	from pro_msline
	order by lne_nama asc;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getListModel]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getListModel]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select distinct
		mdl_id as [Value],
		mdl_nama as [Text]
	from pro_msmodel
	order by mdl_nama asc;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_getListShift]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_getListShift]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	select distinct
		sft_id as [Value],
		sft_shift as [Text]
	from pro_msshift
	order by sft_shift asc;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_setStatusKerusakan]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_setStatusKerusakan]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_mskerusakan
	set krs_status = (case when krs_status = 'Aktif' then 'Tidak Aktif' else 'Aktif' end),
		krs_modif_by = @p2,
		krs_modif_date = GETDATE()
	where krs_id = @p1;

	select top 1 krs_status as [Status] from pro_mskerusakan where krs_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_setStatusLine]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_setStatusLine]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_msline
	set lne_status = (case when lne_status = 'Aktif' then 'Tidak Aktif' else 'Aktif' end),
		lne_modif_by = @p2,
		lne_modif_date = GETDATE()
	where lne_id = @p1;

	select top 1 lne_status as [Status] from pro_msline where lne_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_setStatusModel]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_setStatusModel]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_msmodel
	set mdl_status = (case when mdl_status = 'Tersedia' then 'Tidak Tersedia' else 'Tersedia' end),
		mdl_modif_by = @p2,
		mdl_modif_date = GETDATE()
	where mdl_id = @p1;

	select top 1 mdl_status as [Status] from pro_msmodel where mdl_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[pro_setStatusShift]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pro_setStatusShift]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
	
	update pro_msshift
	set sft_status = (case when sft_status = 'Aktif' then 'Tidak Aktif' else 'Aktif' end),
		sft_modif_by = @p2,
		sft_modif_date = GETDATE()
	where sft_id = @p1;

	select top 1 sft_status as [Status] from pro_msshift where sft_id = @p1;

END
GO
/****** Object:  StoredProcedure [dbo].[sso_getAuthenticationProduksi]    Script Date: 10/07/2024 08:03:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sso_getAuthenticationProduksi]
	@p1 varchar(max), @p2 varchar(max), @p3 varchar(max), @p4 varchar(max), @p5 varchar(max),
	@p6 varchar(max), @p7 varchar(max), @p8 varchar(max), @p9 varchar(max), @p10 varchar(max),
	@p11 varchar(max), @p12 varchar(max), @p13 varchar(max), @p14 varchar(max), @p15 varchar(max),
	@p16 varchar(max), @p17 varchar(max), @p18 varchar(max), @p19 varchar(max), @p20 varchar(max),
	@p21 varchar(max), @p22 varchar(max), @p23 varchar(max), @p24 varchar(max), @p25 varchar(max),
	@p26 varchar(max), @p27 varchar(max), @p28 varchar(max), @p29 varchar(max), @p30 varchar(max),
	@p31 varchar(max), @p32 varchar(max), @p33 varchar(max), @p34 varchar(max), @p35 varchar(max),
	@p36 varchar(max), @p37 varchar(max), @p38 varchar(max), @p39 varchar(max), @p40 varchar(max),
	@p41 varchar(max), @p42 varchar(max), @p43 varchar(max), @p44 varchar(max), @p45 varchar(max),
	@p46 varchar(max), @p47 varchar(max), @p48 varchar(max), @p49 varchar(max), @p50 varchar(max)
AS
BEGIN
	SET NOCOUNT ON;

	select
		a.rol_id as [RoleID],
		a.rol_deskripsi as [Role],
		RTRIM(REPLACE(c.kry_nama_depan + ' ' + c.kry_nama_blkg, '-', '')) as [Nama]
	from sso_msrole a, sso_msuser b, ERP_PolmanAstra.dbo.ess_mskaryawan c
	where a.rol_id = b.rol_id and
		b.usr_id = c.kry_username and
		c.kry_status = 'Aktif' and
		b.app_id = 'APP58' and
		b.usr_id = @p1 and
		b.usr_status = 'Aktif'
	order by [Role] asc;

END
GO
USE [master]
GO
ALTER DATABASE [DB_MII] SET  READ_WRITE 
GO
