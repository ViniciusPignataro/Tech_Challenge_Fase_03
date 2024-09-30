SELECT  
mes,
SUM(CASE
      WHEN CAST(DB.B009B AS int64) = 1 OR CAST(DB.B009D AS int64) = 1 OR CAST(DB.B009F AS int64) = 1 
      THEN 1 
      ELSE 0 
    END) AS teste_positivo,
SUM(CASE
      WHEN CAST(DB.B009B AS int64) = 2 OR CAST(DB.B009D AS int64) = 2 OR CAST(DB.B009F AS int64) = 2 
      THEN 1 
      ELSE 0 
    END) AS teste_negativo,
SUM(CASE
      WHEN CAST(DB.B009B AS int64) = 3 OR CAST(DB.B009D AS int64) = 3 OR CAST(DB.B009F AS int64) = 3 
      THEN 1 
      ELSE 0 
    END) AS teste_inconclusivo,
SUM(CASE
      WHEN CAST(DB.B009B AS int64) = 4 OR CAST(DB.B009D AS int64) = 4 OR CAST(DB.B009F AS int64) = 4 
      THEN 1 
      ELSE 0 
    END) AS teste_ainda_nao_recebeu
FROM 
`basedosdados.br_ibge_pnad_covid.microdados` DB
WHERE mes > 8
GROUP BY mes
ORDER BY mes