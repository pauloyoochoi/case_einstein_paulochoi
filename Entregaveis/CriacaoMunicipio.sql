-- Tarefa 3.a: Script de criação da tabela dbo.Municipio.

USE OpenDataSUS;
GO

CREATE TABLE [dbo].[Municipio]
(
    [UF] VARCHAR(2) NULL,
    [nomeUF] VARCHAR(30) NULL,
    [regiaoGeograficaIntermediaria] VARCHAR(4) NULL,
    [nomeRegiaoGeograficaIntermediaria] VARCHAR(50) NULL,
    [regiaoGeograficaImediata] VARCHAR(6) NULL,
    [nomeRegiaoGeograficaImediata] VARCHAR(80) NULL,
    [mesorregiaoGeografica] VARCHAR(2) NULL,
    [nomeMesorregiao] VARCHAR(50) NULL,
    [microrregiaoGeografica] VARCHAR(3) NULL,
    [nomeMicrorregiao] VARCHAR(50) NULL,
    [municipio] VARCHAR(5) NULL,
    [codigoMunicipioCompleto] VARCHAR(7) NOT NULL PRIMARY KEY,
    [nomeMunicipio] VARCHAR(60) NULL
);
GO
