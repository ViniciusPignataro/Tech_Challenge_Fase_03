SELECT 'Diabetes' AS grupo_risco, COUNT(*) AS contagem 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND b0101 = '1'
UNION ALL
SELECT 'Hipertensão' AS grupo_risco, COUNT(*) AS contagem 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND b0102 = '1'
UNION ALL
SELECT 'Doenças respiratórias' AS grupo_risco, COUNT(*) AS contagem 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND b0103 = '1'
UNION ALL
SELECT 'Doenças cardíacas' AS grupo_risco, COUNT(*) AS contagem 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND b0104 = '1'
UNION ALL
SELECT 'Faixa etária' AS grupo_risco, COUNT(*) AS contagem 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND CAST(A002 AS int64) > 60
