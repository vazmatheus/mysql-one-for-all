SELECT usuario.usuario AS usuario,
IF(YEAR(MAX(historico.data_reproducao)) = '2021', 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico_de_reproducoes AS historico
ON historico.usuario_id = usuario.usuario_id
GROUP BY usuario
ORDER BY usuario;
