USE [master]
GO
/****** Object:  Database [Warehouse Managment]    Script Date: 2/3/2024 9:10:01 PM ******/
CREATE DATABASE [Warehouse Managment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Warehouse Managment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Warehouse Managment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Warehouse Managment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Warehouse Managment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Warehouse Managment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Warehouse Managment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Warehouse Managment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Warehouse Managment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Warehouse Managment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Warehouse Managment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Warehouse Managment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Warehouse Managment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Warehouse Managment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Warehouse Managment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Warehouse Managment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Warehouse Managment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Warehouse Managment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Warehouse Managment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Warehouse Managment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Warehouse Managment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Warehouse Managment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Warehouse Managment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Warehouse Managment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Warehouse Managment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Warehouse Managment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Warehouse Managment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Warehouse Managment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Warehouse Managment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Warehouse Managment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Warehouse Managment] SET  MULTI_USER 
GO
ALTER DATABASE [Warehouse Managment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Warehouse Managment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Warehouse Managment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Warehouse Managment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Warehouse Managment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Warehouse Managment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Warehouse Managment] SET QUERY_STORE = OFF
GO
USE [Warehouse Managment]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NULL,
 CONSTRAINT [PK__Categori__19093A2B680E3BA9] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](100) NULL,
	[ContactInfo] [varchar](255) NULL,
 CONSTRAINT [PK__Customer__A4AE64B8221DCD44] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[DiscountID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountCode] [varchar](50) NULL,
	[DiscountAmount] [decimal](10, 2) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK__Discount__E43F6DF6F60A1877] PRIMARY KEY CLUSTERED 
(
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [varchar](100) NULL,
	[Position] [varchar](50) NULL,
	[ContactInfo] [varchar](255) NULL,
 CONSTRAINT [PK__Employee__7AD04FF1D6E7303B] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[ProductID] [int] NOT NULL,
	[WarehouseID] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK__Inventor__366C4C10E532B044] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[WarehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK__OrderDet__08D097C1712ABD57] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDiscounts]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDiscounts](
	[OrderID] [int] NOT NULL,
	[DiscountID] [int] NOT NULL,
 CONSTRAINT [PK__OrderDis__BDD3AD703D9F897A] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPayments]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPayments](
	[OrderID] [int] NOT NULL,
	[PaymentMethodID] [int] NOT NULL,
	[Amount] [decimal](10, 2) NULL,
	[PaymentDate] [date] NULL,
 CONSTRAINT [PK__OrderPay__EE5347B047C9BD42] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[PaymentMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NULL,
	[OrderDate] [date] NULL,
 CONSTRAINT [PK__Orders__C3905BAF39473FEC] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[PaymentMethodID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentMethodName] [varchar](50) NULL,
 CONSTRAINT [PK__PaymentM__DC31C1F30BDEF4C0] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductDiscounts]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductDiscounts](
	[ProductID] [int] NOT NULL,
	[DiscountID] [int] NOT NULL,
 CONSTRAINT [PK__ProductD__CA4F3032A854651B] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[DiscountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[Image] [varchar](255) NULL,
 CONSTRAINT [PK__ProductI__7516F4EC0F0FACAF] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductReviews]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductReviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[CustomerID] [int] NULL,
	[Review] [varchar](255) NULL,
	[Rating] [int] NULL,
	[ReviewDate] [date] NULL,
 CONSTRAINT [PK__ProductR__74BC79AEF05BA611] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NULL,
	[ProductDescription] [varchar](255) NULL,
	[CategoryID] [int] NULL,
	[SupplierID] [int] NULL,
 CONSTRAINT [PK__Products__B40CC6ED74278572] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVendors]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVendors](
	[ProductID] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Returns]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returns](
	[ReturnID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[ReturnDate] [date] NULL,
	[Reason] [varchar](255) NULL,
 CONSTRAINT [PK__Returns__F445E988AF2145FE] PRIMARY KEY CLUSTERED 
(
	[ReturnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[ShipmentID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NULL,
	[EmployeeID] [int] NULL,
	[ShipmentDate] [date] NULL,
 CONSTRAINT [PK__Shipment__5CAD378DC68C81AF] PRIMARY KEY CLUSTERED 
(
	[ShipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [varchar](100) NULL,
	[ContactInfo] [varchar](255) NULL,
 CONSTRAINT [PK__Supplier__4BE6669461107A10] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[VendorID] [int] IDENTITY(1,1) NOT NULL,
	[VendorName] [varchar](100) NULL,
	[ContactInfo] [varchar](255) NULL,
 CONSTRAINT [PK__Vendors__FC8618D31C66CE31] PRIMARY KEY CLUSTERED 
(
	[VendorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Warehouses]    Script Date: 2/3/2024 9:10:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Warehouses](
	[WarehouseID] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseLocation] [varchar](255) NULL,
 CONSTRAINT [PK__Warehous__2608AFD97FB7EBF3] PRIMARY KEY CLUSTERED 
(
	[WarehouseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK__Inventory__Produ__2C3393D0] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK__Inventory__Produ__2C3393D0]
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD  CONSTRAINT [FK__Inventory__Wareh__2D27B809] FOREIGN KEY([WarehouseID])
REFERENCES [dbo].[Warehouses] ([WarehouseID])
GO
ALTER TABLE [dbo].[Inventory] CHECK CONSTRAINT [FK__Inventory__Wareh__2D27B809]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Order__31EC6D26] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Order__31EC6D26]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK__OrderDeta__Produ__32E0915F] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK__OrderDeta__Produ__32E0915F]
GO
ALTER TABLE [dbo].[OrderDiscounts]  WITH CHECK ADD  CONSTRAINT [FK__OrderDisc__Disco__5629CD9C] FOREIGN KEY([DiscountID])
REFERENCES [dbo].[Discounts] ([DiscountID])
GO
ALTER TABLE [dbo].[OrderDiscounts] CHECK CONSTRAINT [FK__OrderDisc__Disco__5629CD9C]
GO
ALTER TABLE [dbo].[OrderDiscounts]  WITH CHECK ADD  CONSTRAINT [FK__OrderDisc__Order__5535A963] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDiscounts] CHECK CONSTRAINT [FK__OrderDisc__Order__5535A963]
GO
ALTER TABLE [dbo].[OrderPayments]  WITH CHECK ADD  CONSTRAINT [FK__OrderPaym__Order__4F7CD00D] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderPayments] CHECK CONSTRAINT [FK__OrderPaym__Order__4F7CD00D]
GO
ALTER TABLE [dbo].[OrderPayments]  WITH CHECK ADD  CONSTRAINT [FK__OrderPaym__Payme__5070F446] FOREIGN KEY([PaymentMethodID])
REFERENCES [dbo].[PaymentMethods] ([PaymentMethodID])
GO
ALTER TABLE [dbo].[OrderPayments] CHECK CONSTRAINT [FK__OrderPaym__Payme__5070F446]
GO
ALTER TABLE [dbo].[ProductDiscounts]  WITH CHECK ADD  CONSTRAINT [FK__ProductDi__Disco__59FA5E80] FOREIGN KEY([DiscountID])
REFERENCES [dbo].[Discounts] ([DiscountID])
GO
ALTER TABLE [dbo].[ProductDiscounts] CHECK CONSTRAINT [FK__ProductDi__Disco__59FA5E80]
GO
ALTER TABLE [dbo].[ProductDiscounts]  WITH CHECK ADD  CONSTRAINT [FK__ProductDi__Produ__59063A47] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductDiscounts] CHECK CONSTRAINT [FK__ProductDi__Produ__59063A47]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK__ProductIm__Produ__4AB81AF0] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK__ProductIm__Produ__4AB81AF0]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK__ProductRe__Custo__47DBAE45] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK__ProductRe__Custo__47DBAE45]
GO
ALTER TABLE [dbo].[ProductReviews]  WITH CHECK ADD  CONSTRAINT [FK__ProductRe__Produ__46E78A0C] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductReviews] CHECK CONSTRAINT [FK__ProductRe__Produ__46E78A0C]
GO
ALTER TABLE [dbo].[ProductVendors]  WITH CHECK ADD  CONSTRAINT [FK__ProductVe__Produ__4316F928] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[ProductVendors] CHECK CONSTRAINT [FK__ProductVe__Produ__4316F928]
GO
ALTER TABLE [dbo].[ProductVendors]  WITH CHECK ADD  CONSTRAINT [FK__ProductVe__Vendo__440B1D61] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([VendorID])
GO
ALTER TABLE [dbo].[ProductVendors] CHECK CONSTRAINT [FK__ProductVe__Vendo__440B1D61]
GO
ALTER TABLE [dbo].[Returns]  WITH CHECK ADD  CONSTRAINT [FK__Returns__OrderID__3D5E1FD2] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Returns] CHECK CONSTRAINT [FK__Returns__OrderID__3D5E1FD2]
GO
ALTER TABLE [dbo].[Returns]  WITH CHECK ADD  CONSTRAINT [FK__Returns__Product__3E52440B] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ProductID])
GO
ALTER TABLE [dbo].[Returns] CHECK CONSTRAINT [FK__Returns__Product__3E52440B]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK__Shipment__Employ__3A81B327] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employees] ([EmployeeID])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK__Shipment__Employ__3A81B327]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK__Shipment__OrderI__398D8EEE] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK__Shipment__OrderI__398D8EEE]
GO
USE [master]
GO
ALTER DATABASE [Warehouse Managment] SET  READ_WRITE 
GO
