SELECT CASE 
WHEN CAST(A002 AS int64) <= 14 THEN 'Até 14 anos' 
WHEN CAST(A002 AS int64) < 25 THEN 'Entre 15 e 24 anos' 
WHEN CAST(A002 AS int64) < 35 THEN 'Entre 25 e 34 anos' 
WHEN CAST(A002 AS int64) < 45 THEN 'Entre 35 e 44 anos' 
WHEN CAST(A002 AS int64) < 55 THEN 'Entre 45 e 54 anos' 
WHEN CAST(A002 AS int64) < 65 THEN 'Entre 55 e 64 anos' 
ELSE 'Mais de 65 anos' END AS faixa_etaria, COUNT(*) AS quantidade
FROM `basedosdados.br_ibge_pnad_covid.microdados` 
WHERE mes > 8
GROUP BY faixa_etaria
ORDER BY faixa_etaria