SELECT 
	hist.id_usuario AS quantidade_musicas_no_historico

FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.musicas_reproduzidas AS hist
ON hist.id_usuario = us.id_usuario

WHERE us.nome_usuario = 'Bill'
GROUP BY us.id_usuario
