USE [Gravity_Books_DWH]
GO
/****** Object:  Table [dbo].[DIM_address]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_address](
	[address_sk] [int] IDENTITY(1,1) NOT NULL,
	[address_bk] [int] NULL,
	[country_fk] [int] NULL,
	[street_number] [varchar](50) NULL,
	[street_name] [varchar](500) NULL,
	[city] [varchar](500) NULL,
	[source_system_code] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
 CONSTRAINT [PK_DIM_address] PRIMARY KEY CLUSTERED 
(
	[address_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_author]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_author](
	[author_sk] [int] IDENTITY(1,1) NOT NULL,
	[author_bk] [int] NULL,
	[author_name] [varchar](500) NULL,
	[source_system_code] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
 CONSTRAINT [PK_DIM_author] PRIMARY KEY CLUSTERED 
(
	[author_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_book]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_book](
	[bookid_sk] [int] IDENTITY(1,1) NOT NULL,
	[bookid_bk] [int] NULL,
	[publisher_fk] [int] NULL,
	[language_fk] [int] NULL,
	[title] [varchar](1000) NULL,
	[isbn13] [varchar](50) NULL,
	[num_pages] [int] NULL,
	[publication_date] [date] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
	[source_system_code] [tinyint] NOT NULL,
 CONSTRAINT [PK_DIM_book] PRIMARY KEY CLUSTERED 
(
	[bookid_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_book_author]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_book_author](
	[book_author_sk] [int] IDENTITY(1,1) NOT NULL,
	[book_fk] [int] NULL,
	[author_fk] [int] NULL,
	[source_system_code] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
 CONSTRAINT [PK_DIM_book_author] PRIMARY KEY CLUSTERED 
(
	[book_author_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_country]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_country](
	[country_sk] [int] IDENTITY(1,1) NOT NULL,
	[country_bk] [int] NULL,
	[country_name] [varchar](500) NULL,
	[source_system_code] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
 CONSTRAINT [PK_DIM_country] PRIMARY KEY CLUSTERED 
(
	[country_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_customer]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_customer](
	[customer_sk] [int] IDENTITY(1,1) NOT NULL,
	[customer_bk] [int] NULL,
	[first_name] [varchar](500) NULL,
	[last_name] [varchar](500) NULL,
	[email] [varchar](500) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
	[source_system_code] [tinyint] NULL,
 CONSTRAINT [PK_DIM_customer] PRIMARY KEY CLUSTERED 
(
	[customer_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_customer_address]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_customer_address](
	[customer_address_sk] [int] IDENTITY(1,1) NOT NULL,
	[customer_fk] [int] NULL,
	[address_fk] [int] NULL,
	[source_system_code] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
	[customer_address_status_fk] [int] NULL,
 CONSTRAINT [PK_DIM_customer_address] PRIMARY KEY CLUSTERED 
(
	[customer_address_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_customer_address_status]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_customer_address_status](
	[customer_address_status_sk] [int] IDENTITY(1,1) NOT NULL,
	[customer_address_status_bk] [int] NULL,
	[customer_address_status] [varchar](50) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
	[source_system_code] [tinyint] NULL,
 CONSTRAINT [PK_DIM_customer_address_status] PRIMARY KEY CLUSTERED 
(
	[customer_address_status_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_language]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_language](
	[language_sk] [int] IDENTITY(1,1) NOT NULL,
	[language_bk] [int] NULL,
	[language_code] [varchar](50) NULL,
	[language_name] [varchar](50) NULL,
	[source_system_code] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
 CONSTRAINT [PK_DIM_language] PRIMARY KEY CLUSTERED 
(
	[language_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_publisher]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_publisher](
	[publisher_sk] [int] IDENTITY(1,1) NOT NULL,
	[publisher_bk] [int] NULL,
	[publisher_name] [nvarchar](1000) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
	[source_system_code] [tinyint] NULL,
 CONSTRAINT [PK_DIM_publisher] PRIMARY KEY CLUSTERED 
(
	[publisher_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_shipping_method]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_shipping_method](
	[shippingmethod_sk] [int] IDENTITY(1,1) NOT NULL,
	[shippingmethod_bk] [int] NULL,
	[method_name] [varchar](1000) NULL,
	[cost] [decimal](6, 2) NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
	[source_system_code] [tinyint] NULL,
 CONSTRAINT [PK_DIM_shippingmethod] PRIMARY KEY CLUSTERED 
(
	[shippingmethod_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIM_status]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIM_status](
	[status_sk] [int] IDENTITY(1,1) NOT NULL,
	[status_bk] [int] NULL,
	[status_value] [varchar](50) NULL,
	[source_system_code] [tinyint] NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NULL,
 CONSTRAINT [PK_DIM_status] PRIMARY KEY CLUSTERED 
(
	[status_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[DateSK] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Day] [char](2) NOT NULL,
	[DaySuffix] [varchar](4) NOT NULL,
	[DayOfWeek] [varchar](9) NOT NULL,
	[DOWInMonth] [tinyint] NOT NULL,
	[DayOfYear] [int] NOT NULL,
	[WeekOfYear] [tinyint] NOT NULL,
	[WeekOfMonth] [tinyint] NOT NULL,
	[Month] [char](2) NOT NULL,
	[MonthName] [varchar](9) NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[QuarterName] [varchar](6) NOT NULL,
	[Year] [char](4) NOT NULL,
	[StandardDate] [varchar](10) NULL,
	[HolidayText] [varchar](50) NULL,
 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
(
	[DateSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_order]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_order](
	[orderid_sk] [int] IDENTITY(1,1) NOT NULL,
	[orderid_bk] [int] NULL,
	[date_fk] [int] NULL,
	[shippingmethod_fk] [int] NULL,
	[customer_fk] [int] NULL,
	[bookid_fk] [int] NULL,
	[price] [decimal](5, 2) NULL,
	[method_cost] [decimal](6, 2) NULL,
	[total_price] [decimal](30, 2) NULL,
	[source_system_code] [tinyint] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_FACT_order] PRIMARY KEY CLUSTERED 
(
	[orderid_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACT_order_status]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACT_order_status](
	[order_status_sk] [int] IDENTITY(1,1) NOT NULL,
	[order_bk] [int] NULL,
	[status_fk] [int] NULL,
	[order_recieved] [int] NULL,
	[order_pending_delivery] [int] NULL,
	[order_delivery_in_progress] [int] NULL,
	[order_delivered] [int] NULL,
	[order_cancelled] [int] NULL,
	[order_returned] [int] NULL,
	[source_system_code] [tinyint] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_FACT_order_status] PRIMARY KEY CLUSTERED 
(
	[order_status_sk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meta_control_fact_status]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meta_control_fact_status](
	[stid] [int] NULL,
	[st_order_details] [varchar](50) NULL,
	[st_last_load_date] [datetime] NULL,
	[st_last_order_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meta_control_fact_table]    Script Date: 29/01/2024 4:19:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meta_control_fact_table](
	[id] [int] NULL,
	[order_details] [varchar](50) NULL,
	[last_load_date] [datetime] NULL,
	[last_load_orderdetails_bk] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DIM_address]  WITH CHECK ADD  CONSTRAINT [FK_DIM_address_DIM_country] FOREIGN KEY([country_fk])
REFERENCES [dbo].[DIM_country] ([country_sk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DIM_address] CHECK CONSTRAINT [FK_DIM_address_DIM_country]
GO
ALTER TABLE [dbo].[DIM_book]  WITH CHECK ADD  CONSTRAINT [FK_DIM_book_DIM_language] FOREIGN KEY([language_fk])
REFERENCES [dbo].[DIM_language] ([language_sk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DIM_book] CHECK CONSTRAINT [FK_DIM_book_DIM_language]
GO
ALTER TABLE [dbo].[DIM_book]  WITH CHECK ADD  CONSTRAINT [FK_DIM_book_DIM_publisher] FOREIGN KEY([publisher_fk])
REFERENCES [dbo].[DIM_publisher] ([publisher_sk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DIM_book] CHECK CONSTRAINT [FK_DIM_book_DIM_publisher]
GO
ALTER TABLE [dbo].[DIM_book_author]  WITH CHECK ADD  CONSTRAINT [FK_DIM_book_author_DIM_author] FOREIGN KEY([author_fk])
REFERENCES [dbo].[DIM_author] ([author_sk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DIM_book_author] CHECK CONSTRAINT [FK_DIM_book_author_DIM_author]
GO
ALTER TABLE [dbo].[DIM_book_author]  WITH CHECK ADD  CONSTRAINT [FK_DIM_book_author_DIM_book] FOREIGN KEY([book_fk])
REFERENCES [dbo].[DIM_book] ([bookid_sk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DIM_book_author] CHECK CONSTRAINT [FK_DIM_book_author_DIM_book]
GO
ALTER TABLE [dbo].[DIM_customer_address]  WITH CHECK ADD  CONSTRAINT [FK_DIM_customer_address_DIM_address] FOREIGN KEY([address_fk])
REFERENCES [dbo].[DIM_address] ([address_sk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DIM_customer_address] CHECK CONSTRAINT [FK_DIM_customer_address_DIM_address]
GO
ALTER TABLE [dbo].[DIM_customer_address]  WITH CHECK ADD  CONSTRAINT [FK_DIM_customer_address_DIM_customer] FOREIGN KEY([customer_fk])
REFERENCES [dbo].[DIM_customer] ([customer_sk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DIM_customer_address] CHECK CONSTRAINT [FK_DIM_customer_address_DIM_customer]
GO
ALTER TABLE [dbo].[DIM_customer_address]  WITH CHECK ADD  CONSTRAINT [FK_DIM_customer_address_DIM_customer_address_status] FOREIGN KEY([customer_address_status_fk])
REFERENCES [dbo].[DIM_customer_address_status] ([customer_address_status_sk])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DIM_customer_address] CHECK CONSTRAINT [FK_DIM_customer_address_DIM_customer_address_status]
GO
ALTER TABLE [dbo].[FACT_order]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_DIM_book] FOREIGN KEY([bookid_fk])
REFERENCES [dbo].[DIM_book] ([bookid_sk])
GO
ALTER TABLE [dbo].[FACT_order] CHECK CONSTRAINT [FK_FACT_order_DIM_book]
GO
ALTER TABLE [dbo].[FACT_order]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_DIM_customer] FOREIGN KEY([customer_fk])
REFERENCES [dbo].[DIM_customer] ([customer_sk])
GO
ALTER TABLE [dbo].[FACT_order] CHECK CONSTRAINT [FK_FACT_order_DIM_customer]
GO
ALTER TABLE [dbo].[FACT_order]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_DIM_shipping_method] FOREIGN KEY([shippingmethod_fk])
REFERENCES [dbo].[DIM_shipping_method] ([shippingmethod_sk])
GO
ALTER TABLE [dbo].[FACT_order] CHECK CONSTRAINT [FK_FACT_order_DIM_shipping_method]
GO
ALTER TABLE [dbo].[FACT_order]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_DimDate] FOREIGN KEY([date_fk])
REFERENCES [dbo].[DimDate] ([DateSK])
GO
ALTER TABLE [dbo].[FACT_order] CHECK CONSTRAINT [FK_FACT_order_DimDate]
GO
ALTER TABLE [dbo].[FACT_order_status]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_status_DIM_status] FOREIGN KEY([status_fk])
REFERENCES [dbo].[DIM_status] ([status_sk])
GO
ALTER TABLE [dbo].[FACT_order_status] CHECK CONSTRAINT [FK_FACT_order_status_DIM_status]
GO
ALTER TABLE [dbo].[FACT_order_status]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_status_DimDate] FOREIGN KEY([order_recieved])
REFERENCES [dbo].[DimDate] ([DateSK])
GO
ALTER TABLE [dbo].[FACT_order_status] CHECK CONSTRAINT [FK_FACT_order_status_DimDate]
GO
ALTER TABLE [dbo].[FACT_order_status]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_status_DimDate1] FOREIGN KEY([order_pending_delivery])
REFERENCES [dbo].[DimDate] ([DateSK])
GO
ALTER TABLE [dbo].[FACT_order_status] CHECK CONSTRAINT [FK_FACT_order_status_DimDate1]
GO
ALTER TABLE [dbo].[FACT_order_status]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_status_DimDate2] FOREIGN KEY([order_delivery_in_progress])
REFERENCES [dbo].[DimDate] ([DateSK])
GO
ALTER TABLE [dbo].[FACT_order_status] CHECK CONSTRAINT [FK_FACT_order_status_DimDate2]
GO
ALTER TABLE [dbo].[FACT_order_status]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_status_DimDate3] FOREIGN KEY([order_delivered])
REFERENCES [dbo].[DimDate] ([DateSK])
GO
ALTER TABLE [dbo].[FACT_order_status] CHECK CONSTRAINT [FK_FACT_order_status_DimDate3]
GO
ALTER TABLE [dbo].[FACT_order_status]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_status_DimDate4] FOREIGN KEY([order_cancelled])
REFERENCES [dbo].[DimDate] ([DateSK])
GO
ALTER TABLE [dbo].[FACT_order_status] CHECK CONSTRAINT [FK_FACT_order_status_DimDate4]
GO
ALTER TABLE [dbo].[FACT_order_status]  WITH CHECK ADD  CONSTRAINT [FK_FACT_order_status_DimDate5] FOREIGN KEY([order_returned])
REFERENCES [dbo].[DimDate] ([DateSK])
GO
ALTER TABLE [dbo].[FACT_order_status] CHECK CONSTRAINT [FK_FACT_order_status_DimDate5]
GO
