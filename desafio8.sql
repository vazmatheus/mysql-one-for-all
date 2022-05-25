
SELECT artista.artista AS artista,
album.album AS album
FROM SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album
ON artista.artista_id = album.artista_id
WHERE artista.artista = 'Walter Phoenix'
GROUP BY album
ORDER BY album ASC;
