SELECT
    usu.nome_usuario AS usuario,
	COUNT(hist.id_usuario) AS qtde_musicas_ouvidas,
	ROUND(sum(mus.duracao)/ 60, 2) AS total_minutos
   
   FROM SpotifyClone.musicas_reproduzidas AS hist
   INNER JOIN SpotifyClone.usuario AS usu
	ON hist.id_usuario = usu.id_usuario
   INNER JOIN SpotifyClone.musicas AS mus
        ON hist.id_musicas = mus.id_musicas

	GROUP BY hist.id_usuario
	ORDER BY usu.nome_usuario;

