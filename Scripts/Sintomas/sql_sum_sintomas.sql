SELECT 'Febre' AS sintoma, SUM(IF(CAST(x1.B0011 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Tosse' AS sintoma, SUM(IF(CAST(x1.B0012 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Dor de garganta' AS sintoma, SUM(IF(CAST(x1.B0013 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Dificuldade respirar' AS sintoma, SUM(IF(CAST(x1.B0014 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Dor de cabeça' AS sintoma, SUM(IF(CAST(x1.B0015 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Dor no peito' AS sintoma, SUM(IF(CAST(x1.B0016 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Náusea' AS sintoma, SUM(IF(CAST(x1.B0017 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Nariz entupido/escorrendo' AS sintoma, SUM(IF(CAST(x1.B0018 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Fadiga' AS sintoma, SUM(IF(CAST(x1.B0019 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Dor nos olhos' AS sintoma, SUM(IF(CAST(x1.B00110 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Perda de olfato/paladar' AS sintoma, SUM(IF(CAST(x1.B00111 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Dor muscular' AS sintoma, SUM(IF(CAST(x1.B00112 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
UNION ALL
SELECT 'Diarreia' AS sintoma, SUM(IF(CAST(x1.B00113 AS int64) = 1 , 1, 0)) AS contagem
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND 
  (CAST(B009B AS int64) = 1 OR 
   CAST(B009D AS int64) = 1 OR 
   CAST(B009F AS int64) = 1)
