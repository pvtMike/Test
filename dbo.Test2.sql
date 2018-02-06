GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Test2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Test2](
	[itemId] [int] NOT NULL,
	[itemValue] [int] NOT NULL
) ON [PRIMARY]
END
GO
