GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stg]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[stg](
	[OrderProductId] [nvarchar](max) NULL,
	[Budget] [nvarchar](max) NULL
) ON [PRIMARY]
END
GO
