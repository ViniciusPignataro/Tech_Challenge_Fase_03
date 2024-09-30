SELECT CASE 
WHEN CAST(A003 AS int64) <= 1 THEN 'Mulher' 
ELSE 'Homem' END AS sexo, COUNT(*) AS quantidade
FROM `basedosdados.br_ibge_pnad_covid.microdados` 
WHERE mes > 8
GROUP BY sexo
ORDER BY sexo