## O que foi feito? 

### (1) Carga das notificações de síndrome gripal

A tabela `dbo.SindromeGripal` contém as 64 colunas presentes nos arquivos de origem, com os tipos de dados definidos de acordo com o conteúdo de cada campo. Conta ainda com a coluna `id`, do tipo `INT` com auto-incremento, utilizada como chave primária, e duas colunas de auditoria (`NomeArquivoOrigem` e `DataHoraCarga`), que registram o arquivo de origem e a data da carga.

Os tipos de dados foram definidos conforme o conteúdo de cada campo: `DATE` para as `datas`, `INT` para `idade` e `totalTestesRealizados`, `BIT` para `excluido` e `validado`, e `VARCHAR` para os textos, com tamanho dimensionado a partir do maior valor medido em cada coluna.

O pacote `CargaSindromeGripal.dtsx` consolida todos os CSVs da pasta dados por uf nessa tabela. A leitura é feita por um Contêiner do Loop Foreach que percorre a pasta pela máscara *.csv, de modo que novos arquivos, com nomes variáveis, são carregados sem alteração no pacote.

Foram implementados quatro tratamentos durante a carga dos dados. O primeiro foi a conversão da página de código de UTF-8 para Windows-1252 na coluna derivada por meio da expressão `(DT_STR, «comprimento», 1252)`, evitando problemas na gravação de caracteres acentuados. O segundo consistiu na remoção das aspas duplas dos nomes das colunas e dos valores dos registros por meio do qualificador de texto, impedindo que elas fossem armazenadas como parte dos dados. O terceiro foi a conversão dos valores vazios e do literal "None" para `NULL`, garantindo a importação correta dos campos de data, numéricos e textuais. Por fim, foi realizado o ajuste do tamanho das colunas de texto, evitando truncamentos durante a carga.

### (2) Carga dos municípios

A tabela dbo.Municipio contém as 13 colunas presentes no arquivo de origem. 

O pacote CargaMunicipios.dtsx importa a tabela do IBGE para essa tabela.

### (3) Consultas e comandos

| Item do enunciado | Arquivo | 
|---|---| 
| 3.a — criação da tabela de Síndrome Gripal | `CriacaoSindromeGripal.sql` | 
| 3.a — criação da tabela de Municípios | `CriacaoMunicipio.sql` | 
| 3.b.i — contagem por UF com filtro das UFs em lista (`IN`) | `FiltroUfs.sql` | 
| 3.b.ii — contagem por cidade acima de 10 (`HAVING`) | `ContagemAcima10.sql` | 
| 3.c.i — segunda tabela apenas com dados de São Paulo | `SaoPaulo.sql` | 
| 3.c.ii — alteração da UF indefinida para 'ND' | `UpdateND.sql` | 
| 3.c.iii — exclusão de 10 registros da UF 'ND' | `Delete10.sql` |

### (4) Dashboard

| Arquivo | Descrição | 
|---|---| 
| `Dashboard.pbix` | Arquivo do Power BI Desktop. |
| `Dashboard.pdf` | Exportação do dashboard em PDF, para visualização sem o Power BI instalado. | 
| `dashboard_video.m4` | Gravação em vídeo demonstrando a navegação pelo dashboard. |
