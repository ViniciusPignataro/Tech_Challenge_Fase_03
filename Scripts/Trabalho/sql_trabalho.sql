SELECT 
mes,
SUM(IF(CAST(C001 AS int64) = 1, 1, 0)) AS trabalhando,
SUM(IF(CAST(C001 AS int64) = 2, 1, 0)) AS nao_trabalhando
FROM 
`basedosdados.br_ibge_pnad_covid.microdados`
WHERE mes > 8
GROUP BY mes
ORDER BY mes