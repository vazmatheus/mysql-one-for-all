SELECT artista.artista AS artista,
album.album AS album,
COUNT(seguindo.artista_id) AS seguidores
FROM ( SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album
ON artista.artista_id = album.artista_id)
INNER JOIN SpotifyClone.seguindo_artistas AS seguindo
ON seguindo.artista_id = artista.artista_id
GROUP BY artista.artista_id, album.album
ORDER BY seguidores DESC, artista.artista ASC, album.album ASC;
