SELECT 'Diabetes' AS grupo_risco, SUM(IF(CAST(B011 AS int64) = 1 OR CAST(B011 AS int64) = 2, 1, 0)) AS nao_restringiu_ou_restringiu_pouco, SUM(IF(CAST(B011 AS int64) = 3 OR CAST(B011 AS int64) = 4, 1, 0)) AS tentou_restringir_ou_restringiu
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND b0101 = '1'
UNION ALL
SELECT 'Hipertensão' AS grupo_risco, SUM(IF(CAST(B011 AS int64) = 1 OR CAST(B011 AS int64) = 2, 1, 0)) AS nao_restringiu_ou_restringiu_pouco, SUM(IF(CAST(B011 AS int64) = 3 OR CAST(B011 AS int64) = 4, 1, 0)) AS tentou_restringir_ou_restringiu 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND b0102 = '1'
UNION ALL
SELECT 'Doenças respiratórias' AS grupo_risco, SUM(IF(CAST(B011 AS int64) = 1 OR CAST(B011 AS int64) = 2, 1, 0)) AS nao_restringiu_ou_restringiu_pouco, SUM(IF(CAST(B011 AS int64) = 3 OR CAST(B011 AS int64) = 4, 1, 0)) AS tentou_restringir_ou_restringiu  
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND b0103 = '1'
UNION ALL
SELECT 'Doenças cardíacas' AS grupo_risco, SUM(IF(CAST(B011 AS int64) = 1 OR CAST(B011 AS int64) = 2, 1, 0)) AS nao_restringiu_ou_restringiu_pouco, SUM(IF(CAST(B011 AS int64) = 3 OR CAST(B011 AS int64) = 4, 1, 0)) AS tentou_restringir_ou_restringiu 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND b0104 = '1'
UNION ALL
SELECT 'Faixa etária' AS grupo_risco, SUM(IF(CAST(B011 AS int64) = 1 OR CAST(B011 AS int64) = 2, 1, 0)) AS nao_restringiu_ou_restringiu_pouco, SUM(IF(CAST(B011 AS int64) = 3 OR CAST(B011 AS int64) = 4, 1, 0)) AS tentou_restringir_ou_restringiu 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND CAST(A002 AS int64) > 60
