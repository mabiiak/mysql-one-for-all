SELECT 
	mus.musicas_nome AS cancao,
	COUNT(hist.id_musicas) AS reproducoes
FROM SpotifyClone.musicas AS mus
INNER JOIN SpotifyClone.musicas_reproduzidas AS hist
ON hist.id_musicas = mus.id_musicas
 GROUP BY mus.id_musicas 
 HAVING COUNT(hist.id_musicas) = 2
 ORDER BY mus.musicas_nome LIMIT 2
