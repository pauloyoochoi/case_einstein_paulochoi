-- Tarefa 3.b: Contagem seja acima de 10.

USE OpenDataSUS;
GO

SELECT
    m.nomeMunicipio AS Cidade,
    m.nomeUF        AS UF,
    COUNT(*)        AS TotalNotificacoes
FROM [dbo].[SindromeGripal] s
INNER JOIN [dbo].[Municipio] m
        ON m.codigoMunicipioCompleto = s.municipioIBGE
GROUP BY m.nomeMunicipio, m.nomeUF
HAVING COUNT(*) > 10
ORDER BY TotalNotificacoes DESC;
GO
