SELECT CASE 
WHEN CAST(C013 AS int64) = 1 THEN 'Trabalho em home office'
ELSE 'Não trabalhou em home office' END AS home_office, COUNT(*) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND C012 = '2'
GROUP BY home_office 

