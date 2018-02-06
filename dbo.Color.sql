GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Color]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Color](
	[id] [int] NOT NULL,
	[name] [nvarchar](max) NULL,
	[value] [int] NULL,
	[CreationDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[DDLTrigger_Color]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[DDLTrigger_Color]
    ON [DWH].[dbo].[Color]
    FOR Insert
AS
BEGIN
    SET NOCOUNT ON;
	select 1;
  end
' 
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Color__CreationD__239E4DCF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Color] ADD  DEFAULT (getdate()) FOR [CreationDate]
END

GO
