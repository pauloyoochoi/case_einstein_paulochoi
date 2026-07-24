-- Tarefa 3.c: Modificar a UF que está indefinida para 'ND'.

USE OpenDataSUS;
GO

UPDATE [dbo].[SindromeGripal]
SET estadoIBGE = 'ND'
WHERE estadoIBGE IS NULL
   OR LTRIM(RTRIM(estadoIBGE)) = ''
   OR estadoIBGE = 'None';
GO