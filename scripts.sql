
USE [HastaneRandevuSistemi]
GO
/****** Object:  Table [dbo].[Bolum]    Script Date: 5.5.2019 14:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bolum](
	[bolumID] [int] IDENTITY(1,1) NOT NULL,
	[bolumAdi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bolum] PRIMARY KEY CLUSTERED 
(
	[bolumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doktor]    Script Date: 5.5.2019 14:04:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktor](
	[doktorID] [int] IDENTITY(1,1) NOT NULL,
	[TCKN] [nvarchar](11) NULL,
	[sifre] [nvarchar](20) NULL,
	[adi] [nvarchar](20) NULL,
	[soyadi] [nvarchar](20) NULL,
	[hastaneID] [int] NULL,
	[bolumID] [int] NULL,
 CONSTRAINT [PK_Doktor] PRIMARY KEY CLUSTERED 
(
	[doktorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favori]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favori](
	[favoriID] [int] IDENTITY(1,1) NOT NULL,
	[doktorID] [int] NULL,
	[kullaniciID] [int] NULL,
 CONSTRAINT [PK_Favori] PRIMARY KEY CLUSTERED 
(
	[favoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hastane]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hastane](
	[hastaneID] [int] IDENTITY(1,1) NOT NULL,
	[hastaneAdi] [nvarchar](50) NULL,
	[ilID] [int] NULL,
	[ilceID] [int] NULL,
	[acikAdres] [nvarchar](100) NULL,
 CONSTRAINT [PK_Hastane] PRIMARY KEY CLUSTERED 
(
	[hastaneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HastaneBolum]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HastaneBolum](
	[hastaneBolumID] [int] IDENTITY(1,1) NOT NULL,
	[bolumID] [int] NULL,
	[hastaneID] [int] NULL,
 CONSTRAINT [PK_HastaneBolum] PRIMARY KEY CLUSTERED 
(
	[hastaneBolumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Il]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Il](
	[ilID] [int] IDENTITY(1,1) NOT NULL,
	[ilAdi] [nvarchar](20) NULL,
 CONSTRAINT [PK_Il] PRIMARY KEY CLUSTERED 
(
	[ilID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ilce]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ilce](
	[ilceID] [int] IDENTITY(1,1) NOT NULL,
	[ilceAdi] [nvarchar](20) NULL,
	[ilID] [int] NULL,
 CONSTRAINT [PK_Ilce] PRIMARY KEY CLUSTERED 
(
	[ilceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Izin]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Izin](
	[izinID] [int] IDENTITY(1,1) NOT NULL,
	[doktorID] [int] NULL,
	[baslangicTarihi] [date] NULL,
	[bitisTarihi] [date] NULL,
	[baslangicSaati] [time](7) NULL,
	[bitisSaati] [time](7) NULL,
 CONSTRAINT [PK_Izin] PRIMARY KEY CLUSTERED 
(
	[izinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanici](
	[kullanicID] [int] IDENTITY(1,1) NOT NULL,
	[TCKN] [nvarchar](11) NULL,
	[sifre] [nvarchar](20) NULL,
	[rolID] [int] NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[kullanicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciBilgileri]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciBilgileri](
	[kullaniID] [int] NOT NULL,
	[adi] [nvarchar](20) NULL,
	[soyadi] [nvarchar](20) NULL,
	[dogumTarihi] [datetime] NULL,
	[cinsiyet] [bit] NULL,
	[ilID] [int] NULL,
	[ilceID] [int] NULL,
	[acikAdres] [nvarchar](100) NULL,
 CONSTRAINT [PK_KullaniciBilgileri] PRIMARY KEY CLUSTERED 
(
	[kullaniID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Randevu]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Randevu](
	[randevuID] [int] IDENTITY(1,1) NOT NULL,
	[tarih] [date] NULL,
	[saat] [time](7) NULL,
	[durum] [bit] NULL,
	[doktorID] [int] NULL,
	[kullaniciID] [int] NULL,
 CONSTRAINT [PK_Randevu] PRIMARY KEY CLUSTERED 
(
	[randevuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 5.5.2019 14:04:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[rolID] [int] IDENTITY(1,1) NOT NULL,
	[rolAdi] [nvarchar](20) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[rolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Doktor]  WITH CHECK ADD  CONSTRAINT [FK_Doktor_Bolum] FOREIGN KEY([bolumID])
REFERENCES [dbo].[Bolum] ([bolumID])
GO
ALTER TABLE [dbo].[Doktor] CHECK CONSTRAINT [FK_Doktor_Bolum]
GO
ALTER TABLE [dbo].[Doktor]  WITH CHECK ADD  CONSTRAINT [FK_Doktor_Hastane] FOREIGN KEY([hastaneID])
REFERENCES [dbo].[Hastane] ([hastaneID])
GO
ALTER TABLE [dbo].[Doktor] CHECK CONSTRAINT [FK_Doktor_Hastane]
GO
ALTER TABLE [dbo].[Favori]  WITH CHECK ADD  CONSTRAINT [FK_Favori_Doktor] FOREIGN KEY([doktorID])
REFERENCES [dbo].[Doktor] ([doktorID])
GO
ALTER TABLE [dbo].[Favori] CHECK CONSTRAINT [FK_Favori_Doktor]
GO
ALTER TABLE [dbo].[Favori]  WITH CHECK ADD  CONSTRAINT [FK_Favori_Kullanici] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullanicID])
GO
ALTER TABLE [dbo].[Favori] CHECK CONSTRAINT [FK_Favori_Kullanici]
GO
ALTER TABLE [dbo].[Hastane]  WITH CHECK ADD  CONSTRAINT [FK_Hastane_Il] FOREIGN KEY([ilID])
REFERENCES [dbo].[Il] ([ilID])
GO
ALTER TABLE [dbo].[Hastane] CHECK CONSTRAINT [FK_Hastane_Il]
GO
ALTER TABLE [dbo].[Hastane]  WITH CHECK ADD  CONSTRAINT [FK_Hastane_Ilce] FOREIGN KEY([ilceID])
REFERENCES [dbo].[Ilce] ([ilceID])
GO
ALTER TABLE [dbo].[Hastane] CHECK CONSTRAINT [FK_Hastane_Ilce]
GO
ALTER TABLE [dbo].[HastaneBolum]  WITH CHECK ADD  CONSTRAINT [FK_HastaneBolum_Bolum] FOREIGN KEY([bolumID])
REFERENCES [dbo].[Bolum] ([bolumID])
GO
ALTER TABLE [dbo].[HastaneBolum] CHECK CONSTRAINT [FK_HastaneBolum_Bolum]
GO
ALTER TABLE [dbo].[HastaneBolum]  WITH CHECK ADD  CONSTRAINT [FK_HastaneBolum_Hastane] FOREIGN KEY([hastaneID])
REFERENCES [dbo].[Hastane] ([hastaneID])
GO
ALTER TABLE [dbo].[HastaneBolum] CHECK CONSTRAINT [FK_HastaneBolum_Hastane]
GO
ALTER TABLE [dbo].[Ilce]  WITH CHECK ADD  CONSTRAINT [FK_Ilce_Il] FOREIGN KEY([ilID])
REFERENCES [dbo].[Il] ([ilID])
GO
ALTER TABLE [dbo].[Ilce] CHECK CONSTRAINT [FK_Ilce_Il]
GO
ALTER TABLE [dbo].[Izin]  WITH CHECK ADD  CONSTRAINT [FK_Izin_Doktor] FOREIGN KEY([doktorID])
REFERENCES [dbo].[Doktor] ([doktorID])
GO
ALTER TABLE [dbo].[Izin] CHECK CONSTRAINT [FK_Izin_Doktor]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_KullaniciBilgileri] FOREIGN KEY([kullanicID])
REFERENCES [dbo].[KullaniciBilgileri] ([kullaniID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_KullaniciBilgileri]
GO
ALTER TABLE [dbo].[Kullanici]  WITH CHECK ADD  CONSTRAINT [FK_Kullanici_Rol] FOREIGN KEY([rolID])
REFERENCES [dbo].[Rol] ([rolID])
GO
ALTER TABLE [dbo].[Kullanici] CHECK CONSTRAINT [FK_Kullanici_Rol]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_Il] FOREIGN KEY([ilID])
REFERENCES [dbo].[Il] ([ilID])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_Il]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_Ilce] FOREIGN KEY([ilceID])
REFERENCES [dbo].[Ilce] ([ilceID])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_Ilce]
GO
ALTER TABLE [dbo].[Randevu]  WITH CHECK ADD  CONSTRAINT [FK_Randevu_Doktor] FOREIGN KEY([doktorID])
REFERENCES [dbo].[Doktor] ([doktorID])
GO
ALTER TABLE [dbo].[Randevu] CHECK CONSTRAINT [FK_Randevu_Doktor]
GO
ALTER TABLE [dbo].[Randevu]  WITH CHECK ADD  CONSTRAINT [FK_Randevu_Kullanici] FOREIGN KEY([kullaniciID])
REFERENCES [dbo].[Kullanici] ([kullanicID])
GO
ALTER TABLE [dbo].[Randevu] CHECK CONSTRAINT [FK_Randevu_Kullanici]
GO
