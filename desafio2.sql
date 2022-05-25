SELECT
    COUNT(DISTINCT cancoes.cancao) AS cancoes,
    COUNT(DISTINCT artista.artista) AS artistas,
    COUNT(DISTINCT album.album) AS albuns
FROM
    SpotifyClone.cancoes,
    SpotifyClone.artista,
    SpotifyClone.album;
