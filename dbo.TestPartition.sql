GO
IF NOT EXISTS (SELECT * FROM sys.partition_functions WHERE name = N'set_partitions')
CREATE PARTITION FUNCTION [set_partitions](bigint) AS RANGE RIGHT FOR VALUES (20170201, 20170301, 20170401)
GO
IF NOT EXISTS (SELECT * FROM sys.partition_schemes WHERE name = N'schemat_Partitions')
CREATE PARTITION SCHEME [schemat_Partitions] AS PARTITION [set_partitions] TO ([group_1], [group_1], [group_1], [group_1])
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TestPartition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TestPartition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[DateId] [bigint] NULL
) ON [schemat_Partitions]([DateId])
END
GO
