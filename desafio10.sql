SELECT cancoes.cancao AS nome,
COUNT(historico.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS cancoes
JOIN SpotifyClone.historico_de_reproducoes AS historico
ON cancoes.cancao_id = historico.cancao_id
JOIN SpotifyClone.usuario AS usuario
ON usuario.usuario_id = historico.usuario_id
WHERE usuario.plano_id IN (1, 4)
GROUP BY cancoes.cancao_id
ORDER BY nome;
