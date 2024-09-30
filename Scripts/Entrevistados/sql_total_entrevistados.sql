SELECT 
    mes,
    COUNT(*) 
FROM 
    `basedosdados.br_ibge_pnad_covid.microdados` 
WHERE mes > 8
GROUP BY mes 
ORDER BY mes