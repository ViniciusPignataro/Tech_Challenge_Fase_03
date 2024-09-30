SELECT CASE 
WHEN CAST(A004 AS int64) <= 1 THEN 'Branca' 
WHEN CAST(A004 AS int64) <= 2 THEN 'Preta' 
WHEN CAST(A004 AS int64) <= 3 THEN 'Amarela' 
WHEN CAST(A004 AS int64) <= 4 THEN 'Parda' 
WHEN CAST(A004 AS int64) <= 5 THEN 'Indígena' 
ELSE 'Ignorado' END AS raca, COUNT(*) AS quantidade, A004
FROM `basedosdados.br_ibge_pnad_covid.microdados` 
WHERE mes > 8
GROUP BY raca,A004
ORDER BY A004