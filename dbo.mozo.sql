GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mozo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[mozo](
	[OrderProductId] [nvarchar](max) NULL,
	[ExecutedBudget] [decimal](16, 2) NULL,
	[Budget] [decimal](16, 2) NULL
) ON [PRIMARY]
END
GO
