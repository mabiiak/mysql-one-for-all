SELECT
 	 MIN(plan.valor) AS faturamento_minimo,
	 MAX(plan.valor) AS faturamento_maximo,
     	 ROUND(AVG(plan.valor),2) AS faturamento_medio,
	 ROUND(SUM(plan.valor), 2) AS faturamento_total
    
FROM SpotifyClone.planos AS plan
INNER JOIN SpotifyClone.usuario AS us
ON plan.id_plano = us.id_plano

