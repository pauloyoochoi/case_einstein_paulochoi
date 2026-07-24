-- Tarefa 3.c: São Paulo.

USE OpenDataSUS;
GO

DROP TABLE IF EXISTS [dbo].[SindromeGripal_SP];
GO

SELECT *
INTO [dbo].[SindromeGripal_SP]
FROM [dbo].[SindromeGripal]
WHERE estado = 'São Paulo';
GO

