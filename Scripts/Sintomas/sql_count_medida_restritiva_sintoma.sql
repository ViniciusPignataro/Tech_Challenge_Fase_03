SELECT 
CASE 
  WHEN b011 = '1' THEN 'Não fez restrição, levou vida normal como antes da pandemia'
  WHEN b011 = '2' THEN 'Reduziu o contato com as pessoas, mas continuou saindo de casa para trabalho ou atividades não essenciais'
  WHEN b011 = '3' THEN 'Ficou em casa e só saiu em caso de necessidade básica '
  WHEN b011 = '4' THEN 'Ficou rigorosamente isolado em casa'
  ELSE 'Ignorado'
END AS medida_restritiva_de_contato,
COUNT(*) AS quantidade_pessoas_com_sintomas
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1 
WHERE mes > 8 AND
(IF(CAST(B009B AS int64) = 1 , 1, 0) + 
IF(CAST(B009D AS int64) = 1 , 1, 0) +
IF(CAST(B009F AS int64) = 1 , 1, 0)) > 0
  GROUP BY medida_restritiva_de_contato
  ORDER BY quantidade_pessoas_com_sintomas