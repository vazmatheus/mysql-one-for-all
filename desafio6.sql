SELECT
MIN(plano.valor_plano) AS faturamento_minimo,
MAX(plano.valor_plano) AS faturamento_maximo,
ROUND(AVG(plano.valor_plano), 2) AS faturamento_medio,
ROUND(SUM(plano.valor_plano), 2) AS faturamento_total
FROM
SpotifyClone.plano AS plano
INNER JOIN SpotifyClone.usuario AS usuario ON plano.plano_id = usuario.plano_id;
