SELECT 
	art.nome_artista AS artista,
    alb.nome_albuns AS album
    
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.id_artista = alb.id_artista
GROUP BY art.nome_artista, alb.nome_albuns
HAVING artista = 'walter phoenix'

