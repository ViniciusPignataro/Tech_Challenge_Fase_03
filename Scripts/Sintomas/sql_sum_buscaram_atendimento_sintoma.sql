SELECT 'buscaram_posto_saude' AS situacao, SUM(IF(CAST(x1.B002 AS int64) = 1, 1, 0)) AS quantidade
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND
  (IF(CAST(x1.B0011 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0012 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0013 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0014 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0015 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0016 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0017 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0018 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0019 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B00110 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B00111 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B00112 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B00113 AS int64) = 1, 1, 0)) >= 1
UNION ALL
SELECT 'nao_buscaram_posto_saude' AS situacao, SUM(IF(CAST(x1.B002 AS int64) = 2, 1, 0)) AS quantidade
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND
  (IF(CAST(x1.B0011 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0012 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0013 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0014 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0015 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0016 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0017 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0018 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B0019 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B00110 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B00111 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B00112 AS int64) = 1, 1, 0) +
   IF(CAST(x1.B00113 AS int64) = 1, 1, 0)) >= 1
