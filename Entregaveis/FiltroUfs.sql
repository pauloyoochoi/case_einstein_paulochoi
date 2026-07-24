-- Tarefa 3.b: Filtro das UFs em uma lista.

USE OpenDataSUS;
GO

SELECT
    m.nomeUF   AS UF,
    COUNT(*)   AS TotalNotificacoes
FROM [dbo].[SindromeGripal] s
INNER JOIN [dbo].[Municipio] m
        ON m.codigoMunicipioCompleto = s.municipioIBGE
WHERE m.nomeUF IN ('Paraná', 'São Paulo', 'Pernambuco', 'Espírito Santo')
GROUP BY m.nomeUF
ORDER BY TotalNotificacoes DESC;
GO