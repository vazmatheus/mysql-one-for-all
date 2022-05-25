SELECT usuario.usuario AS usuario,
COUNT(historico.usuario_id) AS qtde_musicas_ouvidas,
ROUND(SUM(cancoes.duracao_segundos/60), 2) AS total_minutos
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON usuario.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.cancoes AS cancoes
ON cancoes.cancao_id = historico.cancao_id
GROUP BY usuario.usuario
ORDER BY usuario.usuario;
