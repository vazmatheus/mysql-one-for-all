SELECT COUNT(historico.usuario_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON usuario.usuario_id = historico.usuario_id
WHERE usuario.usuario = 'Bill';
