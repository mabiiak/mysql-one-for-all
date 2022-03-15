SELECT
    usu.nome_usuario AS usuario,
	IF(MAX(YEAR(hist.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo' ) AS condicao_usuario

FROM SpotifyClone.usuario AS usu

INNER JOIN SpotifyClone.musicas_reproduzidas AS hist
ON usu.id_usuario = hist.id_usuario
GROUP BY usu.id_usuario ORDER BY usu.nome_usuario ASC
