-- Tarefa 3.c: Apagar 10 registros

USE OpenDataSUS;
GO

DELETE TOP (10)
FROM [dbo].[SindromeGripal]
WHERE estadoIBGE = 'ND';
GO