SELECT CASE 
WHEN C01012 > C011A12 THEN 'Recebeu menos que na semana anterior'
WHEN C01012 = C011A12 THEN 'Recebeu o mesmo que na semana anterior'
WHEN C01012 < C011A12 THEN 'Recebeu mais que na semana anterior'
ELSE 'Indefinido' END AS renda_relativa_semana_anterior, COUNT(*) AS contagem 
FROM `basedosdados.br_ibge_pnad_covid.microdados` x1
WHERE mes > 8 AND C01012 IS NOT NULL AND C011A12 IS NOT NULL
GROUP BY renda_relativa_semana_anterior 

