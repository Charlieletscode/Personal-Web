CREATE TABLE [dbo].[Conversions] (
    [Unit]   NVARCHAR (MAX) NOT NULL,
    [Factor] NCHAR (10)     NOT NULL, 
    CONSTRAINT [PK_Conversions] PRIMARY KEY ([Unit])
);

