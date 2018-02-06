GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FactInvoice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[FactInvoice](
	[InvoiceNumber] [int] NOT NULL,
	[Item] [nvarchar](max) NOT NULL,
	[Volume] [int] NULL,
	[NettoValue] [int] NOT NULL,
	[GrossValue] [int] NOT NULL
) ON [PRIMARY]
END
GO
