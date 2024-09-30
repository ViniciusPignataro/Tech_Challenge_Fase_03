SELECT CASE 
WHEN CAST(C008 AS int64) > CAST(C009 AS int64) THEN 'Trabalhou menos que o normal'
WHEN CAST(C008 AS int64) = CAST(C009 AS int64) THEN 'Trabalhou a mesma quantidade'
WHEN CAST(C008 AS int64) < CAST(C009 AS int64) THEN 'Trabalhou mais que o normal'
ELSE 'Indefinido' END AS carga_horaria_relativa_semana_anterior, COUNT(*) 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND C008 IS NOT NULL AND C009 IS NOT NULL
GROUP BY carga_horaria_relativa_semana_anterior 

