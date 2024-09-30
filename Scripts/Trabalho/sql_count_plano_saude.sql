SELECT CASE 
WHEN B007 = '1' THEN 'Possui plano de saúde'
WHEN B007 = '2' THEN 'Não possui plano de saúde'
ELSE 'Ignorado' END AS plano_saude, COUNT(*) AS contagem 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 
GROUP BY plano_saude

