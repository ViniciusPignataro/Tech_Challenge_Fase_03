SELECT CASE 
WHEN CAST(A005 AS int64) <= 1 THEN 'Sem instrução' 
WHEN CAST(A005 AS int64) <= 2 THEN 'Fundamental incompleto' 
WHEN CAST(A005 AS int64) <= 3 THEN 'Fundamental completo' 
WHEN CAST(A005 AS int64) <= 4 THEN 'Médio incompleto' 
WHEN CAST(A005 AS int64) <= 5 THEN 'Médio completo' 
WHEN CAST(A005 AS int64) <= 6 THEN 'Superior incompleto' 
WHEN CAST(A005 AS int64) <= 7 THEN 'Superior completo'  
ELSE 'Pós-graduação, mestrado ou doutorado' END AS escolaridade, COUNT(*) AS quantidade, A005
FROM `basedosdados.br_ibge_pnad_covid.microdados` 
WHERE mes > 8
GROUP BY escolaridade,A005
ORDER BY A005