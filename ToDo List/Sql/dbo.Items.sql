CREATE TABLE [dbo].[Items] (
    [ItemId] INT           IDENTITY (1, 1) NOT NULL,
    [Nome]   NVARCHAR (50) NULL,
    [UserId] INT           NOT NULL,
    CONSTRAINT [PK_dbo.Items] PRIMARY KEY CLUSTERED ([ItemId] ASC)
);

