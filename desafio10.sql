SELECT 
    mus.musicas_nome AS nome,
    COUNT(hist.id_musicas) AS reproducoes
    
FROM SpotifyClone.planos AS pl
INNER JOIN SpotifyClone.usuario AS us
ON us.id_plano = pl.id_plano
-- vincula usuario com plano

INNER JOIN SpotifyClone.musicas_reproduzidas AS hist
ON hist.id_usuario = us.id_usuario
-- vincula historico com usuario

INNER JOIN SpotifyClone.musicas AS mus
ON mus.id_musicas = hist.id_musicas 
AND pl.nome_plano IN('gratuito', 'pessoal')

GROUP BY mus.musicas_nome
ORDER BY mus.musicas_nome

