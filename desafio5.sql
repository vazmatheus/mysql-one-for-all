SELECT cancoes.cancao AS cancao,
COUNT(historico.cancao_id) AS reproducoes
FROM SpotifyClone.cancoes AS cancoes
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON cancoes.cancao_id = historico.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;
