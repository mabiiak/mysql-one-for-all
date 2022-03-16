SELECT 
	art.nome_artista AS artista,
    alb.nome_albuns AS album,
    COUNT(follow.id_artista) AS seguidores
    
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.id_artista = alb.id_artista

INNER JOIN SpotifyClone.relacao_seguidores AS follow
ON follow.id_artista = art.id_artista
GROUP BY art.nome_artista, alb.nome_albuns, follow.id_artista
ORDER BY seguidores DESC, artista, album ASC


